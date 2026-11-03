package site

// Banners: all adults, and the six subgroup dimensions, each in the order the
// report's crosstabs use.
var (
	All   = Banner{ID: "all", Groups: []string{"total"}}
	BySex = Banner{ID: "sex", Groups: []string{"sex=Female", "sex=Male"}}
	// Independents are left out of every breakdown.
	ByParty = Banner{ID: "party", Groups: []string{"party=Democrat", "party=Republican"}}
	ByAge   = Banner{ID: "age",
		Groups: []string{"age=18-34", "age=35-49", "age=50-64", "age=65+"}}
	ByEducation = Banner{ID: "education",
		Groups: []string{"educ=HS or less", "educ=Some college", "educ=BA+"}}
	ByIncome = Banner{ID: "income",
		Groups: []string{"income=<50k", "income=50k to <100k", "income=100k+"}}
	ByRace = Banner{ID: "race",
		Groups: []string{"eth=White, non-Hispanic", "eth=Black, non-Hispanic", "eth=Hispanic"}}
)

// Events is the news the trend charts mark, oldest first: the days the overview reads
// the trends across. Every trend chart marks each event that falls between its first
// wave's start and its last wave's end.
var Events = []Event{
	{Date: "2026-07-21", Name: "OpenAI's Hugging Face disclosure"},
	{Date: "2026-09-08", Name: "Jacob Coxon's resignation"},
}

// Overview is every block for all adults: pages/overview.html.
var Overview = Page{Path: "/", Title: "Overall", NavTitle: "Overall", Document: "overview",
	Charts: []Chart{

		{ID: "excited-or-concerned", Title: "Excited or concerned", Subtitle: "How Americans feel about AI", Form: Bars,
			Items: []string{"q_affect:response"}, Banner: All},
		{ID: "concerned-over-time", Title: "Concerned, over time", Subtitle: "All adults: concerned at all, and very or somewhat",
			Measures: []string{"concerned", "very-concerned", "somewhat-concerned"}, Banner: All,
			Axis: Fitted, Colors: Net},
		{ID: "excited-over-time", Title: "Excited, over time", Subtitle: "All adults: excited at all, and very or somewhat",
			Measures: []string{"excited", "very-excited", "somewhat-excited"}, Banner: All,
			Axis: Fitted, Colors: Net},

		{ID: "ours-to-shape-or-inevitable", Title: "Ours to shape or inevitable", Subtitle: "Whether Americans feel agency about AI", Form: Ring,
			Items: []string{"q_agency:response"}, Banner: All},

		{ID: "what-people-are-seeing", Title: "What people are seeing", Subtitle: "Five changes AI could bring, and whether they see them yet", Form: Bars,
			Items: []string{"q_community:real_vs_fake", "q_community:losing_connections",
				"q_community:pressured", "q_community:saving_time", "q_community:better_healthcare"},
			Banner: All},

		{ID: "better-or-worse", Title: "Better or worse", Subtitle: "What AI is doing to four parts of life", Form: Bars,
			Items: []string{"q_families:job_security", "q_families:children", "q_families:outlook",
				"q_families:finances"},
			Banner: All},

		{ID: "unlikely-or-likely", Title: "Unlikely or likely", Subtitle: "Four future developments", Form: Bars,
			Items: []string{"q_futures:unintended", "q_futures:smarter", "q_futures:wmd",
				"q_futures:breakthroughs"},
			Banner: All},
		{ID: "already-happening-over-time", Title: "Already happening, over time", Subtitle: "All adults: the share who say each development is already here",
			Measures: []string{"already-unintended", "already-smarter", "already-wmd", "already-breakthroughs"},
			Banner:   All, Axis: Fitted},
		{ID: "loss-of-control-over-time", Title: "Loss-of-control, over time", Subtitle: "All adults: already happening, and likely to happen",
			Measures: []string{"already-unintended", "likely-to-happen-unintended"},
			Banner:   All, Axis: Fitted, Colors: Net},

		{ID: "how-much-of-a-priority", Title: "How much of a priority", Subtitle: "Seven issues for the government", Form: Bars,
			Items: []string{"q_priorities:jobs", "q_priorities:inflation", "q_priorities:ai_harms",
				"q_priorities:immigration", "q_priorities:healthcare", "q_priorities:crime",
				"q_priorities:climate"},
			Banner: All},
		{ID: "ai-harms-over-time", Title: "AI harms as a priority, over time", Subtitle: "All adults: a top priority, and an important one",
			Measures: []string{"top-ai-harms", "important-ai-harms"}, Banner: All,
			Axis: Fitted, Colors: Net},

		{ID: "too-much-or-too-little", Title: "Too much or too little", Subtitle: "Four areas of government action on AI", Form: Bars,
			Items: []string{"q_government:children", "q_government:environment", "q_government:workers",
				"q_government:competitiveness"},
			Banner: All},
	}}

