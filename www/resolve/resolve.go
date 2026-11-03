package resolve

import (
	"cmp"
	"errors"
	"fmt"
	"maps"
	"math"
	"slices"
	"strconv"
	"strings"
	"time"

	"github.com/athena-insights/aoai-public/www/site"
	"github.com/athena-insights/aoai-public/www/view"
)

type Inputs struct {
	Data      string // the data directory
	Crosswalk string // the crosswalk directory
}

type resolver struct {
	cw         *crosswalk
	waves      []*sample // in -waves order
	pools      []*sample // in -pools order
	nextUpdate string    // -next-update, a date or empty
	origin     string    // -origin, the site's address or empty
	events     []site.Event
}

func (r *resolver) samples() []*sample { return slices.Concat(r.waves, r.pools) }

func (r *resolver) latestPool() *sample { return r.pools[len(r.pools)-1] }

func Site(in Inputs, pages []site.Page, crosstabs site.Crosstabs, events []site.Event, waves, pools []string, nextUpdate, origin string) (*view.Site, error) {
	cw, err := loadCrosswalk(in.Crosswalk)
	if err != nil {
		return nil, err
	}
	r := &resolver{cw: cw, nextUpdate: nextUpdate, origin: origin, events: events}
	for i, e := range events {
		if _, err := time.Parse(time.DateOnly, e.Date); err != nil {
			return nil, fmt.Errorf("event %d: %v", i+1, err)
		}
		if e.Name == "" {
			return nil, fmt.Errorf("event %d, %s, has no name", i+1, e.Date)
		}
		if i > 0 && e.Date < events[i-1].Date {
			return nil, fmt.Errorf("event %d, %s, is out of order: events run oldest first", i+1, e.Date)
		}
	}
	if len(waves) == 0 {
		return nil, errors.New("-waves: no waves given; the mkfile's WAVES names them")
	}
	if len(pools) == 0 {
		return nil, errors.New("-pools: no pools given; the mkfile's POOLS names them, and the bar charts draw the last")
	}
	if nextUpdate != "" {
		if _, err := time.Parse(time.DateOnly, nextUpdate); err != nil {
			return nil, fmt.Errorf("-next-update: %v", err)
		}
	}
	listed := map[string]bool{}
	for _, id := range waves {
		if listed[id] {
			return nil, fmt.Errorf("-waves: wave %s is listed twice", id)
		}
		listed[id] = true
		w, err := loadWave(in.Data, id)
		if err != nil {
			return nil, fmt.Errorf("-waves: wave %s: %v", id, err)
		}
		r.waves = append(r.waves, w)
	}
	for _, id := range pools {
		if listed[id] {
			return nil, fmt.Errorf("-pools: pool %s is listed twice", id)
		}
		listed[id] = true
		p, err := loadPool(in.Data, id)
		if err != nil {
			return nil, fmt.Errorf("-pools: pool %s: %v", id, err)
		}
		r.pools = append(r.pools, p)
	}

	s := &view.Site{Measures: map[string]view.Measure{}}
	for _, name := range slices.Sorted(maps.Keys(cw.measures)) {
		if s.Measures[name], err = r.measure(cw.measures[name]); err != nil {
			return nil, fmt.Errorf("%s: %v", cw.measures[name].where, err)
		}
	}
	for _, pg := range pages {
		vp, err := r.page(pg, pages)
		if err != nil {
			return nil, fmt.Errorf("site: page %s: %v", pg.Path, err)
		}
		s.Pages = append(s.Pages, vp)
	}
	xt, err := r.crosstabs(crosstabs)
	if err != nil {
		return nil, fmt.Errorf("site: crosstabs: %v", err)
	}
	s.Pages = append(s.Pages, xt...)
	return s, nil
}

func root(path string) string {
	if n := strings.Count(path, "/") - 1; n > 0 {
		return strings.Repeat("../", n)
	}
	return "./"
}

