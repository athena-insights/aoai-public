package resolve

import (
	"fmt"
	"os"
	"strings"
)

type table struct {
	path string
	cols []string
	at   map[string]int // column name → index
	rows [][]string
	line []int // each row's line number in the file
}

func readTable(path string, want ...string) (*table, error) {
	b, err := os.ReadFile(path)
	if err != nil {
		return nil, err
	}
	lines := strings.Split(strings.TrimSuffix(string(b), "\n"), "\n")
	t := &table{path: path, cols: strings.Split(lines[0], "\t"), at: map[string]int{}}
	for i, c := range t.cols {
		t.at[c] = i
	}
	for _, c := range want {
		if _, ok := t.at[c]; !ok {
			return nil, fmt.Errorf("%s: no %q column", path, c)
		}
	}
	for i, l := range lines[1:] {
		f := strings.Split(l, "\t")
		if len(f) != len(t.cols) {
			return nil, fmt.Errorf("%s:%d: %d fields, want %d", path, i+2, len(f), len(t.cols))
		}
		t.rows = append(t.rows, f)
		t.line = append(t.line, i+2)
	}
	return t, nil
}

func (t *table) get(i int, c string) string { return t.rows[i][t.at[c]] }

func (t *table) where(i int) string { return fmt.Sprintf("%s:%d", t.path, t.line[i]) }