// The dimensions, each a heading over its banner. A bar chart across groups lists
// the ones it shows; all adults has no heading, and sits on top for reference.
var (
	AllAdults = Dimension{Banner: All}
	Sex       = Dimension{Heading: "By sex", Banner: BySex}
	Party     = Dimension{Heading: "By party", Banner: ByParty}
	Age       = Dimension{Heading: "By age", Banner: ByAge}
	Education = Dimension{Heading: "By education", Banner: ByEducation}
	Income    = Dimension{Heading: "By income", Banner: ByIncome}
	Race      = Dimension{Heading: "By race and ethnicity", Banner: ByRace}
)

// ByGroup is the deeper page, pages/groups.html: a section for each group, from who
// people are to how they vote. Each section goes through the blocks, with the group's
// differences and trends chosen from the candidates and the flat results worth
// stating. A bar chart of one item runs across one dimension, with all adults on top
// for reference.
var ByGroup = Page{Path: "/groups/", Title: "Groups", NavTitle: "Groups",
	Document: "groups",
	Charts: []Chart{

		{ID: "excited-or-concerned-by-age", Title: "Excited or concerned, by age", Form: Bars,
			Items:      []string{"q_affect:response"},
			Dimensions: []Dimension{AllAdults, Age}},
		{ID: "ours-to-shape-or-inevitable-by-age", Title: "Ours to shape or inevitable, by age", Form: Bars,
			Items:      []string{"q_agency:response"},
			Dimensions: []Dimension{AllAdults, Age}},
		{ID: "saving-time-by-age", Title: "Saving time, by age", Form: Bars,
			Items:      []string{"q_community:saving_time"},
			Dimensions: []Dimension{AllAdults, Age}},
		{ID: "unlikely-or-likely-by-age", Title: "Unlikely or likely, by age", Subtitle: "Four future developments", Form: Bars,
			Items: []string{"q_futures:unintended", "q_futures:smarter", "q_futures:wmd",
				"q_futures:breakthroughs"},
			Dimensions: []Dimension{Age}},
		{ID: "ai-harms-by-age", Title: "AI harms as a priority, by age", Form: Bars,
			Items:      []string{"q_priorities:ai_harms"},
			Dimensions: []Dimension{AllAdults, Age}},
		{ID: "ai-harms-top-priority-by-age-over-time", Title: "AI harms as a top priority, by age, over time", Subtitle: "The youngest and oldest adults, 18–34 and 65 and over",
			Measures: []string{"top-ai-harms"},
			Banner:   Banner{ID: "young-old", Groups: []string{"age=18-34", "age=65+"}},
			Axis:     Fitted},

		{ID: "excited-or-concerned-by-sex", Title: "Excited or concerned, by sex", Form: Bars,
			Items:      []string{"q_affect:response"},
			Dimensions: []Dimension{AllAdults, Sex}},
		{ID: "better-or-worse-by-sex", Title: "Better or worse, by sex", Subtitle: "Four parts of life", Form: Bars,
			Items: []string{"q_families:job_security", "q_families:children", "q_families:outlook",
				"q_families:finances"},
			Dimensions: []Dimension{Sex}},

		{ID: "excited-or-concerned-by-race", Title: "Excited or concerned, by race and ethnicity", Form: Bars,
			Items:      []string{"q_affect:response"},
			Dimensions: []Dimension{AllAdults, Race}},
		{ID: "better-or-worse-by-race", Title: "Better or worse, by race and ethnicity", Subtitle: "Four parts of life", Form: Bars,
			Items: []string{"q_families:job_security", "q_families:children", "q_families:outlook",
				"q_families:finances"},
			Dimensions: []Dimension{Race}},
		{ID: "loss-of-control-by-race", Title: "Loss-of-control, by race and ethnicity", Form: Bars,
			Items:      []string{"q_futures:unintended"},
			Dimensions: []Dimension{AllAdults, Race}},
		{ID: "ai-harms-by-race", Title: "AI harms as a priority, by race and ethnicity", Form: Bars,
			Items:      []string{"q_priorities:ai_harms"},
			Dimensions: []Dimension{AllAdults, Race}},
		{ID: "too-much-or-too-little-by-race", Title: "Too much or too little, by race and ethnicity", Subtitle: "Four areas of government action on AI", Form: Bars,
			Items: []string{"q_government:children", "q_government:environment", "q_government:workers",
				"q_government:competitiveness"},
			Dimensions: []Dimension{Race}},

		{ID: "excited-or-concerned-by-education-and-income", Title: "Excited or concerned, by education and income", Form: Bars,
			Items:      []string{"q_affect:response"},
			Dimensions: []Dimension{AllAdults, Education, Income}},
		{ID: "saving-time-by-education-and-income", Title: "Saving time, by education and income", Form: Bars,
			Items:      []string{"q_community:saving_time"},
			Dimensions: []Dimension{AllAdults, Education, Income}},
		{ID: "job-security-by-education-and-income", Title: "Job security, by education and income", Form: Bars,
			Items:      []string{"q_families:job_security"},
			Dimensions: []Dimension{AllAdults, Education, Income}},
		{ID: "loss-of-control-by-education-and-income", Title: "Loss-of-control, by education and income", Form: Bars,
			Items:      []string{"q_futures:unintended"},
			Dimensions: []Dimension{AllAdults, Education, Income}},
		{ID: "already-loss-of-control-by-education-over-time", Title: "Loss-of-control: already happening, by education, over time", Subtitle: "College graduates and those with a high school education or less, with all adults",
			Measures: []string{"already-unintended"},
			Banner:   Banner{ID: "educ-ends", Groups: []string{"total", "educ=HS or less", "educ=BA+"}},
			Axis:     Fitted, Reference: "total"},
		{ID: "workers-and-jobs-by-education-and-income", Title: "Workers and jobs, by education and income", Form: Bars,
			Items:      []string{"q_government:workers"},
			Dimensions: []Dimension{AllAdults, Education, Income}},

		{ID: "concerned-by-party-over-time", Title: "Concerned, by party, over time", Subtitle: "Democrats and Republicans, with all adults",
			Measures: []string{"concerned"}, Banner: DemsReps, Axis: Fitted, Reference: "total"},
		{ID: "better-or-worse-by-party", Title: "Better or worse, by party", Subtitle: "Four parts of life", Form: Bars,
			Items: []string{"q_families:job_security", "q_families:children", "q_families:outlook",
				"q_families:finances"},
			Dimensions: []Dimension{Party}},
		{ID: "loss-of-control-by-party", Title: "Loss-of-control, by party", Form: Bars,
			Items:      []string{"q_futures:unintended"},
			Dimensions: []Dimension{AllAdults, Party}},
		{ID: "already-loss-of-control-by-party-over-time", Title: "Loss-of-control: already happening, by party, over time", Subtitle: "Democrats and Republicans, with all adults",
			Measures: []string{"already-unintended"}, Banner: DemsReps, Axis: Fitted, Reference: "total"},
		{ID: "how-much-of-a-priority-by-party", Title: "How much of a priority, by party", Subtitle: "Three issues", Form: Bars,
			Items:      []string{"q_priorities:ai_harms", "q_priorities:immigration", "q_priorities:climate"},
			Dimensions: []Dimension{Party}},
		{ID: "too-much-or-too-little-by-party", Title: "Too much or too little, by party", Subtitle: "Four areas of government action on AI", Form: Bars,
			Items: []string{"q_government:children", "q_government:environment", "q_government:workers",
				"q_government:competitiveness"},
			Dimensions: []Dimension{Party}},
	}}

