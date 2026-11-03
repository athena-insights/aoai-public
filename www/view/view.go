package view

type Site struct {
	Pages []Page `json:"pages"`

	Measures map[string]Measure `json:"measures"`
}

type Measure struct {
	Net    bool                          `json:"net"`    // a net (one bucket minus another), not a share
	Groups map[string]map[string]float64 `json:"groups"` // grp → sample → estimate
}

type Page struct {
	Path       string    `json:"path"`
	Root       string    `json:"root"`             // the way from the page back to the site's root, "./" or "../", which the shared templates put before every link, so the site works wherever it's served
	Origin     string    `json:"origin,omitempty"` // the address the site is served at, scheme and host, for the link preview; empty when none
	Title      string    `json:"title"`
	Document   string    `json:"document"`
	Nav        []NavItem `json:"nav"`
	Latest     Sample    `json:"latest"`                // the latest wave, for a dateline
	NextUpdate string    `json:"next_update,omitempty"` // the date the next survey's results are due, year-month-day, for a dateline
	Basis      Basis     `json:"basis"`                 // the data behind the site, for the pages' prose
	Waves      []Sample  `json:"waves"`                 // every wave, newest first, for a list of them
	Pools      []Sample  `json:"pools"`                 // every pool, newest first
	Charts     []Chart   `json:"charts"`                // in declared order

	Section  *NavItem  `json:"section,omitempty"`
	Crosstab *Crosstab `json:"crosstab,omitempty"`
}

type Basis struct {
	Surveys    int `json:"surveys"`
	Interviews int `json:"interviews"`
	Responses  int `json:"responses"`
	Groups     int `json:"groups"`
}

type NavItem struct {
	Title   string  `json:"title"`
	Path    string  `json:"path"`
	Href    string  `json:"href"` // its link from the page it's on: "../groups/"
	Current bool    `json:"current"`
	Sample  *Sample `json:"sample,omitempty"` // on the crosstabs, the wave the entry is, named by its dates rather than Title
}

type Chart struct {
	ID       string   `json:"id"`            // the page's name for it, which its document places it by
	Form     string   `json:"form"`          // "lines", "bars" or "ring"
	Axis     string   `json:"axis"`          // lines: "absolute" or "fitted"
	Per      string   `json:"per,omitempty"` // bars: "item" or "group", what each bar is
	Title    string   `json:"title"`
	Subtitle string   `json:"subtitle,omitempty"`
	Wordings []string `json:"wordings,omitempty"` // every item the chart measures as it was asked, in the chart's order, where its question asks several
	MOE      MOE      `json:"moe"`
	Samples  []Sample `json:"samples"`          // what the chart draws from: the waves lines run over, oldest first, or the one pool bars show
	Series   []Series `json:"series"`           // lines, with a point per wave
	Bars     []Bar    `json:"bars,omitempty"`   // bars, in declared order; a ring's one bar
	Events   []Event  `json:"events,omitempty"` // lines: the news events within the chart's waves, oldest first
	Rows     []Row    `json:"rows"`             // the chart's numbers as one table, a row per point, for its data download
}

type Row struct {
	Sample     string  `json:"sample"`      // the wave's or pool's ID
	FieldStart string  `json:"field_start"` // its field dates, year-month-day
	FieldEnd   string  `json:"field_end"`
	Group      string  `json:"group"`       // the rollups' group, such as sex=Female
	GroupLabel string  `json:"group_label"` // the crosswalk's, such as Women
	Item       string  `json:"item"`        // the rollups' item, such as q_affect:response
	Key        string  `json:"key"`         // the response as asked, or the net's bucket, as the rollups spell it
	Label      string  `json:"label"`       // the crosswalk's label for the key
	Kind       string  `json:"kind"`        // share, total or net, as the rollups say, or residual for a bar's gray
	Estimate   float64 `json:"estimate"`    // weighted, in points for a net
	MOE        float64 `json:"moe"`         // 95% margin of error, ± points
	Base       int     `json:"base"`        // respondents in the group
}

type Event struct {
	Date string `json:"date"` // year-month-day
	Name string `json:"name"` // "OpenAI's Hugging Face disclosure"
}

type MOE struct {
	All    Range `json:"all"`
	Groups Range `json:"groups"`
}

