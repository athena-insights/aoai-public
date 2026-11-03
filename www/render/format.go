package render

import (
	"fmt"
	"math"
	"strconv"
	"strings"
	"time"

	"github.com/athena-insights/aoai-public/www/view"
)

func number(v float64, net bool) string {
	s := strconv.FormatFloat(v, 'f', 0, 64)
	switch {
	case s == "-0":
		return "0"
	case !net && s == "0" && v > 0:
		return "<1"
	case net && s != "0" && v > 0:
		return "+" + s
	}
	return strings.Replace(s, "-", "−", 1)
}

func moe(v float64) string { return "±" + number(v, false) }

func moeRange(r view.Range) string {
	if lo, hi := moe(r.Lo), moe(r.Hi); lo != hi {
		return lo + " to " + hi
	}
	return moe(r.Hi)
}

func moeNote(m view.MOE) string {
	switch {
	case m.All.Hi > 0 && m.Groups.Hi > 0:
		return "Margin of error " + moeRange(m.All) + " points for all adults, " + moeRange(m.Groups) + " for groups"
	case m.All.Hi > 0:
		return "Margin of error " + moeRange(m.All) + " points for all adults"
	case m.Groups.Hi > 0:
		return "Margin of error " + moeRange(m.Groups) + " points for groups"
	}
	return ""
}

func percent(v float64, net bool) string {
	if net {
		return number(v, true)
	}
	return number(v, false) + "%"
}

func points(from, to float64) string {
	n := int(math.RoundToEven(to) - math.RoundToEven(from))
	unit := "\u00a0points"
	if n == 1 || n == -1 {
		unit = "\u00a0point"
	}
	switch {
	case n > 0:
		return "+" + strconv.Itoa(n) + unit
	case n < 0:
		return "−" + strconv.Itoa(-n) + unit
	}
	return "0" + unit
}

func estimate(p view.Point, net bool) string { return percent(p.Estimate, net) + " " + moe(p.MOE) }

func respondents(n int) string { return count(n) + " respondents" }

func point(p view.Point, net bool) string {
	return estimate(p, net) + " (" + respondents(p.Base) + ")"
}

func share(part, of int) string { return percent(100*float64(part)/float64(of), false) }

func count(n int) string {
	s := strconv.Itoa(n)
	for i := len(s) - 3; i > 0; i -= 3 {
		s = s[:i] + "," + s[i:]
	}
	return s
}

func surveyMOE(v float64) string { return "±" + strconv.FormatFloat(v, 'f', 1, 64) }

func waves(s view.Sample) string {
	var ns []string
	for _, id := range s.Surveys {
		ns = append(ns, strings.TrimLeft(id, "0"))
	}
	return strings.Join(ns, "+")
}

func dates(w view.Sample) (string, error) { return joined(shortSpan(w)) }

func longDates(w view.Sample) (string, error) { return joined(longSpan(w)) }

func joined(s dateSpan, err error) (string, error) {
	if s.End == "" {
		return s.Start, err
	}
	return s.Start + "–" + s.End, err
}

func month(w view.Sample) (string, error) {
	a, b, err := ends(w)
	if err != nil {
		return "", err
	}
	if a.Month() == b.Month() {
		return a.Format("January"), nil
	}
	return a.Format("January") + " and " + b.Format("January"), nil
}

func when(w view.Sample) (string, error) {
	a, b, err := ends(w)
	if err != nil {
		return "", err
	}
	if w.Pool() && a.Month() == b.Month() {
		return a.Format("January"), nil
	}
	if half(a) == half(b) {
		return half(a), nil
	}
	return half(a) + " and " + half(b), nil
}

func half(t time.Time) string {
	if t.Day() > 15 {
		return "late " + t.Format("January")
	}
	return "early " + t.Format("January")
}

func ends(w view.Sample) (a, b time.Time, err error) {
	if !w.Pool() {
		d, err := sampleDates(w)
		if err != nil {
			return a, b, err
		}
		a, err = time.Parse(time.DateOnly, d.date)
		return a, a, err
	}
	if a, err = time.Parse(time.DateOnly, w.FieldStart); err != nil {
		return a, b, fmt.Errorf("pool %s: field_start: %v", w.ID, err)
	}
	if b, err = time.Parse(time.DateOnly, w.FieldEnd); err != nil {
		return a, b, fmt.Errorf("pool %s: field_end: %v", w.ID, err)
	}
	return a, b, nil
}

type dateSpan struct {
	Start, End         string // "Sep 10" and "14"
	StartDate, EndDate string // "2026-09-10" and "2026-09-14"
}

