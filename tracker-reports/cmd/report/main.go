package main

import (
	"bufio"
	"flag"
	"fmt"
	"math"
	"os"
	"path/filepath"
	"sort"
	"strconv"
	"strings"
	"text/template"
	"time"
)

const naFloor = 2

func die(format string, args ...any) {
	fmt.Fprintf(os.Stderr, "report: "+format+"\n", args...)
	os.Exit(1)
}

type row map[string]string

func loadTSV(path string) []row {
	f, err := os.Open(path)
	if err != nil {
		die("%v", err)
	}
	defer f.Close()
	sc := bufio.NewScanner(f)
	sc.Buffer(make([]byte, 1<<20), 1<<20)
	var head []string
	var out []row
	for sc.Scan() {
		fields := strings.Split(sc.Text(), "\t")
		if head == nil {
			head = fields
			continue
		}
		r := make(row, len(head))
		for i, h := range head {
			if i < len(fields) {
				r[h] = fields[i]
			}
		}
		out = append(out, r)
	}
	if err := sc.Err(); err != nil {
		die("%s: %v", path, err)
	}
	return out
}

func atoi(s string) int     { n, _ := strconv.Atoi(s); return n }
func atof(s string) float64 { f, _ := strconv.ParseFloat(s, 64); return f }

type item struct{ item, label, short string }

func (it item) rowLabel() string {
	if it.short != "" {
		return it.short
	}
	return it.label
}

type block struct {
	qID, title, stem string
	items            []item              // in item order; one for a single-item question
	responses        []string            // the response categories, in rank order
	presentedResp    []string            // those shown to respondents; the questionnaire lists these
	metrics          []string            // bucket totals and nets, in presentation order
	bucketResp       map[string][]string // bucket -> its responses, for the definitions
}

type bannerCol struct {
	grp, label    string // grp keys stats and nets: "total", "party=Democrat", ...
	dim, dimLabel string
	value         string // the banner value, which keys the targets
	n             int    // the subgroup's full base
	pinned        bool   // shown whatever its base
}

type model struct {
	blocks []block
	banner []bannerCol

	statW  map[string]map[string]map[string]string // grp -> item -> response -> pct_w
	netW   map[string]map[string]map[string]string // grp -> item -> metric -> value_w
	statN  map[string]map[string]map[string]int    // grp -> item -> response -> n
	netN   map[string]map[string]map[string]int    // grp -> item -> bucket -> n
	grpN   map[string]map[string]int               // grp -> item -> the full base
	baseN  map[string]map[string]int               // grp -> item -> the nets' base
	netdef map[string][2]string                    // q_id -> positive and negative bucket
	labels map[string]string                       // q_id + metric -> display label

	targets       map[string]map[string]float64
	targetVintage string
}

func set3[T any](m map[string]map[string]map[string]T, a, b, c string, v T) {
	if m[a] == nil {
		m[a] = map[string]map[string]T{}
	}
	if m[a][b] == nil {
		m[a][b] = map[string]T{}
	}
	m[a][b][c] = v
}

func set2(m map[string]map[string]int, a, b string, v int) {
	if m[a] == nil {
		m[a] = map[string]int{}
	}
	m[a][b] = v
}