type Range struct {
	Lo float64 `json:"lo"`
	Hi float64 `json:"hi"`
}

type Sample struct {
	ID          string   `json:"id"`      // the study's name for it: a wave's, "007", or a pool's, "006+007"
	Surveys     []string `json:"surveys"` // the waves it holds, oldest first
	FieldStart  string   `json:"field_start"`
	FieldEnd    string   `json:"field_end"`
	Respondents int      `json:"respondents"` // adults who completed the survey, or the surveys
	Online      int      `json:"online"`      // a wave's, of them, interviewed online
	Phone       int      `json:"phone"`       // and by phone; a pool's are 0, unread
	MOE         float64  `json:"moe"`         // the 95% margin of error for all adults, ± points
}

func (s Sample) Pool() bool { return len(s.Surveys) > 1 }

type Series struct {
	Label  string  `json:"label"`
	Side   string  `json:"side,omitempty"`  // with net colors: "neg", "pos" or "resid"
	Step   int     `json:"step,omitempty"`  // with net colors: 0 for its side's most extreme response
	Total  bool    `json:"total,omitempty"` // with net colors: a bucket's total, not a response
	Ref    bool    `json:"ref,omitempty"`   // the chart's reference group, drawn in dark ink
	Group  string  `json:"group,omitempty"` // when lines are groups: the group, such as party=Democrat, which keeps its color in every chart
	Net    bool    `json:"net"`             // a net (one bucket minus another), not a share
	Points []Point `json:"points"`
}

type Bar struct {
	Label     string     `json:"label"`             // the item, or with a bar per group, the group
	Heading   string     `json:"heading,omitempty"` // with a bar per group: the heading of the dimension, or the item, this bar starts
	Item      string     `json:"item,omitempty"`    // with a bar per group across several items: the bar's item
	Group     string     `json:"group,omitempty"`   // with a bar per group: the group, such as party=Democrat, which keeps its color in every chart
	Responses []Response `json:"responses"`
	Neg       Response   `json:"neg"`
	Pos       Response   `json:"pos"`
	Resid     []Response `json:"resid"` // such as not sure
}

type Response struct {
	Key   string `json:"key"`   // the response as asked, or the bucket's name, as the rollups spell it
	Label string `json:"label"` // the crosswalk's label for it
	Side  string `json:"side"`  // "neg", "pos" or "resid"
	Step  int    `json:"step"`  // in from its side's far end, 0 for the most extreme response
	Point Point  `json:"point"`
}

type Point struct {
	Sample   string  `json:"sample"`
	Estimate float64 `json:"estimate"` // weighted
	MOE      float64 `json:"moe"`      // 95% margin of error, ± points
	Base     int     `json:"base"`     // respondents in the group
}

type Crosstab struct {
	Wave      Sample          `json:"wave"`
	MinBase   int             `json:"min_base"` // the respondents a column needs to be shown, unless the banner pins it
	Dims      []Dim           `json:"dims"`     // the dimensions over the columns, in banner order
	Columns   []Column        `json:"columns"`  // the columns shown, in banner order, all adults first
	Questions []CrossQuestion `json:"questions"`
}

type Dim struct {
	Label string `json:"label"`
	Span  int    `json:"span"`
}

type Column struct {
	Group  string `json:"group"`  // such as party=Democrat
	Label  string `json:"label"`  // the banner's compact label, such as Dem
	Base   int    `json:"base"`   // its respondents
	Small  bool   `json:"small"`  // under the threshold, shown because the banner pins it: marked
	Starts bool   `json:"starts"` // the first column of a dimension after the first: a rule divides it from the column before
}

type CrossQuestion struct {
	ID    string      `json:"id"` // its anchor: the q_id without its prefix
	Stem  string      `json:"stem"`
	Items []CrossItem `json:"items"`
}

type CrossItem struct {
	Item      string     `json:"item"`
	Label     string     `json:"label"` // the item as asked; empty for the item of a one-item question, whose wording is the question's
	Responses []CrossRow `json:"responses"`
	Totals    []CrossRow `json:"totals"` // each bucket of two or more responses, then the net, last
}

type CrossRow struct {
	Label string  `json:"label"`
	Net   bool    `json:"net"` // a net, in points, not a share
	Cells []Point `json:"cells"`
}
