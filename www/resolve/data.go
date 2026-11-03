package resolve

import (
	"cmp"
	"fmt"
	"path/filepath"
	"slices"
	"strconv"
	"strings"

	"github.com/athena-insights/aoai-public/www/view"
)

type sample struct {
	id                   string
	surveys              []string // the waves it holds: itself, or a pool's members
	fieldStart, fieldEnd string
	n                    int     // adults who completed the survey, or a pool's surveys
	online, phone        int     // of them, interviewed online, and by phone
	moe                  float64 // the 95% margin of error for all adults
	stats                *table  // a row per group, item and response
	nets                 *table  // a row per group, item and metric

	statsAt, netsAt      map[[3]string]int
	statsAsked           map[[2]string]int   // by group and item: a stats row, for the group's base
	netsAsked            map[[2]string]int   // by group and item: a nets row, for the group's base
	bases                map[string]int      // by group: its respondents, the base of every item
	stems                map[string]string   // q_id → question wording
	questions            []string            // every q_id, in the dictionary's order
	items                map[string]dictItem // item → its question and wording
	perQ                 map[string]int      // q_id → how many items it has
	options              map[string][]option // q_id → its responses, in rank order
	netdefs              map[string]netdef   // q_id → its net
	banner               []bannerCol         // the crosstabs' columns, in the dictionary's order
	metricLabels         labels              // by q_id and metric: the dictionary's label for a bucket's total or a net
	stemsPath, itemsPath string
	optionsPath          string
	netdefsPath          string
}

type bannerCol struct {
	grp              string // keys stats and nets: "total", "party=Democrat", ...
	dim, dimLabel    string
	value, label     string // the value, as grp carries it, and its compact label
	dimOrd, valueOrd int
	pinned           bool // shown whatever its base
	where            string
}

type option struct {
	response, bucket string
	rank, value      int  // value, the scale's code, only for substantive responses
	dk               bool // not substantive: not sure, none of these, no answer
	presented        bool // shown to respondents
	where            string
}

type netdef struct {
	name     string
	pos, neg string
	where    string
}

type dictItem struct {
	q     string // q_id
	label string // the item's wording, verbatim
	ord   int    // its place among its question's items, as asked
}

func loadWave(data, id string) (*sample, error) {
	return load(filepath.Join(data, id), id, false)
}

func loadPool(data, id string) (*sample, error) {
	return load(filepath.Join(data, "pooled", id), id, true)
}

