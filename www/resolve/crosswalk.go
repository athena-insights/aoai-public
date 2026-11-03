package resolve

import (
	"fmt"
	"path/filepath"
	"slices"
	"strings"
)

type crosswalk struct {
	measuresPath string
	measures     map[string]measure
	items        labels // by item
	metrics      labels // by q_id and metric
	responses    labels // by q_id and response
	groups       labels // by grp
}

type measure struct {
	name, item, rollup, key string
	where                   string // file:line
}

type labels struct {
	path string
	text map[string]string
}

func loadCrosswalk(dir string) (*crosswalk, error) {
	cw := &crosswalk{measuresPath: filepath.Join(dir, "measures.tsv"), measures: map[string]measure{}}
	t, err := readTable(cw.measuresPath, "measure", "item", "rollup", "key")
	if err != nil {
		return nil, err
	}
	for i := range t.rows {
		m := measure{t.get(i, "measure"), t.get(i, "item"), t.get(i, "rollup"), t.get(i, "key"), t.where(i)}
		cw.measures[m.name] = m
	}
	for _, l := range []struct {
		dst  *labels
		file string
		key  []string
	}{
		{&cw.items, "item_labels.tsv", []string{"item"}},
		{&cw.metrics, "metric_labels.tsv", []string{"q_id", "metric"}},
		{&cw.responses, "response_labels.tsv", []string{"q_id", "response"}},
		{&cw.groups, "group_labels.tsv", []string{"grp"}},
	} {
		if *l.dst, err = readLabels(filepath.Join(dir, l.file), l.key...); err != nil {
			return nil, err
		}
	}
	return cw, nil
}

func readLabels(path string, key ...string) (labels, error) {
	t, err := readTable(path, slices.Concat(key, []string{"label"})...)
	if err != nil {
		return labels{}, err
	}
	l := labels{path: path, text: map[string]string{}}
	for i := range t.rows {
		var parts []string
		for _, c := range key {
			parts = append(parts, t.get(i, c))
		}
		l.text[strings.Join(parts, "\t")] = t.get(i, "label")
	}
	return l, nil
}

func (l labels) lookup(key ...string) (string, error) {
	if s, ok := l.text[strings.Join(key, "\t")]; ok {
		return s, nil
	}
	return "", fmt.Errorf("%s has no label for %s", l.path, strings.Join(key, " "))
}