// DemsReps is all adults, Democrats and Republicans: for charts of the parties over
// time, with all adults as their reference.
var DemsReps = Banner{ID: "dems-reps", Groups: []string{"total", "party=Democrat", "party=Republican"}}

// The pages around them, which place no charts: how the survey is done, with every
// wave's dates and size; each wave's report, to download; and who makes the survey.
var (
	Methodology = Page{Path: "/methodology/", Title: "Methodology", NavTitle: "Methodology", Document: "methodology"}
	Data        = Page{Path: "/data/", Title: "Data", NavTitle: "Data", Document: "data"}
	About       = Page{Path: "/about/", Title: "About", NavTitle: "About", Document: "about"}
)

// The Privacy Notice, which the footer links to and the site's navigation leaves out:
// the current site's text, word for word, at its path.
var PrivacyNotice = Page{Path: "/privacy-policy/", Title: "Privacy Notice", Document: "privacy-notice"}

// Colors, which nothing links to: the site's color system as a live page, for
// whoever works on the design.
var ColorsPage = Page{Path: "/colors/", Title: "Colors", Document: "colors"}

// Pages is every page on the site; those in the site's navigation come first, in
// its order.
var Pages = []Page{Overview, ByGroup, Methodology, Data, About, PrivacyNotice, ColorsPage}

// TrackerCrosstabs is the tracker's crosstabs, under crosstabs/ so that other
// studies' can sit beside them: pages/crosstabs.html around every wave's tables.
// The threshold is the reports' (tracker-reports/cmd/report): a column under 100
// respondents is left out unless the banner pins it, and then marked.
var TrackerCrosstabs = Crosstabs{Path: "/crosstabs/tracker/", Title: "Crosstabs", Document: "crosstabs", MinBase: 100}