func (r *resolver) page(pg site.Page, pages []site.Page) (view.Page, error) {
	vp := r.frame(pg.Path, pg.Title, pg.Document)
	for _, other := range pages {
		if other.NavTitle != "" {
			vp.Nav = append(vp.Nav, view.NavItem{Title: other.NavTitle, Path: other.Path,
				Href: vp.Root + strings.TrimPrefix(other.Path, "/"), Current: other.Path == pg.Path})
		}
	}
	named := map[string]bool{}
	for i, sc := range pg.Charts {
		switch {
		case sc.ID == "":
			return vp, fmt.Errorf("chart %d has no ID, which its document places it by", i+1)
		case named[sc.ID]:
			return vp, fmt.Errorf("two charts are called %q", sc.ID)
		case sc.Title == "":
			return vp, fmt.Errorf("chart %s has no title: a title is the editor's, never derived", sc.ID)
		}
		named[sc.ID] = true
		var c view.Chart
		var err error
		if sc.Form == site.Bars || sc.Form == site.Ring {
			c, err = r.bars(sc)
		} else {
			c, err = r.lines(sc)
		}
		if err != nil {
			return vp, fmt.Errorf("chart %s: %v", sc.ID, err)
		}
		vp.Charts = append(vp.Charts, c)
	}
	return vp, nil
}

func (r *resolver) frame(path, title, document string) view.Page {
	vp := view.Page{Path: path, Root: root(path), Origin: r.origin, Title: title, Document: document,
		Latest: r.waves[len(r.waves)-1].view(), NextUpdate: r.nextUpdate, Basis: r.basis()}
	for _, w := range slices.Backward(r.waves) {
		vp.Waves = append(vp.Waves, w.view())
	}
	for _, p := range slices.Backward(r.pools) {
		vp.Pools = append(vp.Pools, p.view())
	}
	return vp
}

func (r *resolver) basis() view.Basis {
	b := view.Basis{Surveys: len(r.waves)}
	var common map[string]bool
	for _, w := range r.waves {
		b.Interviews += w.n
		b.Responses += w.n * len(w.items)
		groups := map[string]bool{}
		for g := range w.bases {
			if g != "total" && (common == nil || common[g]) {
				groups[g] = true
			}
		}
		common = groups
	}
	b.Groups = len(common)
	return b
}

func (r *resolver) measure(m measure) (view.Measure, error) {
	vm := view.Measure{Groups: map[string]map[string]float64{}}
	if m.rollup != "stats" && m.rollup != "nets" {
		return vm, fmt.Errorf("rollup %q must be stats or nets", m.rollup)
	}
	for _, g := range slices.Sorted(maps.Keys(r.cw.groups.text)) {
		bySample := map[string]float64{}
		for _, w := range r.samples() {
			p, net, err := point(w, g, m)
			if err != nil {
				return vm, err
			}
			bySample[w.id], vm.Net = p.Estimate, net
		}
		vm.Groups[g] = bySample
	}
	return vm, nil
}

func (r *resolver) lines(sc site.Chart) (view.Chart, error) {
	var ms []measure
	for _, name := range sc.Measures {
		m, ok := r.cw.measures[name]
		if !ok {
			return view.Chart{}, fmt.Errorf("measure %q is not in %s", name, r.cw.measuresPath)
		}
		ms = append(ms, m)
	}
	return r.chart(sc, ms)
}

type words struct {
	item, key string // labels, from the crosswalk
	wording   string // the item as asked, if its question has several items
}

