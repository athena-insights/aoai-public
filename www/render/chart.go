package render

import (
	"fmt"
	"time"

	"github.com/athena-insights/aoai-public/www/view"
)

type chartJSON struct {
	Form   string       `json:"form"`           // "lines", "bars" or "ring"
	Axis   string       `json:"axis,omitempty"` // lines: "absolute" or "fitted"
	Per    string       `json:"per,omitempty"`  // bars: "item" or "group", what each bar is
	Series []seriesJSON `json:"series,omitempty"`
	Bars   []barJSON    `json:"bars,omitempty"`
	Events []eventJSON  `json:"events,omitempty"` // lines: the news events the chart marks
}

type seriesJSON struct {
	Label  string      `json:"label"`
	Side   string      `json:"side,omitempty"` // with net colors: "neg", "pos" or "resid"
	Step   int         `json:"step"`
	Total  bool        `json:"total,omitempty"` // with net colors: a bucket's total
	Ref    bool        `json:"ref,omitempty"`   // the chart's reference group, in dark ink
	Group  string      `json:"group,omitempty"` // when lines are groups: the group, which keeps its color
	Points []pointJSON `json:"points"`
}

type pointJSON struct {
	Date     string  `json:"date"`     // the middle of the survey's field dates, for a time axis
	Dates    string  `json:"dates"`    // the field dates, "Sep 10–14"
	Estimate float64 `json:"estimate"` // where the point goes
	MOE      float64 `json:"moe"`      // its margin of error, ± points, for the band around the line
	Text     string  `json:"text"`     // "62% ±13 (122 respondents)"
}

type eventJSON struct {
	Date string `json:"date"` // where the glyph goes on the time axis
	Text string `json:"text"` // "OpenAI's Hugging Face disclosure, July 21"
}

type barJSON struct {
	Label       string         `json:"label"`
	Heading     string         `json:"heading,omitempty"` // a bar per group: its dimension's or item's heading, on the first
	Item        string         `json:"item,omitempty"`    // a bar per group across several items: its item, for the hover
	Group       string         `json:"group,omitempty"`   // a bar per group: the group, whose name wears its tint
	Respondents string         `json:"respondents"`       // "1,083 respondents"
	Responses   []responseJSON `json:"responses"`         // from the negative bucket's far end to the positive's
	Neg         responseJSON   `json:"neg"`
	Pos         responseJSON   `json:"pos"`
	Resid       []responseJSON `json:"resid"`
}

type responseJSON struct {
	Label    string  `json:"label"`
	Side     string  `json:"side"`     // "neg", "pos" or "resid"
	Step     int     `json:"step"`     // in from its side's far end, 0 for the most extreme
	Estimate float64 `json:"estimate"` // the share, for its length
	MOE      float64 `json:"moe"`      // its margin of error, ± points: a bucket's or a chip's, for its whisker
	Value    string  `json:"value"`    // "44%"
	Text     string  `json:"text"`     // "44% ±3"
}

func chartData(c view.Chart) (chartJSON, error) {
	if c.Form == "bars" || c.Form == "ring" {
		return barsData(c), nil
	}
	waves := map[string]struct{ date, dates string }{}
	for _, w := range c.Samples {
		d, err := sampleDates(w)
		if err != nil {
			return chartJSON{}, fmt.Errorf("chart %s: %v", c.ID, err)
		}
		waves[w.ID] = d
	}
	out := chartJSON{Form: "lines", Axis: c.Axis}
	for _, s := range c.Series {
		sj := seriesJSON{Label: s.Label, Side: s.Side, Step: s.Step, Total: s.Total, Ref: s.Ref, Group: s.Group}
		for _, p := range s.Points {
			w, ok := waves[p.Sample]
			if !ok {
				return chartJSON{}, fmt.Errorf("chart %s: %s: wave %s isn't one of the chart's waves", c.ID, s.Label, p.Sample)
			}
			sj.Points = append(sj.Points, pointJSON{w.date, w.dates, p.Estimate, p.MOE, point(p, s.Net)})
		}
		out.Series = append(out.Series, sj)
	}
	for _, e := range c.Events {
		t, err := time.Parse(time.DateOnly, e.Date)
		if err != nil {
			return chartJSON{}, fmt.Errorf("chart %s: event: %v", c.ID, err)
		}
		out.Events = append(out.Events, eventJSON{e.Date, e.Name + ", " + t.Format("January 2")})
	}
	return out, nil
}

func barsData(c view.Chart) chartJSON {
	one := func(r view.Response) responseJSON {
		return responseJSON{r.Label, r.Side, r.Step, r.Point.Estimate, r.Point.MOE, percent(r.Point.Estimate, false), estimate(r.Point, false)}
	}
	all := func(rs []view.Response) []responseJSON {
		var out []responseJSON
		for _, r := range rs {
			out = append(out, one(r))
		}
		return out
	}
	out := chartJSON{Form: c.Form, Per: c.Per}
	for _, b := range c.Bars {
		out.Bars = append(out.Bars, barJSON{b.Label, b.Heading, b.Item, b.Group, respondents(b.Pos.Point.Base),
			all(b.Responses), one(b.Neg), one(b.Pos), all(b.Resid)})
	}
	return out
}

func sampleDates(w view.Sample) (struct{ date, dates string }, error) {
	var out struct{ date, dates string }
	a, err := time.Parse(time.DateOnly, w.FieldStart)
	if err != nil {
		return out, fmt.Errorf("sample %s: field_start: %v", w.ID, err)
	}
	b, err := time.Parse(time.DateOnly, w.FieldEnd)
	if err != nil {
		return out, fmt.Errorf("sample %s: field_end: %v", w.ID, err)
	}
	if out.dates, err = dates(w); err != nil {
		return out, err
	}
	out.date = a.Add(b.Sub(a) / 2).Format(time.DateOnly)
	return out, nil
}
