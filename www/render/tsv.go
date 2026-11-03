package render

import (
	"bytes"
	"fmt"
	"strconv"
	"strings"

	"github.com/athena-insights/aoai-public/www/view"
)

// tsvHeader names the columns, in the order of view.Row's fields.
var tsvHeader = []string{"sample", "field_start", "field_end", "group", "group_label", "item", "key", "label", "kind", "estimate", "moe", "respondents"}

// chartTSV is chart c's rows as a TSV file.
func chartTSV(c view.Chart) ([]byte, error) {
	if len(c.Rows) == 0 {
		return nil, fmt.Errorf("chart %s has no rows", c.ID)
	}
	var b bytes.Buffer
	line := func(fields ...string) error {
		for _, f := range fields {
			if strings.ContainsAny(f, "\t\n") {
				return fmt.Errorf("chart %s: %q holds a tab or a newline", c.ID, f)
			}
		}
		b.WriteString(strings.Join(fields, "\t"))
		b.WriteByte('\n')
		return nil
	}
	if err := line(tsvHeader...); err != nil {
		return nil, err
	}
	for _, r := range c.Rows {
		if err := line(r.Sample, r.FieldStart, r.FieldEnd, r.Group, r.GroupLabel, r.Item, r.Key, r.Label, r.Kind,
			strconv.FormatFloat(r.Estimate, 'f', 2, 64), strconv.FormatFloat(r.MOE, 'f', 2, 64), strconv.Itoa(r.Base)); err != nil {
			return nil, err
		}
	}
	return b.Bytes(), nil
}