func (r *resolver) chart(sc site.Chart, ms []measure) (view.Chart, error) {
	b := sc.Banner
	c := view.Chart{ID: sc.ID, Form: "lines", Axis: "absolute", Title: sc.Title, Subtitle: sc.Subtitle}
	if sc.Axis == site.Fitted {
		c.Axis = "fitted"
	}
	if len(ms) == 0 || len(b.Groups) == 0 {
		return c, errors.New("a chart needs at least one measure and one group")
	}
	for _, w := range r.waves {
		c.Samples = append(c.Samples, w.view())
	}
	c.Events = r.chartEvents()
	for _, m := range ms {
		if m.rollup != "stats" && m.rollup != "nets" {
			return c, fmt.Errorf("%s: rollup %q must be stats or nets", m.where, m.rollup)
		}
		for _, g := range b.Groups {
			var s view.Series
			for _, w := range r.waves {
				p, net, err := point(w, g, m)
				if err != nil {
					return c, err
				}
				s.Points, s.Net = append(s.Points, p), net
				c.MOE = widen(c.MOE, g, p)
			}
			c.Series = append(c.Series, s)
		}
	}

	ws := make([]words, len(ms))
	for i, m := range ms {
		q, wording, err := r.wording(m.item)
		if err != nil {
			return c, err
		}
		ws[i].wording = wording
		if ws[i].item, err = r.cw.items.lookup(m.item); err != nil {
			return c, err
		}
		if ws[i].key, err = keyLabels(r.cw, m).lookup(q, m.key); err != nil {
			return c, err
		}
	}
	groups := make([]string, len(b.Groups))
	for i, g := range b.Groups {
		label, err := r.cw.groups.lookup(g)
		if err != nil {
			return c, fmt.Errorf("banner %q: %v", b.ID, err)
		}
		groups[i] = label
	}

	sameItem, sameKey := true, true
	for _, m := range ms[1:] {
		sameItem = sameItem && m.item == ms[0].item
		sameKey = sameKey && m.rollup == ms[0].rollup && m.key == ms[0].key
	}

	i := 0
	for mi := range ms {
		for gi := range b.Groups {
			var label []string
			if len(ms) > 1 {
				switch {
				case sameItem:
					label = append(label, ws[mi].key)
				case sameKey:
					label = append(label, ws[mi].item)
				default:
					label = append(label, ws[mi].item, ws[mi].key)
				}
			}
			if len(b.Groups) > 1 || len(ms) == 1 {
				label = append(label, groups[gi])
			}
			c.Series[i].Label = strings.Join(label, ", ")
			if len(ms) == 1 && len(b.Groups) > 1 {
				c.Series[i].Group = b.Groups[gi]
			}
			kind := "share"
			if ms[mi].rollup == "nets" {
				kind = "total"
				if c.Series[i].Net {
					kind = "net"
				}
			}
			for wi, p := range c.Series[i].Points {
				row := chartRow(r.waves[wi], b.Groups[gi], ms[mi].item, ms[mi].key, kind, p)
				row.GroupLabel, row.Label = groups[gi], ws[mi].key
				c.Rows = append(c.Rows, row)
			}
			i++
		}
	}
	for _, w := range ws {
		c.Wordings = appendWording(c.Wordings, w.wording)
	}
	if sc.Colors == site.Net {
		if err := r.netColors(&c, ms, b); err != nil {
			return c, err
		}
	}
	if sc.Reference != "" {
		gi := slices.Index(b.Groups, sc.Reference)
		if gi < 0 || len(b.Groups) < 2 {
			return c, fmt.Errorf("banner %q: the reference, %q, must be one of two or more groups", b.ID, sc.Reference)
		}
		for i := gi; i < len(c.Series); i += len(b.Groups) {
			c.Series[i].Ref = true
		}
	}
	return c, nil
}

func (r *resolver) chartEvents() []view.Event {
	var out []view.Event
	first, last := r.waves[0], r.waves[len(r.waves)-1]
	for _, e := range r.events {
		if e.Date >= first.fieldStart && e.Date <= last.fieldEnd {
			out = append(out, view.Event{Date: e.Date, Name: e.Name})
		}
	}
	return out
}

func appendWording(ws []string, w string) []string {
	if w == "" || slices.Contains(ws, w) {
		return ws
	}
	return append(ws, w)
}

func chartRow(w *sample, g, item, key, kind string, p view.Point) view.Row {
	return view.Row{Sample: w.id, FieldStart: w.fieldStart, FieldEnd: w.fieldEnd, Group: g, Item: item, Key: key, Kind: kind,
		Estimate: p.Estimate, MOE: p.MOE, Base: p.Base}
}

func widen(m view.MOE, g string, p view.Point) view.MOE {
	if p.MOE == 0 {
		return m
	}
	r := &m.Groups
	if g == "total" {
		r = &m.All
	}
	if r.Hi == 0 {
		r.Lo = p.MOE
	} else {
		r.Lo = min(r.Lo, p.MOE)
	}
	r.Hi = max(r.Hi, p.MOE)
	return m
}