func loadModel(dict, out string) *model {
	m := &model{
		netdef: map[string][2]string{}, labels: map[string]string{},
		statW: map[string]map[string]map[string]string{}, netW: map[string]map[string]map[string]string{},
		statN: map[string]map[string]map[string]int{}, netN: map[string]map[string]map[string]int{},
		grpN: map[string]map[string]int{}, baseN: map[string]map[string]int{},
	}

	title, stem := map[string]string{}, map[string]string{}
	for _, r := range loadTSV(filepath.Join(dict, "stems.tsv")) {
		title[r["q_id"]], stem[r["q_id"]] = r["title"], r["stem"]
	}
	items := loadTSV(filepath.Join(dict, "items.tsv"))
	sort.SliceStable(items, func(i, j int) bool { return atoi(items[i]["item_ord"]) < atoi(items[j]["item_ord"]) })
	byQ := map[string]*block{}
	var order []string
	for _, r := range items {
		q := r["q_id"]
		if byQ[q] == nil {
			byQ[q] = &block{qID: q, title: title[q], stem: stem[q], bucketResp: map[string][]string{}}
			order = append(order, q)
		}
		byQ[q].items = append(byQ[q].items, item{r["item"], r["label"], r["short"]})
	}
	options := loadTSV(filepath.Join(dict, "options.tsv"))
	sort.SliceStable(options, func(i, j int) bool { return atoi(options[i]["rank"]) < atoi(options[j]["rank"]) })
	for _, r := range options {
		b := byQ[r["q_id"]]
		if b == nil {
			continue
		}
		b.responses = append(b.responses, r["response"])
		if r["presented"] != "false" { // a dictionary without the column presented everything
			b.presentedResp = append(b.presentedResp, r["response"])
		}
		b.bucketResp[r["bucket"]] = append(b.bucketResp[r["bucket"]], r["response"])
	}
	for _, r := range loadTSV(filepath.Join(dict, "netdefs.tsv")) {
		m.netdef[r["q_id"]] = [2]string{r["pos_bucket"], r["neg_bucket"]}
	}
	for _, r := range loadTSV(filepath.Join(dict, "metric_labels.tsv")) {
		m.labels[r["q_id"]+"\x00"+r["metric"]] = r["label"]
	}
	qByItem := map[string]string{}
	for _, q := range order {
		for _, it := range byQ[q].items {
			qByItem[it.item] = q
		}
	}

	for _, r := range loadTSV(filepath.Join(out, "stats.tsv")) {
		set3(m.statW, r["grp"], r["question"], r["response"], r["pct_w"])
		set3(m.statN, r["grp"], r["question"], r["response"], atoi(r["n"]))
		set2(m.grpN, r["grp"], r["question"], atoi(r["grp_n"]))
	}
	metricOrder := map[string][]string{}
	seen := map[string]bool{}
	for _, r := range loadTSV(filepath.Join(out, "nets.tsv")) {
		set3(m.netW, r["grp"], r["question"], r["metric"], r["value_w"])
		set2(m.baseN, r["grp"], r["question"], atoi(r["base_n"]))
		if r["n"] != "" {
			set3(m.netN, r["grp"], r["question"], r["metric"], atoi(r["n"]))
		}
		if r["grp"] == "total" {
			q := qByItem[r["question"]]
			if key := q + "\x00" + r["metric"]; !seen[key] {
				seen[key] = true
				metricOrder[q] = append(metricOrder[q], r["metric"])
			}
		}
	}
	for _, q := range order {
		b := *byQ[q]
		b.metrics = metricOrder[q]
		m.blocks = append(m.blocks, b)
	}

	banner := loadTSV(filepath.Join(dict, "banner.tsv"))
	sort.SliceStable(banner, func(i, j int) bool {
		if a, b := atoi(banner[i]["dim_ord"]), atoi(banner[j]["dim_ord"]); a != b {
			return a < b
		}
		return atoi(banner[i]["value_ord"]) < atoi(banner[j]["value_ord"])
	})
	for _, r := range banner {
		grp := "total"
		if r["dim"] != "total" {
			grp = r["dim"] + "=" + r["value"]
		}
		n := 0
		for _, v := range m.grpN[grp] {
			n = max(n, v)
		}
		m.banner = append(m.banner, bannerCol{grp: grp, label: r["label"], dim: r["dim"], dimLabel: r["dim_label"],
			value: r["value"], n: n, pinned: r["pinned"] == "true"})
	}

	if targets := filepath.Join(out, "targets.tsv"); exists(targets) {
		m.targets = map[string]map[string]float64{}
		for _, r := range loadTSV(targets) {
			if m.targets[r["dim"]] == nil {
				m.targets[r["dim"]] = map[string]float64{}
			}
			m.targets[r["dim"]][r["value"]] = atof(r["target"])
			m.targetVintage = r["vintage"]
		}
	}
	return m
}

func exists(path string) bool {
	_, err := os.Stat(path)
	return err == nil
}

func (m *model) label(q, metric string) string {
	if l, ok := m.labels[q+"\x00"+metric]; ok {
		return l
	}
	return metric
}

type wave struct {
	n                             int
	fieldStart, fieldEnd          time.Time
	confLevel, nEff, deff, moePct float64
}

