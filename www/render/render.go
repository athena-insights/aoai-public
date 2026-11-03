// Package render turns the view model into HTML files through templates, and each
// chart's rows into its TSV download (tsv.go). It sees only the view model: no data,
// no crosswalk, no declarations.
package render

import (
	"bytes"
	"fmt"
	"html/template"
	"os"
	"path/filepath"

	"github.com/athena-insights/aoai-public/www/view"
)

// ChartTemplate is the chart renderer's template: the file that defines "chart".
const ChartTemplate = "chart-echarts.html"

// The functions templates may call: the formatting functions in format.go, and
// chartData, which writes a chart's data for the chart renderer (chart.go).
var funcs = template.FuncMap{
	"number":    number,
	"count":     count,
	"moe":       moe,
	"moeNote":   moeNote,
	"surveyMOE": surveyMOE,
	"waves":     waves,
	"fielded":   fielded,
	"longSpan":  longSpan,
	"longDate":  longDate,
	"longDates": longDates,
	"shortSpan": shortSpan,
	"apDates":   apDates,
	"tenth":     tenth,
	"series":    seriesOf,
	"percent":   percent,
	"share":     share,
	"chartData": chartData,
}

// Site writes one HTML file per page into out. In dir, base.html frames every page,
// with the styles every page shares (styles-base.html) and the frame's own
// (styles-site.html or styles-crosstabs.html), and parts.html and ChartTemplate
// define the parts a document places. A page's
// document, in pages, defines its "content".
func Site(s *view.Site, dir, pages, out string) error {
	base, err := template.New("").Funcs(funcs).ParseFiles(filepath.Join(dir, "base.html"),
		filepath.Join(dir, "styles-base.html"), filepath.Join(dir, "styles-site.html"), filepath.Join(dir, "styles-crosstabs.html"),
		filepath.Join(dir, "parts.html"), filepath.Join(dir, ChartTemplate))
	if err != nil {
		return err
	}
	for _, p := range s.Pages {
		t, err := base.Clone()
		if err != nil {
			return fmt.Errorf("page %s: %v", p.Path, err)
		}
		d := newDocument(p, s.Measures)

		t.Funcs(template.FuncMap{"body": func() (template.HTML, error) {
			return body(t, filepath.Join(pages, p.Document+".dj"), d)
		}})
		if _, err = t.ParseFiles(filepath.Join(pages, p.Document+".html")); err != nil {
			return fmt.Errorf("page %s: %v", p.Path, err)
		}
		var b bytes.Buffer
		if err := t.ExecuteTemplate(&b, "base.html", d); err != nil {
			return fmt.Errorf("page %s: %v", p.Path, err)
		}
		if err := d.placedOnce(); err != nil {
			return fmt.Errorf("page %s: %v", p.Path, err)
		}
		path := filepath.Join(out, filepath.FromSlash(p.Path), "index.html")
		if err := os.MkdirAll(filepath.Dir(path), 0o755); err != nil {
			return err
		}
		if err := os.WriteFile(path, b.Bytes(), 0o644); err != nil {
			return err
		}

		for _, c := range p.Charts {
			tsv, err := chartTSV(c)
			if err != nil {
				return fmt.Errorf("page %s: %v", p.Path, err)
			}
			if err := os.WriteFile(filepath.Join(filepath.Dir(path), c.ID+".tsv"), tsv, 0o644); err != nil {
				return err
			}
		}
	}
	return nil
}

// document is what a page's document executes with: the page, and the lookups it
// places charts and takes its numbers by. It counts each chart's
// placings, so that every chart the page declares is shown, once.
type document struct {
	view.Page
	charts   map[string]view.Chart
	placed   map[string]int
	measures map[string]view.Measure
}

func newDocument(p view.Page, measures map[string]view.Measure) *document {
	d := &document{Page: p, charts: map[string]view.Chart{}, placed: map[string]int{}, measures: measures}
	for _, c := range p.Charts {
		d.charts[c.ID] = c
	}
	return d
}

// placed is a chart as its document places it: the chart, and the page's way back
// to the site's root, which the foot's link to the Data page takes.
type placed struct {
	view.Chart
	Root string
}

// Chart is the page's chart called id, for the document to place.
func (d *document) Chart(id string) (placed, error) {
	c, ok := d.charts[id]
	if !ok {
		return placed{}, fmt.Errorf("the page declares no chart %q", id)
	}
	d.placed[id]++
	return placed{c, d.Root}, nil
}