func shortSpan(w view.Sample) (dateSpan, error) { return span(w, "Jan 2", "") }

func longSpan(w view.Sample) (dateSpan, error) { return span(w, "January 2", ", 2006") }

func longDate(date string) (string, error) {
	t, err := time.Parse(time.DateOnly, date)
	if err != nil {
		return "", err
	}
	return t.Format("January 2, 2006"), nil
}

type fielding struct {
	Label  string // "Survey fielded" or "Surveys fielded"
	Join   string // between the ends: "–" within one survey, " to " across several
	Span   dateSpan
	Pooled bool // the chart draws from a pool, adjacent waves taken as one sample
}

func fielded(c view.Chart) (fielding, error) {
	if len(c.Samples) == 0 {
		return fielding{}, fmt.Errorf("chart %s draws from no sample", c.ID)
	}
	first, last := c.Samples[0], c.Samples[len(c.Samples)-1]
	surveys := 0
	for _, s := range c.Samples {
		surveys += len(s.Surveys)
	}
	if surveys == 1 {
		s, err := longSpan(first)
		return fielding{"Survey fielded", "–", s, false}, err
	}
	pooled := false
	for _, s := range c.Samples {
		pooled = pooled || s.Pool()
	}
	s, err := longSpan(view.Sample{ID: c.ID, FieldStart: first.FieldStart, FieldEnd: last.FieldEnd})
	return fielding{"Surveys fielded", " to ", s, pooled}, err
}

func span(w view.Sample, day, year string) (dateSpan, error) {
	s := dateSpan{StartDate: w.FieldStart, EndDate: w.FieldEnd}
	a, err := time.Parse(time.DateOnly, w.FieldStart)
	if err != nil {
		return s, fmt.Errorf("sample %s: field_start: %v", w.ID, err)
	}
	b, err := time.Parse(time.DateOnly, w.FieldEnd)
	if err != nil {
		return s, fmt.Errorf("sample %s: field_end: %v", w.ID, err)
	}
	switch {
	case a.Equal(b):
		s.Start = a.Format(day + year)
	case a.Year() != b.Year():
		s.Start, s.End = a.Format(day+year), b.Format(day+year)
	case a.Month() != b.Month():
		s.Start, s.End = a.Format(day), b.Format(day+year)
	default:
		s.Start, s.End = a.Format(day), b.Format("2"+year)
	}
	return s, nil
}

func apDates(w view.Sample) (string, error) {
	a, err := time.Parse(time.DateOnly, w.FieldStart)
	if err != nil {
		return "", fmt.Errorf("sample %s: field_start: %v", w.ID, err)
	}
	b, err := time.Parse(time.DateOnly, w.FieldEnd)
	if err != nil {
		return "", fmt.Errorf("sample %s: field_end: %v", w.ID, err)
	}
	switch {
	case a.Equal(b):
		return apMonth(a) + " " + strconv.Itoa(a.Day()), nil
	case a.Month() != b.Month():
		return apMonth(a) + " " + strconv.Itoa(a.Day()) + "-" + apMonth(b) + " " + strconv.Itoa(b.Day()), nil
	default:
		return apMonth(a) + " " + strconv.Itoa(a.Day()) + "-" + strconv.Itoa(b.Day()), nil
	}
}

func apMonth(t time.Time) string {
	switch t.Month() {
	case time.March, time.April, time.May, time.June, time.July:
		return t.Format("January")
	case time.September:
		return "Sept."
	default:
		return t.Format("Jan.")
	}
}

func tenth(v float64) string { return strconv.FormatFloat(v, 'f', 1, 64) }

type series struct {
	Since             string
	Fewest, Most      int
	Narrowest, Widest float64
}

func seriesOf(waves []view.Sample) (series, error) {
	if len(waves) == 0 {
		return series{}, fmt.Errorf("no waves")
	}
	first := waves[len(waves)-1]
	t, err := time.Parse(time.DateOnly, first.FieldStart)
	if err != nil {
		return series{}, fmt.Errorf("sample %s: field_start: %v", first.ID, err)
	}
	s := series{Since: t.Format("January 2006"), Fewest: first.Respondents, Most: first.Respondents, Narrowest: first.MOE, Widest: first.MOE}
	for _, w := range waves {
		s.Fewest, s.Most = min(s.Fewest, w.Respondents), max(s.Most, w.Respondents)
		s.Narrowest, s.Widest = min(s.Narrowest, w.MOE), max(s.Widest, w.MOE)
	}
	return s, nil
}