func (w wave) NComma() string     { return commaInt(w.n) }
func (w wave) FieldRange() string { return fieldDates(w.fieldStart, w.fieldEnd, "-", " – ") }
func (w wave) FieldSpan() string  { return fieldDates(w.fieldStart, w.fieldEnd, " and ", " and ") }
func (w wave) MOE() string        { return strconv.FormatFloat(w.moePct, 'f', 1, 64) }
func (w wave) Conf() string       { return strconv.Itoa(int(math.Round(w.confLevel*100))) + "%" }
func (w wave) Neff() string       { return commaInt(int(math.Round(w.nEff))) }
func (w wave) Deff() string       { return strconv.FormatFloat(w.deff, 'f', 2, 64) }

func fieldDates(a, b time.Time, sameMonthJoin, crossJoin string) string {
	switch {
	case a.Year() == b.Year() && a.Month() == b.Month():
		return fmt.Sprintf("%s %d%s%d, %d", a.Month(), a.Day(), sameMonthJoin, b.Day(), a.Year())
	case a.Year() == b.Year():
		return fmt.Sprintf("%s %d%s%s %d, %d", a.Month(), a.Day(), crossJoin, b.Month(), b.Day(), a.Year())
	default:
		return fmt.Sprintf("%s %d, %d%s%s %d, %d", a.Month(), a.Day(), a.Year(), crossJoin, b.Month(), b.Day(), b.Year())
	}
}

func commaInt(n int) string {
	s := strconv.Itoa(n)
	var out []byte
	for i := 0; i < len(s); i++ {
		if i > 0 && (len(s)-i)%3 == 0 {
			out = append(out, ',')
		}
		out = append(out, s[i])
	}
	return string(out)
}

func loadWave(path string) wave {
	kv := map[string]string{}
	for _, r := range loadTSV(path) {
		kv[r["key"]] = r["value"]
	}
	num := func(key string) float64 {
		v, err := strconv.ParseFloat(kv[key], 64)
		if err != nil {
			die("%s: bad %s %q", path, key, kv[key])
		}
		return v
	}
	date := func(key string) time.Time {
		t, err := time.Parse("2006-01-02", kv[key])
		if err != nil {
			die("%s: bad %s %q", path, key, kv[key])
		}
		return t
	}
	return wave{n: int(num("survey_n")), fieldStart: date("field_start"), fieldEnd: date("field_end"),
		confLevel: num("conf_level"), nEff: num("n_eff"), deff: num("deff"), moePct: num("moe_pct")}
}

type proseCtx struct {
	wave
	Vintage  string
	NoAnswer bool
}

func (proseCtx) NAFloor() string { return strconv.Itoa(naFloor) }

type report struct {
	m        *model
	w        wave
	decimals int
	minBase  int
	prose    map[string]*template.Template
	ctx      proseCtx
	title    string
	b        strings.Builder
}

func newReport(dict, out, proseDir string, decimals, minBase int) *report {
	r := &report{m: loadModel(dict, out), w: loadWave(filepath.Join(out, "wave.tsv")),
		decimals: decimals, minBase: minBase, prose: map[string]*template.Template{}}
	paths, _ := filepath.Glob(filepath.Join(proseDir, "*.typ"))
	for _, p := range paths {
		b, err := os.ReadFile(p)
		if err != nil {
			die("%v", err)
		}
		name := strings.TrimSuffix(filepath.Base(p), ".typ")
		r.prose[name] = template.Must(template.New(name).Parse(string(b)))
	}
	noAnswer := false
	for _, blk := range r.m.blocks {
		if len(blk.bucketResp["no_answer"]) > 0 {
			noAnswer = true
		}
	}
	r.ctx = proseCtx{wave: r.w, Vintage: r.m.targetVintage, NoAnswer: noAnswer}
	if t, err := os.ReadFile(filepath.Join(proseDir, "title")); err == nil {
		r.title = strings.TrimSpace(string(t))
	} else {
		r.title = "Americans on AI — " + r.w.fieldEnd.Format("2 January 2006")
	}
	return r
}

func (r *report) text(name string) string {
	t := r.prose[name]
	if t == nil {
		die("missing prose block %q", name)
	}
	var b strings.Builder
	if err := t.Execute(&b, r.ctx); err != nil {
		die("prose %q: %v", name, err)
	}
	return strings.TrimRight(b.String(), "\n")
}

func minus(s string) string {
	if strings.HasPrefix(s, "-") {
		return "−" + s[1:]
	}
	return s
}