func (r *resolver) bars(sc site.Chart) (view.Chart, error) {
	c := view.Chart{ID: sc.ID, Form: "bars", Title: sc.Title, Subtitle: sc.Subtitle}

	form := "a bar chart"
	if sc.Form == site.Ring {
		form = "a ring"
	}

	type row struct {
		item, group, banner, heading string
		itemHead                     bool
	}
	var rows []row
	switch {
	case len(sc.Items) == 0:
		return c, fmt.Errorf("%s needs at least one item", form)
	case len(sc.Dimensions) == 0:
		if len(sc.Banner.Groups) != 1 {
			return c, fmt.Errorf("banner %q: %s shows its items for exactly one group", sc.Banner.ID, form)
		}
		c.Per = "item"
		for _, item := range sc.Items {
			rows = append(rows, row{item: item, group: sc.Banner.Groups[0], banner: sc.Banner.ID})
		}
	case len(sc.Banner.Groups) != 0:
		return c, fmt.Errorf("%s across dimensions has no banner", form)
	case len(sc.Items) > 1 && len(sc.Dimensions) != 1:
		return c, fmt.Errorf("%s of several items runs across one dimension", form)
	default:
		c.Per = "group"
		for _, item := range sc.Items {
			for _, d := range sc.Dimensions {
				if len(d.Banner.Groups) == 0 {
					return c, fmt.Errorf("dimension %q: banner %q has no groups", d.Heading, d.Banner.ID)
				}
				for i, g := range d.Banner.Groups {
					rw := row{item: item, group: g, banner: d.Banner.ID}
					if i == 0 {

						rw.itemHead = len(sc.Items) > 1
						if !rw.itemHead {
							rw.heading = d.Heading
						}
					}
					rows = append(rows, rw)
				}
			}
		}
	}
	w := r.latestPool()
	c.Samples = []view.Sample{w.view()}
	q := question(sc.Items)
	for _, rw := range rows {
		iq, wording, err := r.wording(rw.item)
		if err != nil {
			return c, err
		}
		if iq != q {
			return c, fmt.Errorf("item %s isn't a %s item: a bar chart's items share a question", rw.item, q)
		}
		bar, err := r.netBar(w, rw.group, rw.item)
		if err != nil {
			return c, err
		}
		c.Wordings = appendWording(c.Wordings, wording)
		group, err := r.cw.groups.lookup(rw.group)
		if err != nil {
			return c, fmt.Errorf("banner %q: %v", rw.banner, err)
		}

		for _, rs := range []struct {
			rs   []view.Response
			kind string
		}{{bar.Responses, "share"}, {bar.Resid, "residual"}, {[]view.Response{bar.Neg, bar.Pos}, "total"}} {
			for _, p := range rs.rs {
				c.MOE = widen(c.MOE, rw.group, p.Point)
				d := chartRow(w, rw.group, rw.item, p.Key, rs.kind, p.Point)
				d.GroupLabel, d.Label = group, p.Label
				c.Rows = append(c.Rows, d)
			}
		}
		if c.Per == "item" {
			if bar.Label, err = r.cw.items.lookup(rw.item); err != nil {
				return c, err
			}
		} else {
			if len(sc.Items) == 1 {
				bar.Heading = rw.heading
			} else {
				if bar.Item, err = r.cw.items.lookup(rw.item); err != nil {
					return c, err
				}
				if rw.itemHead {
					bar.Heading = bar.Item
				}
			}
			bar.Label, bar.Group = group, rw.group
		}
		c.Bars = append(c.Bars, bar)
	}
	if sc.Form == site.Ring {
		return ring(c)
	}
	return c, nil
}

func ring(c view.Chart) (view.Chart, error) {
	if len(c.Bars) != 1 {
		return c, fmt.Errorf("a ring shows one item for one group, not %d", len(c.Bars))
	}
	sides := map[string]int{}
	for _, r := range c.Bars[0].Responses {
		sides[r.Side]++
	}
	if sides["neg"] != 1 || sides["pos"] != 1 {
		return c, fmt.Errorf("a ring's question has one response in each bucket of its net, not %d and %d: a scale takes a bar", sides["neg"], sides["pos"])
	}
	c.Form = "ring"
	return c, nil
}

