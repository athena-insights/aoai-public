package resolve

import (
	"cmp"
	"errors"
	"fmt"
	"math"
	"slices"
	"strconv"
	"strings"

	"github.com/athena-insights/aoai-public/www/site"
	"github.com/athena-insights/aoai-public/www/view"
)

// naFloor is the share, in percent, a "No answer" response must round above for some
// item of a question, among all adults, for the question's tables to show the row:
// the reports' rule (tracker-reports/cmd/report).
const naFloor = 2

// crosstabs makes the pages: the latest wave's at its path, then one for every wave at
// the wave's own path, newest first in their navigation.
func (r *resolver) crosstabs(xt site.Crosstabs) ([]view.Page, error) {
	switch {
	case !strings.HasPrefix(xt.Path, "/") || !strings.HasSuffix(xt.Path, "/"):
		return nil, fmt.Errorf("path %q must start and end with /", xt.Path)
	case xt.Title == "":
		return nil, errors.New("no title")
	case xt.Document == "":
		return nil, errors.New("no document")
	case xt.MinBase <= 0:
		return nil, errors.New("the threshold for a column, MinBase, must be above zero")
	}
	var pages []view.Page
	latest := r.waves[len(r.waves)-1]
	p, err := r.crosstabPage(xt, latest, xt.Path)
	if err != nil {
		return nil, err
	}
	pages = append(pages, p)
	for _, w := range slices.Backward(r.waves) {
		p, err := r.crosstabPage(xt, w, xt.Path+w.id+"/")
		if err != nil {
			return nil, err
		}
		pages = append(pages, p)
	}
	return pages, nil
}

// crosstabPage is wave w's page at path: the site's frame, with the crosstabs' name
// as its section and the waves as its navigation, around the wave's tables.
func (r *resolver) crosstabPage(xt site.Crosstabs, w *sample, path string) (view.Page, error) {
	vp := r.frame(path, xt.Title, xt.Document)
	vp.Section = &view.NavItem{Title: xt.Title, Path: xt.Path, Href: vp.Root + strings.TrimPrefix(xt.Path, "/")}
	for _, o := range slices.Backward(r.waves) {
		p := xt.Path + o.id + "/"
		sv := o.view()
		vp.Nav = append(vp.Nav, view.NavItem{Title: o.id, Path: p, Href: vp.Root + strings.TrimPrefix(p, "/"),
			Current: o == w, Sample: &sv})
	}
	c, err := r.crosstab(xt, w)
	if err != nil {
		return vp, fmt.Errorf("wave %s: %v", w.id, err)
	}
	vp.Crosstab = c
	return vp, nil
}

// crosstab is wave w's tables.
func (r *resolver) crosstab(xt site.Crosstabs, w *sample) (*view.Crosstab, error) {
	c := &view.Crosstab{Wave: w.view(), MinBase: xt.MinBase}

	lastDim := ""
	for _, bc := range w.banner {
		base, ok := w.bases[bc.grp]
		if !ok {
			return nil, fmt.Errorf("%s: %s has no rows for %s", bc.where, w.stats.path, bc.grp)
		}
		if base < xt.MinBase && !bc.pinned {
			continue
		}
		starts := bc.dim != lastDim
		if starts {
			label := bc.dimLabel
			if bc.dim == "total" {
				label = ""
			}
			c.Dims = append(c.Dims, view.Dim{Label: label})
			lastDim = bc.dim
		}
		c.Dims[len(c.Dims)-1].Span++
		c.Columns = append(c.Columns, view.Column{Group: bc.grp, Label: bc.label, Base: base,
			Small: base < xt.MinBase, Starts: starts && len(c.Columns) > 0})
	}
	if len(c.Columns) == 0 {
		return nil, fmt.Errorf("no column of the banner has %d respondents or is pinned", xt.MinBase)
	}

	for _, q := range w.questions {
		cq, err := r.crossQuestion(w, q, c.Columns)
		if err != nil {
			return nil, err
		}
		c.Questions = append(c.Questions, cq)
	}
	return c, nil
}