func (r *report) num(x float64) string {
	p := math.Pow(10, float64(r.decimals))
	v := math.Round(x*p) / p
	if v == 0 {
		v = 0 // never "-0"
	}
	return minus(strconv.FormatFloat(v, 'f', r.decimals, 64))
}

func (r *report) floor(x float64, n int) (string, bool) {
	if n > 0 && math.Round(x*math.Pow(10, float64(r.decimals))) == 0 {
		return "<" + strconv.FormatFloat(math.Pow(10, -float64(r.decimals)), 'f', r.decimals, 64), true
	}
	return "", false
}

func (r *report) gap(g float64) string {
	if g == 0 {
		return "0"
	}
	sign := "+"
	if g < 0 {
		sign = "−"
	}
	mag := math.Abs(g)
	if s, ok := r.floor(mag, 1); ok {
		return sign + s
	}
	return sign + r.num(mag)
}

func wval(s string) float64 { return atof(s) }

func (r *report) share(grp, item, resp string) (string, float64, bool) {
	base := r.m.grpN[grp][item]
	w := wval(r.m.statW[grp][item][resp])
	s := r.num(w)
	if base > 0 {
		if f, ok := r.floor(w, r.m.statN[grp][item][resp]); ok {
			s = f
		}
	}
	return s, w / 100, base > 0
}

func (r *report) metric(grp, item, metric string) (s string, f float64, isNet, colored bool) {
	isNet = strings.HasPrefix(metric, "net_")
	base := r.m.baseN[grp][item]
	w := wval(r.m.netW[grp][item][metric])
	s = r.num(w)
	if !isNet && base > 0 {
		if fl, ok := r.floor(w, r.m.netN[grp][item][metric]); ok {
			s = fl
		}
	}
	return s, w / 100, isNet, base > 0
}

func (r *report) visible(blk block, grp string) []string {
	na := blk.bucketResp["no_answer"]
	if len(na) == 0 {
		return blk.responses
	}
	p := math.Pow(10, float64(r.decimals))
	for _, it := range blk.items {
		for _, resp := range na {
			if math.Round(wval(r.m.statW[grp][it.item][resp])*p)/p > naFloor {
				return blk.responses
			}
		}
	}
	drop := map[string]bool{}
	for _, x := range na {
		drop[x] = true
	}
	var kept []string
	for _, x := range blk.responses {
		if !drop[x] {
			kept = append(kept, x)
		}
	}
	return kept
}

func shortDefs(blk block) [][2]string {
	if len(blk.items) < 2 {
		return nil
	}
	var defs [][2]string
	for _, it := range blk.items {
		if it.short != "" && it.short != it.label {
			defs = append(defs, [2]string{it.short, it.label})
		}
	}
	return defs
}

func (r *report) totalDefs(blk block) [][2]string {
	var defs [][2]string
	for _, mk := range blk.metrics {
		if strings.HasPrefix(mk, "net_") {
			continue
		}
		rs := blk.bucketResp[mk]
		if len(rs) < 2 {
			continue
		}
		q := make([]string, len(rs))
		for i, x := range rs {
			q[i] = `"` + x + `"`
		}
		defs = append(defs, [2]string{r.m.label(blk.qID, mk), strings.Join(q, " or ")})
	}
	return defs
}