func (r *resolver) netBar(w *sample, g, item string) (view.Bar, error) {
	var bar view.Bar
	q, _, _ := strings.Cut(item, ":")
	nd, scale, err := netScale(w, q)
	if err != nil {
		return bar, err
	}
	step := steps(nd, scale)
	var resid []option
	for _, o := range w.options[q] {
		if o.bucket != nd.neg && o.bucket != nd.pos && o.presented {
			resid = append(resid, o)
		}
	}
	side := map[string]string{nd.neg: "neg", nd.pos: "pos"}
	look := func(rollup, key, where string) (view.Point, error) {
		p, _, err := point(w, g, measure{name: q + "'s net", item: item, rollup: rollup, key: key, where: where})
		return p, err
	}
	for i, o := range scale {
		p, err := look("stats", o.response, o.where)
		if err != nil {
			return bar, err
		}
		bar.Responses = append(bar.Responses, view.Response{Key: o.response, Label: o.response, Side: side[o.bucket], Step: step[i], Point: p})
	}
	for _, o := range resid {
		p, err := look("stats", o.response, o.where)
		if err != nil {
			return bar, err
		}
		bar.Resid = append(bar.Resid, view.Response{Key: o.response, Label: o.response, Side: "resid", Point: p})
	}
	for _, t := range []struct {
		dst    *view.Response
		bucket string
	}{{&bar.Neg, nd.neg}, {&bar.Pos, nd.pos}} {
		p, err := look("nets", t.bucket, nd.where)
		if err != nil {
			return bar, err
		}
		*t.dst = view.Response{Key: t.bucket, Side: side[t.bucket], Point: p}
	}
	for _, rs := range [][]view.Response{bar.Responses, bar.Resid} {
		for i := range rs {
			if rs[i].Label, err = r.cw.responses.lookup(q, rs[i].Label); err != nil {
				return bar, err
			}
		}
	}
	if bar.Neg.Label, err = r.cw.metrics.lookup(q, nd.neg); err != nil {
		return bar, err
	}
	if bar.Pos.Label, err = r.cw.metrics.lookup(q, nd.pos); err != nil {
		return bar, err
	}
	return bar, nil
}

func netScale(w *sample, q string) (netdef, []option, error) {
	nd, ok := w.netdefs[q]
	if !ok {
		return nd, nil, fmt.Errorf("%s has no net for %s", w.netdefsPath, q)
	}
	var scale []option
	for _, o := range w.options[q] {
		if o.bucket == nd.neg || o.bucket == nd.pos {
			scale = append(scale, o)
		}
	}
	if len(scale) == 0 {
		return nd, nil, fmt.Errorf("%s has no responses in %s's buckets %s and %s", w.optionsPath, q, nd.neg, nd.pos)
	}
	slices.SortStableFunc(scale, func(a, b option) int { return cmp.Compare(a.value, b.value) })
	for i := 1; i < len(scale); i++ {
		if scale[i-1].bucket == nd.pos && scale[i].bucket == nd.neg {
			return nd, nil, fmt.Errorf("%s: %s's values don't run from its net's negative bucket, %s, to its positive one, %s",
				w.optionsPath, q, nd.neg, nd.pos)
		}
	}
	return nd, scale, nil
}

func steps(nd netdef, scale []option) []int {
	out := make([]int, len(scale))
	for i, o := range scale {
		if o.bucket == nd.neg {
			out[i] = i // the scale starts at the negative bucket's far end
		} else {
			out[i] = len(scale) - 1 - i // and ends at the positive bucket's
		}
	}
	return out
}