// crossQuestion is question q's table: a row group for each of its items, in the
// order they were asked.
func (r *resolver) crossQuestion(w *sample, q string, cols []view.Column) (view.CrossQuestion, error) {
	cq := view.CrossQuestion{ID: strings.TrimPrefix(q, "q_"), Stem: w.stems[q]}
	if cq.Stem == "" {
		return cq, fmt.Errorf("%s: %s has no wording, which captions its table", w.stemsPath, q)
	}
	type qItem struct {
		item string
		dictItem
	}
	var items []qItem
	for id, it := range w.items {
		if it.q == q {
			items = append(items, qItem{id, it})
		}
	}
	if len(items) == 0 {
		return cq, fmt.Errorf("%s has no items for %s", w.itemsPath, q)
	}
	slices.SortFunc(items, func(a, b qItem) int { return cmp.Or(cmp.Compare(a.ord, b.ord), cmp.Compare(a.item, b.item)) })
	opts := w.options[q]
	if len(opts) == 0 {
		return cq, fmt.Errorf("%s has no responses for %s", w.optionsPath, q)
	}
	nd, ok := w.netdefs[q]
	if !ok {
		return cq, fmt.Errorf("%s has no net for %s", w.netdefsPath, q)
	}

	// The rows: the responses respondents were shown, in rank order, and "No answer",
	// which they weren't, where it rounds above the floor for some item among all adults.
	var responses []option
	showNA := false
	for _, it := range items {
		for _, o := range opts {
			if o.bucket != "no_answer" {
				continue
			}
			p, err := cell(w, "total", it.item, o.response, "stats")
			if err != nil {
				return cq, err
			}
			if math.Round(p.Estimate) > naFloor {
				showNA = true
			}
		}
	}
	for _, o := range opts {
		if o.presented || (o.bucket == "no_answer" && showNA) {
			responses = append(responses, o)
		}
	}
	// Then the totals: each bucket that combines two or more responses shown, in
	// the order the buckets first appear, then the net. A bucket of one response is
	// that response's row already, so its total would say the same thing twice.
	var buckets []string
	count := map[string]int{}
	for _, o := range opts {
		if !o.presented {
			continue
		}
		if count[o.bucket] == 0 {
			buckets = append(buckets, o.bucket)
		}
		count[o.bucket]++
	}
	buckets = slices.DeleteFunc(buckets, func(b string) bool { return count[b] < 2 })
	var totals []struct{ key, label string }
	for _, k := range append(buckets, nd.name) {
		label, err := w.metricLabels.lookup(q, k)
		if err != nil {
			return cq, err
		}
		totals = append(totals, struct{ key, label string }{k, label})
	}

	for _, it := range items {

		ci := view.CrossItem{Item: it.item}
		if len(items) > 1 {
			ci.Label = it.label
		}
		for _, o := range responses {
			row := view.CrossRow{Label: o.response}
			for _, col := range cols {
				p, err := cell(w, col.Group, it.item, o.response, "stats")
				if err != nil {
					return cq, err
				}
				row.Cells = append(row.Cells, p)
			}
			ci.Responses = append(ci.Responses, row)
		}
		for _, t := range totals {
			row := view.CrossRow{Label: t.label, Net: t.key == nd.name}
			for _, col := range cols {
				p, err := cell(w, col.Group, it.item, t.key, "nets")
				if err != nil {
					return cq, err
				}
				row.Cells = append(row.Cells, p)
			}
			ci.Totals = append(ci.Totals, row)
		}
		cq.Items = append(cq.Items, ci)
	}
	return cq, nil
}

// cell is one group's estimate for a response (rollup stats) or a bucket's total or
// a net (rollup nets) in one sample. The rollups leave out answers nobody chose, so
// a key with no row is 0 on the group's base when the group has rows for the item;
// the keys here come from the dictionary, so there is nothing else a missing row can
// mean. A group with no rows for the item at all stops the build.
func cell(w *sample, grp, item, key, rollup string) (view.Point, error) {
	t, at, asked, estCol, baseCol := w.nets, w.netsAt, w.netsAsked, "value_w", "base_n"
	if rollup == "stats" {
		t, at, asked, estCol, baseCol = w.stats, w.statsAt, w.statsAsked, "pct_w", "grp_n"
	}
	i, ok := at[[3]string{grp, item, key}]
	if !ok {
		j, ok := asked[[2]string{grp, item}]
		if !ok {
			return view.Point{}, fmt.Errorf("%s has no rows for %s, %s", t.path, grp, item)
		}
		base, err := strconv.Atoi(t.get(j, baseCol))
		if err != nil {
			return view.Point{}, fmt.Errorf("%s: %v", t.where(j), err)
		}
		return view.Point{Sample: w.id, Base: base}, nil
	}
	est, err1 := strconv.ParseFloat(t.get(i, estCol), 64)
	se, err2 := strconv.ParseFloat(t.get(i, "se_w"), 64)
	base, err3 := strconv.Atoi(t.get(i, baseCol))
	if err := errors.Join(err1, err2, err3); err != nil {
		return view.Point{}, fmt.Errorf("%s: %v", t.where(i), err)
	}
	return view.Point{Sample: w.id, Estimate: est, MOE: math.Round(1.96*se*100) / 100, Base: base}, nil
}