func load(dir, id string, pool bool) (*sample, error) {
	rollups, dicts := filepath.Join(dir, "rollups"), filepath.Join(dir, "dicts")
	w := &sample{id: id}

	facts, err := readTable(filepath.Join(rollups, "wave.tsv"), "key", "value")
	if err != nil {
		return nil, err
	}
	f := map[string]string{}
	for i := range facts.rows {
		f[facts.get(i, "key")] = facts.get(i, "value")
	}

	if f["conf_level"] != "0.95" {
		return nil, fmt.Errorf("%s: conf_level is %q; margins of error here assume 0.95", facts.path, f["conf_level"])
	}
	w.fieldStart, w.fieldEnd = f["field_start"], f["field_end"]
	members, ok := f["members"]
	switch {
	case pool && !ok:
		return nil, fmt.Errorf("%s: no members: a pool's wave.tsv names the waves it holds", facts.path)
	case !pool && ok:
		return nil, fmt.Errorf("%s: has members: it is a pool, not a wave", facts.path)
	case pool:
		w.surveys = strings.Fields(members)
		if len(w.surveys) < 2 {
			return nil, fmt.Errorf("%s: members %q: a pool holds two waves or more", facts.path, members)
		}
	default:
		w.surveys = []string{id}
	}
	if w.n, err = strconv.Atoi(f["survey_n"]); err != nil {
		return nil, fmt.Errorf("%s: survey_n: %v", facts.path, err)
	}
	if w.moe, err = strconv.ParseFloat(f["moe_pct"], 64); err != nil {
		return nil, fmt.Errorf("%s: moe_pct: %v", facts.path, err)
	}

	if !pool {
		resp, err := readTable(filepath.Join(rollups, "responses.tsv"), "survey_mode")
		if err != nil {
			return nil, err
		}
		for i := range resp.rows {
			switch mode := resp.get(i, "survey_mode"); mode {
			case "Web Interview":
				w.online++
			case "Phone interview":
				w.phone++
			default:
				return nil, fmt.Errorf("%s: survey_mode %q: not online or by phone", resp.where(i), mode)
			}
		}
		if w.online+w.phone != w.n {
			return nil, fmt.Errorf("%s: %d respondents online and by phone, but %s says survey_n is %d", resp.path, w.online+w.phone, facts.path, w.n)
		}
	}

	if w.stats, err = readTable(filepath.Join(rollups, "stats.tsv"),
		"grp", "question", "response", "grp_n", "pct_w", "se_w"); err != nil {
		return nil, err
	}
	if w.nets, err = readTable(filepath.Join(rollups, "nets.tsv"),
		"grp", "question", "metric", "kind", "base_n", "value_w", "se_w"); err != nil {
		return nil, err
	}
	w.statsAt = index(w.stats, "grp", "question", "response")
	w.netsAt = index(w.nets, "grp", "question", "metric")
	w.statsAsked, w.bases = map[[2]string]int{}, map[string]int{}
	for i := range w.stats.rows {
		k := [2]string{w.stats.get(i, "grp"), w.stats.get(i, "question")}
		if _, ok := w.statsAsked[k]; !ok {
			w.statsAsked[k] = i
		}
		if _, ok := w.bases[k[0]]; !ok {
			if w.bases[k[0]], err = strconv.Atoi(w.stats.get(i, "grp_n")); err != nil {
				return nil, fmt.Errorf("%s: grp_n: %v", w.stats.where(i), err)
			}
		}
	}
	w.netsAsked = map[[2]string]int{}
	for i := range w.nets.rows {
		k := [2]string{w.nets.get(i, "grp"), w.nets.get(i, "question")}
		if _, ok := w.netsAsked[k]; !ok {
			w.netsAsked[k] = i
		}
	}

	stems, err := readTable(filepath.Join(dicts, "stems.tsv"), "q_id", "stem")
	if err != nil {
		return nil, err
	}
	w.stemsPath, w.stems = stems.path, map[string]string{}
	for i := range stems.rows {
		q := stems.get(i, "q_id")
		w.stems[q] = stems.get(i, "stem")
		w.questions = append(w.questions, q)
	}
	items, err := readTable(filepath.Join(dicts, "items.tsv"), "item", "item_ord", "q_id", "label")
	if err != nil {
		return nil, err
	}
	w.itemsPath, w.items, w.perQ = items.path, map[string]dictItem{}, map[string]int{}
	for i := range items.rows {
		q := items.get(i, "q_id")
		ord, err := strconv.Atoi(items.get(i, "item_ord"))
		if err != nil {
			return nil, fmt.Errorf("%s: item_ord: %v", items.where(i), err)
		}
		w.items[items.get(i, "item")] = dictItem{q, items.get(i, "label"), ord}
		w.perQ[q]++
	}

	opts, err := readTable(filepath.Join(dicts, "options.tsv"),
		"q_id", "response", "rank", "bucket", "value", "dk", "presented")
	if err != nil {
		return nil, err
	}
	w.optionsPath, w.options = opts.path, map[string][]option{}
	for i := range opts.rows {
		o := option{response: opts.get(i, "response"), bucket: opts.get(i, "bucket"),
			dk: opts.get(i, "dk") == "1", presented: opts.get(i, "presented") == "true", where: opts.where(i)}
		if o.rank, err = strconv.Atoi(opts.get(i, "rank")); err != nil {
			return nil, fmt.Errorf("%s: rank: %v", o.where, err)
		}
		if !o.dk {
			if o.value, err = strconv.Atoi(opts.get(i, "value")); err != nil {
				return nil, fmt.Errorf("%s: value: %v", o.where, err)
			}
		}
		q := opts.get(i, "q_id")
		w.options[q] = append(w.options[q], o)
	}
	for _, os := range w.options {
		slices.SortFunc(os, func(a, b option) int { return cmp.Compare(a.rank, b.rank) })
	}

	nets, err := readTable(filepath.Join(dicts, "netdefs.tsv"), "q_id", "net_name", "pos_bucket", "neg_bucket")
	if err != nil {
		return nil, err
	}
	w.netdefsPath, w.netdefs = nets.path, map[string]netdef{}
	for i := range nets.rows {
		w.netdefs[nets.get(i, "q_id")] = netdef{nets.get(i, "net_name"), nets.get(i, "pos_bucket"), nets.get(i, "neg_bucket"), nets.where(i)}
	}

	bt, err := readTable(filepath.Join(dicts, "banner.tsv"), "dim", "dim_ord", "dim_label", "value", "value_ord", "label", "pinned")
	if err != nil {
		return nil, err
	}
	for i := range bt.rows {
		c := bannerCol{dim: bt.get(i, "dim"), dimLabel: bt.get(i, "dim_label"), value: bt.get(i, "value"),
			label: bt.get(i, "label"), pinned: bt.get(i, "pinned") == "true", where: bt.where(i)}
		c.grp = "total"
		if c.dim != "total" {
			c.grp = c.dim + "=" + c.value
		}
		if c.dimOrd, err = strconv.Atoi(bt.get(i, "dim_ord")); err != nil {
			return nil, fmt.Errorf("%s: dim_ord: %v", c.where, err)
		}
		if c.valueOrd, err = strconv.Atoi(bt.get(i, "value_ord")); err != nil {
			return nil, fmt.Errorf("%s: value_ord: %v", c.where, err)
		}
		w.banner = append(w.banner, c)
	}
	slices.SortStableFunc(w.banner, func(a, b bannerCol) int {
		return cmp.Or(cmp.Compare(a.dimOrd, b.dimOrd), cmp.Compare(a.valueOrd, b.valueOrd))
	})
	if w.metricLabels, err = readLabels(filepath.Join(dicts, "metric_labels.tsv"), "q_id", "metric"); err != nil {
		return nil, err
	}
	return w, nil
}

func (w *sample) view() view.Sample {
	return view.Sample{ID: w.id, Surveys: w.surveys, FieldStart: w.fieldStart, FieldEnd: w.fieldEnd,
		Respondents: w.n, Online: w.online, Phone: w.phone, MOE: w.moe}
}

func index(t *table, a, b, c string) map[[3]string]int {
	m := map[[3]string]int{}
	for i := range t.rows {
		m[[3]string{t.get(i, a), t.get(i, b), t.get(i, c)}] = i
	}
	return m
}