func (r *resolver) netColors(c *view.Chart, ms []measure, b site.Banner) error {
	if len(b.Groups) != 1 {
		return fmt.Errorf("banner %q: net colors need one group", b.ID)
	}
	w := r.latestPool()
	for i, m := range ms {
		q, _, _ := strings.Cut(m.item, ":")
		nd, scale, err := netScale(w, q)
		if err != nil {
			return err
		}
		side := map[string]string{nd.neg: "neg", nd.pos: "pos"}
		if m.rollup == "nets" {

			if side[m.key] == "" {
				return fmt.Errorf("measure %s: %q isn't one of %s's net's buckets", m.name, m.key, q)
			}
			c.Series[i].Side, c.Series[i].Total = side[m.key], true
			continue
		}
		j := slices.IndexFunc(scale, func(o option) bool { return o.response == m.key })
		if j >= 0 {
			c.Series[i].Side, c.Series[i].Step = side[scale[j].bucket], steps(nd, scale)[j]
			continue
		}

		if slices.ContainsFunc(w.options[q], func(o option) bool { return o.response == m.key && o.presented }) {
			c.Series[i].Side = "resid"
			continue
		}
		return fmt.Errorf("measure %s: %q isn't one of %s's responses in %s", m.name, m.key, q, w.optionsPath)
	}
	return nil
}

func question(items []string) string {
	if len(items) == 0 {
		return ""
	}
	q, _, _ := strings.Cut(items[0], ":")
	return q
}

func keyLabels(cw *crosswalk, m measure) labels {
	if m.rollup == "stats" {
		return cw.responses
	}
	return cw.metrics
}

func (r *resolver) stem(q string) (string, error) {
	var s string
	for i, w := range r.samples() {
		t, ok := w.stems[q]
		switch {
		case !ok:
			return "", fmt.Errorf("%s has no question %s", w.stemsPath, q)
		case i == 0:
			s = t
		case t != s:
			return "", fmt.Errorf("%s: the wording of %s differs from wave %s's", w.stemsPath, q, r.waves[0].id)
		}
	}
	return s, nil
}

func (r *resolver) wording(item string) (q, wording string, err error) {
	for i, w := range r.samples() {
		it, ok := w.items[item]
		if !ok {
			return "", "", fmt.Errorf("%s has no item %s", w.itemsPath, item)
		}
		var wd string
		if w.perQ[it.q] > 1 {
			wd = it.label
		}
		switch {
		case i == 0:
			q, wording = it.q, wd
		case wd != wording:
			return "", "", fmt.Errorf("%s: the wording of %s differs from wave %s's", w.itemsPath, item, r.waves[0].id)
		}
	}
	if _, err := r.stem(q); err != nil {
		return "", "", err
	}
	return q, wording, nil
}

func point(w *sample, grp string, m measure) (view.Point, bool, error) {
	t, at, estCol, baseCol := w.nets, w.netsAt, "value_w", "base_n"
	if m.rollup == "stats" {
		t, at, estCol, baseCol = w.stats, w.statsAt, "pct_w", "grp_n"
	}
	i, ok := at[[3]string{grp, m.item, m.key}]
	if !ok && m.rollup == "stats" {
		j, asked := w.statsAsked[[2]string{grp, m.item}]
		shown := slices.ContainsFunc(w.options[w.items[m.item].q], func(o option) bool {
			return o.response == m.key && o.presented
		})
		if asked && shown {
			base, err := strconv.Atoi(t.get(j, baseCol))
			if err != nil {
				return view.Point{}, false, fmt.Errorf("%s: %v", t.where(j), err)
			}
			return view.Point{Sample: w.id, Estimate: 0, MOE: 0, Base: base}, false, nil
		}
	}
	if !ok {
		return view.Point{}, false, fmt.Errorf("%s has no row for %s, %s, %s (measure %s at %s)",
			t.path, grp, m.item, m.key, m.name, m.where)
	}
	est, err1 := strconv.ParseFloat(t.get(i, estCol), 64)
	se, err2 := strconv.ParseFloat(t.get(i, "se_w"), 64)
	base, err3 := strconv.Atoi(t.get(i, baseCol))
	if err := errors.Join(err1, err2, err3); err != nil {
		return view.Point{}, false, fmt.Errorf("%s: %v", t.where(i), err)
	}
	net := m.rollup == "nets" && t.get(i, "kind") == "net"

	moe := math.Round(1.96*se*100) / 100
	return view.Point{Sample: w.id, Estimate: est, MOE: moe, Base: base}, net, nil
}