func str(s string) string {
	return `"` + strings.NewReplacer(`\`, `\\`, `"`, `\"`).Replace(s) + `"`
}

func tuple(xs []string) string {
	var b strings.Builder
	b.WriteString("(")
	for _, x := range xs {
		b.WriteString(str(x) + ", ")
	}
	b.WriteString(")")
	return b.String()
}

func cells(xs []string) string { return "(" + strings.Join(xs, ", ") + ", )" }

func pcell(s string, f float64) string { return fmt.Sprintf("p(%s, %.4f)", str(s), f) }
func ncell(s string, f float64) string { return fmt.Sprintf("n(%s, %.4f)", str(s), f) }

func (r *report) line(format string, args ...any) { fmt.Fprintf(&r.b, format+"\n", args...) }

func (r *report) rows(rs []string) string {
	if len(rs) == 0 {
		return "()"
	}
	return "(\n  " + strings.Join(rs, ",\n  ") + ",\n)"
}

func (r *report) defs(lead string, head [2]string, defs [][2]string) {
	if len(defs) == 0 {
		return
	}
	var rs []string
	for _, d := range defs {
		rs = append(rs, tuple(d[:]))
	}
	r.line("#defs(%s, %s, %s)\n", str(lead), tuple(head[:]), r.rows(rs))
}

func (r *report) question(blk block) {
	r.line("#heading(level: 2, %s)\n", str(blk.title))
	r.line("#stem(%s)\n", str(blk.stem))
}

func (r *report) cover() {
	r.line("#import \"/tracker-reports/report.typ\": *")
	r.line("#show: report.with(title: %s)\n", str(r.title))
	r.line("%s\n", r.text("intro"))
	r.line("#outline(title: [Contents], depth: 1)")

	r.line("#set page(margin: (x: margin, y: margin))\n")
}

func (r *report) topline() {
	r.line("= Topline\n\n%s\n", r.text("topline"))
	for _, blk := range r.m.blocks {
		r.question(blk)
		r.defs("Each label stands for a full item:", [2]string{"Label", "Item"}, shortDefs(blk))
		resps := r.visible(blk, "total")
		note := "*Response distribution (weighted)* — % of all respondents."
		if len(resps) < len(blk.responses) {
			note += fmt.Sprintf(" \"No answer\" (%d%% or less) is not shown.", naFloor)
		}
		r.line("#note[%s]", note)
		var rs []string
		if len(blk.items) > 1 {
			for _, it := range blk.items {
				cs := []string{str(it.rowLabel())}
				for _, resp := range resps {
					cs = append(cs, r.shareCell("total", it.item, resp))
				}
				rs = append(rs, cells(cs))
			}
			r.line("#dist(%s, %s)\n", tuple(append([]string{"Item"}, resps...)), r.rows(rs))
		} else {
			it := blk.items[0]
			for _, resp := range resps {
				rs = append(rs, cells([]string{str(resp), r.shareCell("total", it.item, resp)}))
			}
			r.line("#dist(%s, %s)\n", tuple([]string{"Response", "%"}), r.rows(rs))
		}
	}
}

func (r *report) shareCell(grp, item, resp string) string {
	s, f, colored := r.share(grp, item, resp)
	if !colored {
		return str(s)
	}
	return pcell(s, f)
}

func (r *report) metricCell(grp, item, metric string) string {
	s, f, isNet, colored := r.metric(grp, item, metric)
	switch {
	case !colored:
		return str(s)
	case isNet:
		return ncell(s, f)
	default:
		return pcell(s, f)
	}
}

func (r *report) shown(bc bannerCol) bool { return bc.n >= r.minBase || bc.pinned }
func (r *report) small(bc bannerCol) bool { return bc.n > 0 && bc.n < r.minBase }

type dimGroup struct {
	label string
	cols  []bannerCol
}

func (r *report) dims(onlyShown bool) (total bannerCol, dims []dimGroup) {
	idx := map[string]int{}
	for _, bc := range r.m.banner {
		if bc.dim == "total" {
			total = bc
			continue
		}
		if onlyShown && !r.shown(bc) {
			continue
		}
		if _, ok := idx[bc.dim]; !ok {
			idx[bc.dim] = len(dims)
			dims = append(dims, dimGroup{label: bc.dimLabel})
		}
		dims[idx[bc.dim]].cols = append(dims[idx[bc.dim]].cols, bc)
	}
	return total, dims
}

func (r *report) crosstabs() {
	r.line("= Crosstabs\n\n%s\n", r.text("crosstabs"))
	r.line("One table per banner dimension (Total repeated as the first column). The base row is each subgroup's full size; columns with n\\<%d are marked †.\n", r.minBase)
	total, dims := r.dims(true)
	for _, blk := range r.m.blocks {
		r.question(blk)
		r.defs("Each label stands for a full item:", [2]string{"Label", "Item"}, shortDefs(blk))
		r.defs("Each total combines multiple responses:", [2]string{"Total", "Responses"}, r.totalDefs(blk))
		r.line("#note[Cells (weighted): totals (%%) and net (percentage points).]")
		pos, neg := r.m.netdef[blk.qID][0], r.m.netdef[blk.qID][1]
		for _, g := range dims {
			if len(g.cols) == 0 {
				continue
			}
			cols := append([]bannerCol{total}, g.cols...)
			var head, base []string
			for _, bc := range cols {
				label := bc.label
				if r.small(bc) {
					label += "†"
				}
				head = append(head, label)
				base = append(base, strconv.Itoa(bc.n))
			}
			r.line("#heading(level: 3, %s)", str("By "+g.label))
			var rs []string
			corners := []string{"Metric"}
			if len(blk.items) > 1 {
				corners = []string{"Item", "Metric"}
				for _, it := range blk.items {
					first := true
					for _, mk := range blk.metrics {
						if mk != pos && mk != neg && !strings.HasPrefix(mk, "net_") {
							continue
						}
						itemLabel := ""
						if first {
							itemLabel, first = it.rowLabel(), false
						}
						cs := []string{str(itemLabel), str(r.m.label(blk.qID, mk))}
						for _, bc := range cols {
							cs = append(cs, r.metricCell(bc.grp, it.item, mk))
						}
						rs = append(rs, cells(cs))
					}
				}
			} else {
				it := blk.items[0]
				for _, mk := range blk.metrics {
					cs := []string{str(r.m.label(blk.qID, mk))}
					for _, bc := range cols {
						cs = append(cs, r.metricCell(bc.grp, it.item, mk))
					}
					rs = append(rs, cells(cs))
				}
			}
			r.line("#xtab(%s, %s, %s, %s)\n", tuple(corners), tuple(head), tuple(base), r.rows(rs))
		}
	}
}

func (r *report) questionnaire() {
	r.line("= Appendix — Questionnaire\n\n%s\n", r.text("questionnaire"))
	for _, blk := range r.m.blocks {
		r.question(blk)
		if len(blk.items) > 1 {
			var labels []string
			for _, it := range blk.items {
				labels = append(labels, it.label)
			}
			r.line("*Items*\n\n#items(%s)\n", tuple(labels))
		}
		r.line("*Response options*\n\n#options(%s)\n", tuple(blk.presentedResp))
	}
}

func (r *report) methodology() {
	r.line("= Appendix — Methodology\n\n%s\n", r.text("methodology"))
}

func (r *report) composition() {
	total, dims := r.dims(false)
	if total.n == 0 {
		return
	}
	r.line("= Appendix — Sample composition\n\n%s\n", r.text("sample"))
	head := []string{"Dimension", "Group", "n", "%"}
	if r.m.targets != nil {
		head = []string{"Dimension", "Group", "n", "Sample %", "ACS " + r.m.targetVintage + " %", "Gap (pp)"}
	}
	var rs []string
	for _, g := range dims {
		for i, bc := range g.cols {
			dim := ""
			if i == 0 {
				dim = g.label
			}
			pct := 100 * float64(bc.n) / float64(total.n)
			sample := r.num(pct)
			if r.m.targets != nil {
				if s, ok := r.floor(pct, bc.n); ok {
					sample = s
				}
			}
			cs := []string{dim, bc.label, strconv.Itoa(bc.n), sample}
			if r.m.targets != nil {
				acs, gap := "—", "—" // no benchmark for a floated margin, such as party
				if prop, ok := r.m.targets[bc.dim][bc.value]; ok {
					acsPct := 100 * prop
					acs = r.num(acsPct)
					if prop > 0 {
						if s, ok := r.floor(acsPct, 1); ok {
							acs = s
						}
					}
					gap = r.gap(pct - acsPct)
				}
				cs = append(cs, acs, gap)
			}
			rs = append(rs, tuple(cs))
		}
	}
	r.line("#comp(%s, %s)", tuple(head), r.rows(rs))
}

func main() {
	dicts := flag.String("dicts", "", "the wave's dictionaries directory")
	rollups := flag.String("rollups", "", "the wave's rollups directory")
	proseDir := flag.String("prose", "", "the wave's prose directory")
	decimals := flag.Int("decimals", 0, "decimal places shown")
	minBase := flag.Int("min-base", 100, "the base a banner column needs to be shown, unless pinned")
	flag.Parse()
	if *dicts == "" || *rollups == "" || *proseDir == "" {
		die("usage: report --dicts DIR --rollups DIR --prose DIR")
	}
	r := newReport(*dicts, *rollups, *proseDir, *decimals, *minBase)
	r.cover()
	r.topline()
	r.crosstabs()
	r.questionnaire()
	r.methodology()
	r.composition()
	fmt.Print(r.b.String())
}
