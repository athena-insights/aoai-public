package site

type Page struct {
	Path     string // URL path, starting and ending with "/"
	Title    string // the page's name: the browser's title, before the site's, and an inner page's heading
	NavTitle string // what the site's navigation calls the page, such as Overall; none leaves it out
	Document string // pages/<Document>.html: what the page says, and where each chart goes
	Charts   []Chart
}

type Crosstabs struct {
	Path     string // where it lives, starting and ending with "/"
	Title    string // its name: beside the wordmark, and the browser's title before the wave's dates
	Document string // pages/<Document>.html: what every page says, around its tables
	MinBase  int    // the respondents a banner column needs to be shown, unless the banner pins it; a shown column under it is marked
}

type Dimension struct {
	Heading string
	Banner  Banner
}

type Chart struct {
	ID       string   // the page's name for it: its document places it by this, and it's its anchor
	Title    string   // the editor's, one line; required
	Subtitle string   // the editor's, optional: what the lines or bars are, when the title alone doesn't say
	Form     Form     // Lines unless said otherwise
	Measures []string // lines: keys in crosswalk/measures.tsv
	Items    []string // bars and ring: items of one question, as the rollups name them
	Banner   Banner   // bars and ring: exactly one group, for a bar per item
	Axis     Axis     // lines: Absolute unless said otherwise
	Colors   Colors   // lines: Categorical unless said otherwise

	Reference string

	Dimensions []Dimension
}

type Event struct {
	Date string // year-month-day
	Name string
}

type Axis int

const (
	Absolute Axis = iota // 0 to 100%, where the level matters
	Fitted               // fitted to the data, where the trend is the point
)

type Colors int

const (
	Categorical Colors = iota

	Net
)

type Form int

const (
	Lines Form = iota

	Bars

	Ring
)

type Banner struct {
	ID     string   // names it in the build's messages
	Groups []string // keys in crosswalk/group_labels.tsv (the rollups' grp)
}