// Share is a measure's share of all adults in a sample, formatted as the charts
// format it: "69%". The sample is named, a wave, .Share "concerned" "003", or a
// pool, .Share "concerned" "006+007"; there is no unnamed form, so a figure on a page
// always says which sample it reads, and a release is a reading of every figure.
func (d *document) Share(measure, sample string) (string, error) {
	return d.GroupShare("total", measure, sample)
}

// GroupShare is a measure's share of a group, named by its key in the crosswalk, in
// a sample: .GroupShare "party=Democrat" "concerned" "003".
func (d *document) GroupShare(group, measure, sample string) (string, error) {
	v, err := d.share(group, measure, sample)
	if err != nil {
		return "", err
	}
	return percent(v, false), nil
}

// Change is how far a measure's share of all adults moved between two samples, in
// points: .Change "concerned" "002" "003" is "+6 points". It takes its samples as
// .Share does, so a sentence's change and its shares name the same ones. Which two
// to compare is the writer's call: waves, as a rule, since a pool is a level over a
// window, and two pools only where their windows don't overlap.
func (d *document) Change(measure, from, to string) (string, error) {
	return d.GroupChange("total", measure, from, to)
}

// GroupChange is Change for a group: .GroupChange "party=Democrat" "concerned" "001"
// "007" is "+11 points".
func (d *document) GroupChange(group, measure, from, to string) (string, error) {
	a, err := d.share(group, measure, from)
	if err != nil {
		return "", err
	}
	b, err := d.share(group, measure, to)
	if err != nil {
		return "", err
	}
	return points(a, b), nil
}

// Gap is how far one group's share of a measure is from another's in a sample, in
// points, as Change gives a change: .Gap "sex=Female" "sex=Male" "concerned"
// "006+007" is "+9 points", the first group's share less the second's. Like Change,
// it's taken between the shares as they read once rounded; the sentence around it
// says which group is which.
func (d *document) Gap(a, b, measure, sample string) (string, error) {
	x, err := d.share(a, measure, sample)
	if err != nil {
		return "", err
	}
	y, err := d.share(b, measure, sample)
	if err != nil {
		return "", err
	}
	return points(y, x), nil
}

// share is a measure's share of a group in a sample.
func (d *document) share(group, measure, sample string) (float64, error) {
	m, ok := d.measures[measure]
	if !ok {
		return 0, fmt.Errorf("the crosswalk has no measure %q", measure)
	}
	if m.Net {
		return 0, fmt.Errorf("%s is a net, not a share", measure)
	}
	bySample, ok := m.Groups[group]
	if !ok {
		return 0, fmt.Errorf("the crosswalk has no group %q", group)
	}
	w, err := d.sample(sample)
	if err != nil {
		return 0, err
	}
	v, ok := bySample[w.ID]
	if !ok {
		return 0, fmt.Errorf("%s has no number for %s in %s", measure, group, w.ID)
	}
	return v, nil
}

// Month is the month a sample falls in: .Month "003" is "July", and a pool's is its
// window's, .Month "007+008" "September and October".
func (d *document) Month(sample string) (string, error) {
	w, err := d.sample(sample)
	if err != nil {
		return "", err
	}
	return month(w)
}

// When is the half of the month a sample falls in: .When "006" is "early
// September", and a pool's is its window's, .When "006+007" "September" and .When
// "007+008" "late September and early October".
func (d *document) When(sample string) (string, error) {
	w, err := d.sample(sample)
	if err != nil {
		return "", err
	}
	return when(w)
}

// sample is the wave or pool named, among those the site shows.
func (d *document) sample(name string) (view.Sample, error) {
	for _, w := range d.Waves {
		if w.ID == name {
			return w, nil
		}
	}
	for _, p := range d.Pools {
		if p.ID == name {
			return p, nil
		}
	}
	return view.Sample{}, fmt.Errorf("sample %q isn't one of the site's waves or pools", name)
}

// placedOnce reports a chart the page declares that its document doesn't place,
// or places more than once.
func (d *document) placedOnce() error {
	for _, c := range d.Charts {
		if n := d.placed[c.ID]; n != 1 {
			return fmt.Errorf("its document places chart %q %d times; every chart is placed once", c.ID, n)
		}
	}
	return nil
}
