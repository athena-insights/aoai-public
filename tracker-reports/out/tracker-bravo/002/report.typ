#import "/tracker-reports/report.typ": *
#show: report.with(title: "Americans on AI — 13 July 2026")

Athena Insights surveyed 1,055 US adults from July 9-13, 2026, via NORC's AmeriSpeak Panel, a probability-based panel designed to be representative of the US household population.

This release includes the results of that survey as a whole-sample topline, then as crosstabs broken out by subgroup, followed by appendices covering the questionnaire, methodology, and unweighted sample composition.

Results are weighted to US population benchmarks; the full-sample margin of error is ±4.2 percentage points at 95% confidence, accounting for the design effect of weighting. 

In general subgroup estimates carry wider margins of error than the full sample's. This wave does not include subgroup oversamples, so subgroup precision follows population shares; we oversample subgroups on alternating biweekly waves.

Percentages are out of all respondents, with "Not sure" and "None" answers included, along with skipped and refused responses. The topline shows "No answer" only for questions where its share exceeds 2% on at least one item; elsewhere it is omitted from the table but stays in the base.

You can find the underlying data and live visuals for this and other surveys at #link("https://www.americanson.ai/")[americanson.ai].

#outline(title: [Contents], depth: 1)
#set page(margin: (x: margin, y: margin))

= Topline

These are the whole-sample results: for each question, the distribution table gives the share choosing each option, with "No answer" broken out only for questions where its share exceeds 2%.

Totals that group those options (e.g. total excited, total concerned) and the nets between them appear in the crosstabs that follow.

#heading(level: 2, "Priorities")

#stem("We are faced with many problems in this country, and resources are often limited. Given these constraints, how much of a priority should the government place on each of the following?")

#defs("Each label stands for a full item:", ("Label", "Item", ), (
  ("Jobs", "Improving the job situation", ),
  ("Inflation", "Reducing inflation", ),
  ("AI harms", "Dealing with harms from artificial intelligence (AI)", ),
  ("Immigration", "Dealing with immigration", ),
  ("Health care", "Improving health care", ),
  ("Crime", "Reducing crime", ),
  ("Climate change", "Dealing with climate change", ),
))

#note[*Response distribution (weighted)* — % of all respondents. "No answer" (2% or less) is not shown.]
#dist(("Item", "Top priority", "Important but lower priority", "Not too important", "Not a priority at all", "Not sure", ), (
  ("Jobs", p("53", 0.5258), p("36", 0.3605), p("7", 0.0722), p("1", 0.0065), p("3", 0.0306), ),
  ("Inflation", p("69", 0.6899), p("25", 0.2527), p("3", 0.0259), p("1", 0.0079), p("2", 0.0159), ),
  ("AI harms", p("40", 0.3959), p("42", 0.4169), p("10", 0.0984), p("4", 0.0406), p("4", 0.0434), ),
  ("Immigration", p("34", 0.3446), p("36", 0.3558), p("18", 0.1795), p("7", 0.0738), p("4", 0.0386), ),
  ("Health care", p("72", 0.7168), p("22", 0.2214), p("2", 0.0208), p("1", 0.0082), p("3", 0.0260), ),
  ("Crime", p("59", 0.5903), p("31", 0.3096), p("5", 0.0545), p("2", 0.0197), p("2", 0.0163), ),
  ("Climate change", p("34", 0.3441), p("33", 0.3266), p("15", 0.1456), p("13", 0.1257), p("5", 0.0470), ),
))

#heading(level: 2, "Affect")

#stem("Thinking about AI's growing role in society, which of these options comes closest to how you feel, even if none are exactly right?")

#note[*Response distribution (weighted)* — % of all respondents. "No answer" (2% or less) is not shown.]
#dist(("Response", "%", ), (
  ("Very excited", p("7", 0.0715), ),
  ("Somewhat excited", p("20", 0.1955), ),
  ("Somewhat concerned", p("37", 0.3653), ),
  ("Very concerned", p("29", 0.2944), ),
  ("None of these are close to how I feel", p("7", 0.0664), ),
))

#heading(level: 2, "Agency")

#stem("Again, thinking about AI, which statement comes closer to your view, even if neither is exactly right?")

#note[*Response distribution (weighted)* — % of all respondents. "No answer" (2% or less) is not shown.]
#dist(("Response", "%", ), (
  ("People like me can shape how much AI is part of our lives", p("15", 0.1484), ),
  ("AI is coming into our lives whether we want it or not", p("71", 0.7064), ),
  ("Neither of these are close to how I feel", p("14", 0.1412), ),
))

#heading(level: 2, "Community")

#stem("Thinking about your local community, how much are you seeing each of the following changes because of AI?")

#defs("Each label stands for a full item:", ("Label", "Item", ), (
  ("Saving time", "People are saving time on everyday tasks", ),
  ("Pressured to do more", "People are pressured to do more, faster", ),
  ("Losing connections", "People are losing connections to others", ),
  ("Real vs. fake", "People are struggling to tell what's real from what's fake", ),
  ("Better health care", "People are getting better health care", ),
))

#note[*Response distribution (weighted)* — % of all respondents. "No answer" (2% or less) is not shown.]
#dist(("Item", "Have seen", "Starting to see", "Expect to see soon", "Don't expect to see", "Not sure", ), (
  ("Saving time", p("21", 0.2093), p("27", 0.2698), p("12", 0.1237), p("16", 0.1619), p("23", 0.2271), ),
  ("Pressured to do more", p("22", 0.2169), p("25", 0.2506), p("23", 0.2257), p("10", 0.0988), p("20", 0.2011), ),
  ("Losing connections", p("31", 0.3116), p("28", 0.2814), p("15", 0.1515), p("11", 0.1090), p("14", 0.1398), ),
  ("Real vs. fake", p("58", 0.5782), p("25", 0.2544), p("8", 0.0829), p("4", 0.0368), p("4", 0.0411), ),
  ("Better health care", p("6", 0.0599), p("11", 0.1093), p("17", 0.1740), p("35", 0.3450), p("31", 0.3055), ),
))

#heading(level: 2, "Families")

#stem("Thinking about families in America today, how is AI affecting each of the following?")

#defs("Each label stands for a full item:", ("Label", "Item", ), (
  ("Jobs", "Job security", ),
  ("Future", "Outlook on the future", ),
  ("Children", "Children's well-being", ),
  ("Finances", "Household finances", ),
))

#note[*Response distribution (weighted)* — % of all respondents.]
#dist(("Item", "Making it much better", "Making it somewhat better", "Making it somewhat worse", "Making it much worse", "Having no effect", "No answer", ), (
  ("Jobs", p("3", 0.0287), p("8", 0.0844), p("42", 0.4241), p("37", 0.3678), p("8", 0.0753), p("2", 0.0197), ),
  ("Future", p("5", 0.0534), p("25", 0.2488), p("35", 0.3526), p("22", 0.2174), p("11", 0.1060), p("2", 0.0219), ),
  ("Children", p("3", 0.0303), p("12", 0.1242), p("42", 0.4215), p("28", 0.2779), p("13", 0.1262), p("2", 0.0199), ),
  ("Finances", p("4", 0.0405), p("23", 0.2346), p("25", 0.2491), p("16", 0.1551), p("29", 0.2916), p("3", 0.0290), ),
))

#heading(level: 2, "Government")

#stem("When it comes to each of the following issues, is the government doing too much, too little, or about the right amount in response?")

#defs("Each label stands for a full item:", ("Label", "Item", ), (
  ("Children", "AI's effects on children and young people", ),
  ("Environment", "AI's environmental footprint, including from data centers", ),
  ("Workers", "AI's effects on workers and jobs", ),
  ("Competitiveness", "AI's effect on American competitiveness", ),
))

#note[*Response distribution (weighted)* — % of all respondents. "No answer" (2% or less) is not shown.]
#dist(("Item", "Way too much", "Somewhat too much", "About the right amount", "Somewhat too little", "Way too little", "Not sure", ), (
  ("Children", p("12", 0.1181), p("13", 0.1335), p("12", 0.1191), p("21", 0.2084), p("24", 0.2449), p("17", 0.1687), ),
  ("Environment", p("13", 0.1312), p("10", 0.0974), p("14", 0.1355), p("14", 0.1439), p("29", 0.2878), p("20", 0.1952), ),
  ("Workers", p("10", 0.0979), p("15", 0.1539), p("16", 0.1569), p("18", 0.1759), p("23", 0.2313), p("18", 0.1775), ),
  ("Competitiveness", p("8", 0.0838), p("13", 0.1264), p("22", 0.2248), p("16", 0.1586), p("13", 0.1261), p("27", 0.2686), ),
))

#heading(level: 2, "Futures")

#stem("Thinking about the next 20 years, how likely is each of the following to happen?")

#defs("Each label stands for a full item:", ("Label", "Item", ), (
  ("Superintelligence", "AI becoming smarter than humans at most tasks", ),
  ("Loss-of-control", "AI systems behaving in ways their developers did not intend", ),
  ("Breakthroughs", "AI making major scientific and medical breakthroughs", ),
  ("WMDs", "AI being used to create weapons of mass destruction", ),
))

#note[*Response distribution (weighted)* — % of all respondents. "No answer" (2% or less) is not shown.]
#dist(("Item", "Already happening", "Likely to happen", "Unlikely to happen", "Not at all likely to happen", "Not sure", ), (
  ("Superintelligence", p("28", 0.2770), p("42", 0.4202), p("14", 0.1406), p("5", 0.0515), p("10", 0.1027), ),
  ("Loss-of-control", p("32", 0.3235), p("45", 0.4471), p("8", 0.0796), p("2", 0.0154), p("13", 0.1255), ),
  ("Breakthroughs", p("19", 0.1934), p("49", 0.4864), p("13", 0.1261), p("4", 0.0361), p("15", 0.1522), ),
  ("WMDs", p("23", 0.2269), p("47", 0.4662), p("9", 0.0891), p("3", 0.0266), p("18", 0.1821), ),
))

= Crosstabs

Here we are reporting totals and nets for response options, shown for the whole sample and then broken out by sex, party, age, race / ethnicity, education, and household income (the _banner_).

- A total is a combination of response options which indicate a common lean, for example: the total excited includes "very excited" and "somewhat excited" responses.

- A net is the gap, in percentage points, between the two leans of a question, for example: the total concerned minus the total excited.

In general subgroup estimates carry wider margins of error than the full sample's. This wave does not include subgroup oversamples, so subgroup precision follows population shares.

One table per banner dimension (Total repeated as the first column). The base row is each subgroup's full size; columns with n\<100 are marked †.

#heading(level: 2, "Priorities")

#stem("We are faced with many problems in this country, and resources are often limited. Given these constraints, how much of a priority should the government place on each of the following?")

#defs("Each label stands for a full item:", ("Label", "Item", ), (
  ("Jobs", "Improving the job situation", ),
  ("Inflation", "Reducing inflation", ),
  ("AI harms", "Dealing with harms from artificial intelligence (AI)", ),
  ("Immigration", "Dealing with immigration", ),
  ("Health care", "Improving health care", ),
  ("Crime", "Reducing crime", ),
  ("Climate change", "Dealing with climate change", ),
))

#defs("Each total combines multiple responses:", ("Total", "Responses", ), (
  ("TOTAL high priority", "\"Top priority\" or \"Important but lower priority\"", ),
  ("TOTAL lower priority", "\"Not too important\" or \"Not a priority at all\"", ),
))

#note[Cells (weighted): totals (%) and net (percentage points).]
#heading(level: 3, "By Sex")
#xtab(("Item", "Metric", ), ("Total", "Female", "Male", ), ("1055", "565", "490", ), (
  ("Jobs", "TOTAL high priority", p("89", 0.8862), p("90", 0.8994), p("87", 0.8720), ),
  ("", "TOTAL lower priority", p("8", 0.0788), p("6", 0.0589), p("10", 0.1002), ),
  ("", "NET priority", n("81", 0.8075), n("84", 0.8405), n("77", 0.7719), ),
  ("Inflation", "TOTAL high priority", p("94", 0.9427), p("96", 0.9563), p("93", 0.9280), ),
  ("", "TOTAL lower priority", p("3", 0.0338), p("3", 0.0342), p("3", 0.0333), ),
  ("", "NET priority", n("91", 0.9089), n("92", 0.9221), n("89", 0.8947), ),
  ("AI harms", "TOTAL high priority", p("81", 0.8128), p("81", 0.8103), p("82", 0.8155), ),
  ("", "TOTAL lower priority", p("14", 0.1390), p("13", 0.1346), p("14", 0.1437), ),
  ("", "NET priority", n("67", 0.6738), n("68", 0.6757), n("67", 0.6718), ),
  ("Immigration", "TOTAL high priority", p("70", 0.7004), p("71", 0.7136), p("69", 0.6862), ),
  ("", "TOTAL lower priority", p("25", 0.2533), p("22", 0.2222), p("29", 0.2868), ),
  ("", "NET priority", n("45", 0.4471), n("49", 0.4914), n("40", 0.3994), ),
  ("Health care", "TOTAL high priority", p("94", 0.9383), p("95", 0.9500), p("93", 0.9256), ),
  ("", "TOTAL lower priority", p("3", 0.0289), p("2", 0.0245), p("3", 0.0336), ),
  ("", "NET priority", n("91", 0.9093), n("93", 0.9254), n("89", 0.8920), ),
  ("Crime", "TOTAL high priority", p("90", 0.9000), p("92", 0.9197), p("88", 0.8787), ),
  ("", "TOTAL lower priority", p("7", 0.0741), p("5", 0.0518), p("10", 0.0982), ),
  ("", "NET priority", n("83", 0.8258), n("87", 0.8678), n("78", 0.7805), ),
  ("Climate change", "TOTAL high priority", p("67", 0.6707), p("70", 0.7005), p("64", 0.6386), ),
  ("", "TOTAL lower priority", p("27", 0.2713), p("24", 0.2442), p("30", 0.3006), ),
  ("", "NET priority", n("40", 0.3994), n("46", 0.4564), n("34", 0.3380), ),
))

#heading(level: 3, "By Party")
#xtab(("Item", "Metric", ), ("Total", "Dem", "Rep", "Ind", ), ("1055", "498", "365", "189", ), (
  ("Jobs", "TOTAL high priority", p("89", 0.8862), p("94", 0.9428), p("83", 0.8290), p("89", 0.8915), ),
  ("", "TOTAL lower priority", p("8", 0.0788), p("4", 0.0439), p("13", 0.1266), p("5", 0.0539), ),
  ("", "NET priority", n("81", 0.8075), n("90", 0.8990), n("70", 0.7024), n("84", 0.8376), ),
  ("Inflation", "TOTAL high priority", p("94", 0.9427), p("97", 0.9692), p("96", 0.9554), p("88", 0.8816), ),
  ("", "TOTAL lower priority", p("3", 0.0338), p("3", 0.0254), p("3", 0.0286), p("5", 0.0525), ),
  ("", "NET priority", n("91", 0.9089), n("94", 0.9438), n("93", 0.9268), n("83", 0.8291), ),
  ("AI harms", "TOTAL high priority", p("81", 0.8128), p("87", 0.8723), p("78", 0.7833), p("76", 0.7630), ),
  ("", "TOTAL lower priority", p("14", 0.1390), p("9", 0.0870), p("18", 0.1753), p("17", 0.1650), ),
  ("", "NET priority", n("67", 0.6738), n("79", 0.7853), n("61", 0.6080), n("60", 0.5980), ),
  ("Immigration", "TOTAL high priority", p("70", 0.7004), p("57", 0.5665), p("90", 0.8977), p("60", 0.5980), ),
  ("", "TOTAL lower priority", p("25", 0.2533), p("41", 0.4073), p("7", 0.0741), p("30", 0.2974), ),
  ("", "NET priority", n("45", 0.4471), n("16", 0.1592), n("82", 0.8236), n("30", 0.3006), ),
  ("Health care", "TOTAL high priority", p("94", 0.9383), p("96", 0.9586), p("94", 0.9384), p("91", 0.9081), ),
  ("", "TOTAL lower priority", p("3", 0.0289), p("1", 0.0082), p("4", 0.0429), p("4", 0.0399), ),
  ("", "NET priority", n("91", 0.9093), n("95", 0.9504), n("90", 0.8955), n("87", 0.8681), ),
  ("Crime", "TOTAL high priority", p("90", 0.9000), p("89", 0.8862), p("94", 0.9447), p("85", 0.8519), ),
  ("", "TOTAL lower priority", p("7", 0.0741), p("11", 0.1069), p("2", 0.0236), p("10", 0.1041), ),
  ("", "NET priority", n("83", 0.8258), n("78", 0.7793), n("92", 0.9211), n("75", 0.7478), ),
  ("Climate change", "TOTAL high priority", p("67", 0.6707), p("88", 0.8840), p("44", 0.4392), p("70", 0.7047), ),
  ("", "TOTAL lower priority", p("27", 0.2713), p("8", 0.0778), p("52", 0.5245), p("17", 0.1692), ),
  ("", "NET priority", n("40", 0.3994), n("81", 0.8061), n("−9", -0.0853), n("54", 0.5356), ),
))

#heading(level: 3, "By Age")
#xtab(("Item", "Metric", ), ("Total", "18–34", "35–49", "50–64", "65+", ), ("1055", "212", "235", "261", "347", ), (
  ("Jobs", "TOTAL high priority", p("89", 0.8862), p("89", 0.8892), p("88", 0.8818), p("92", 0.9169), p("86", 0.8586), ),
  ("", "TOTAL lower priority", p("8", 0.0788), p("8", 0.0810), p("9", 0.0924), p("6", 0.0604), p("8", 0.0794), ),
  ("", "NET priority", n("81", 0.8075), n("81", 0.8082), n("79", 0.7894), n("86", 0.8565), n("78", 0.7793), ),
  ("Inflation", "TOTAL high priority", p("94", 0.9427), p("90", 0.9032), p("96", 0.9618), p("95", 0.9521), p("96", 0.9611), ),
  ("", "TOTAL lower priority", p("3", 0.0338), p("5", 0.0519), p("2", 0.0163), p("3", 0.0347), p("3", 0.0293), ),
  ("", "NET priority", n("91", 0.9089), n("85", 0.8512), n("95", 0.9455), n("92", 0.9174), n("93", 0.9318), ),
  ("AI harms", "TOTAL high priority", p("81", 0.8128), p("76", 0.7604), p("86", 0.8553), p("82", 0.8162), p("83", 0.8286), ),
  ("", "TOTAL lower priority", p("14", 0.1390), p("19", 0.1905), p("10", 0.1010), p("14", 0.1361), p("12", 0.1193), ),
  ("", "NET priority", n("67", 0.6738), n("57", 0.5698), n("75", 0.7542), n("68", 0.6800), n("71", 0.7093), ),
  ("Immigration", "TOTAL high priority", p("70", 0.7004), p("58", 0.5799), p("66", 0.6611), p("73", 0.7265), p("86", 0.8581), ),
  ("", "TOTAL lower priority", p("25", 0.2533), p("38", 0.3763), p("29", 0.2864), p("22", 0.2212), p("10", 0.1045), ),
  ("", "NET priority", n("45", 0.4471), n("20", 0.2035), n("37", 0.3748), n("51", 0.5053), n("75", 0.7536), ),
  ("Health care", "TOTAL high priority", p("94", 0.9383), p("90", 0.9031), p("94", 0.9436), p("96", 0.9623), p("95", 0.9520), ),
  ("", "TOTAL lower priority", p("3", 0.0289), p("6", 0.0640), p("1", 0.0067), p("3", 0.0270), p("1", 0.0118), ),
  ("", "NET priority", n("91", 0.9093), n("84", 0.8390), n("94", 0.9370), n("94", 0.9353), n("94", 0.9402), ),
  ("Crime", "TOTAL high priority", p("90", 0.9000), p("84", 0.8407), p("89", 0.8913), p("92", 0.9194), p("96", 0.9605), ),
  ("", "TOTAL lower priority", p("7", 0.0741), p("12", 0.1241), p("8", 0.0795), p("7", 0.0687), p("1", 0.0149), ),
  ("", "NET priority", n("83", 0.8258), n("72", 0.7166), n("81", 0.8118), n("85", 0.8507), n("95", 0.9456), ),
  ("Climate change", "TOTAL high priority", p("67", 0.6707), p("71", 0.7135), p("72", 0.7209), p("63", 0.6307), p("61", 0.6068), ),
  ("", "TOTAL lower priority", p("27", 0.2713), p("20", 0.1990), p("24", 0.2390), p("31", 0.3117), p("35", 0.3518), ),
  ("", "NET priority", n("40", 0.3994), n("51", 0.5145), n("48", 0.4819), n("32", 0.3190), n("26", 0.2550), ),
))

#heading(level: 3, "By Ethnicity")
#xtab(("Item", "Metric", ), ("Total", "White", "Black†", "Hispanic", ), ("1055", "661", "92", "187", ), (
  ("Jobs", "TOTAL high priority", p("89", 0.8862), p("86", 0.8591), p("96", 0.9608), p("90", 0.8993), ),
  ("", "TOTAL lower priority", p("8", 0.0788), p("10", 0.1023), p("0", 0.0000), p("6", 0.0648), ),
  ("", "NET priority", n("81", 0.8075), n("76", 0.7568), n("96", 0.9608), n("83", 0.8345), ),
  ("Inflation", "TOTAL high priority", p("94", 0.9427), p("95", 0.9534), p("95", 0.9469), p("90", 0.9044), ),
  ("", "TOTAL lower priority", p("3", 0.0338), p("3", 0.0339), p("2", 0.0227), p("3", 0.0339), ),
  ("", "NET priority", n("91", 0.9089), n("92", 0.9195), n("92", 0.9241), n("87", 0.8705), ),
  ("AI harms", "TOTAL high priority", p("81", 0.8128), p("80", 0.7999), p("83", 0.8307), p("78", 0.7814), ),
  ("", "TOTAL lower priority", p("14", 0.1390), p("16", 0.1609), p("8", 0.0823), p("15", 0.1451), ),
  ("", "NET priority", n("67", 0.6738), n("64", 0.6390), n("75", 0.7484), n("64", 0.6363), ),
  ("Immigration", "TOTAL high priority", p("70", 0.7004), p("74", 0.7374), p("72", 0.7205), p("59", 0.5895), ),
  ("", "TOTAL lower priority", p("25", 0.2533), p("23", 0.2322), p("23", 0.2270), p("34", 0.3354), ),
  ("", "NET priority", n("45", 0.4471), n("51", 0.5052), n("49", 0.4935), n("25", 0.2541), ),
  ("Health care", "TOTAL high priority", p("94", 0.9383), p("93", 0.9275), p("98", 0.9780), p("95", 0.9458), ),
  ("", "TOTAL lower priority", p("3", 0.0289), p("3", 0.0332), p("1", 0.0110), p("2", 0.0203), ),
  ("", "NET priority", n("91", 0.9093), n("89", 0.8943), n("97", 0.9670), n("93", 0.9254), ),
  ("Crime", "TOTAL high priority", p("90", 0.9000), p("89", 0.8850), p("95", 0.9536), p("88", 0.8838), ),
  ("", "TOTAL lower priority", p("7", 0.0741), p("9", 0.0914), p("2", 0.0195), p("7", 0.0736), ),
  ("", "NET priority", n("83", 0.8258), n("79", 0.7936), n("93", 0.9341), n("81", 0.8102), ),
  ("Climate change", "TOTAL high priority", p("67", 0.6707), p("61", 0.6088), p("75", 0.7463), p("72", 0.7186), ),
  ("", "TOTAL lower priority", p("27", 0.2713), p("35", 0.3477), p("15", 0.1514), p("19", 0.1863), ),
  ("", "NET priority", n("40", 0.3994), n("26", 0.2610), n("60", 0.5950), n("53", 0.5323), ),
))

#heading(level: 3, "By Education")
#xtab(("Item", "Metric", ), ("Total", "HS or less", "Some college", "BA+", ), ("1055", "248", "406", "401", ), (
  ("Jobs", "TOTAL high priority", p("89", 0.8862), p("86", 0.8550), p("95", 0.9471), p("87", 0.8737), ),
  ("", "TOTAL lower priority", p("8", 0.0788), p("9", 0.0854), p("4", 0.0414), p("10", 0.0988), ),
  ("", "NET priority", n("81", 0.8075), n("77", 0.7696), n("91", 0.9057), n("77", 0.7749), ),
  ("Inflation", "TOTAL high priority", p("94", 0.9427), p("92", 0.9150), p("96", 0.9610), p("96", 0.9568), ),
  ("", "TOTAL lower priority", p("3", 0.0338), p("4", 0.0404), p("3", 0.0342), p("3", 0.0269), ),
  ("", "NET priority", n("91", 0.9089), n("87", 0.8746), n("93", 0.9269), n("93", 0.9299), ),
  ("AI harms", "TOTAL high priority", p("81", 0.8128), p("75", 0.7491), p("77", 0.7687), p("91", 0.9069), ),
  ("", "TOTAL lower priority", p("14", 0.1390), p("17", 0.1679), p("19", 0.1857), p("8", 0.0773), ),
  ("", "NET priority", n("67", 0.6738), n("58", 0.5812), n("58", 0.5830), n("83", 0.8297), ),
  ("Immigration", "TOTAL high priority", p("70", 0.7004), p("71", 0.7067), p("75", 0.7460), p("66", 0.6618), ),
  ("", "TOTAL lower priority", p("25", 0.2533), p("22", 0.2208), p("24", 0.2411), p("29", 0.2939), ),
  ("", "NET priority", n("45", 0.4471), n("49", 0.4859), n("50", 0.5049), n("37", 0.3679), ),
  ("Health care", "TOTAL high priority", p("94", 0.9383), p("94", 0.9407), p("95", 0.9491), p("93", 0.9282), ),
  ("", "TOTAL lower priority", p("3", 0.0289), p("3", 0.0320), p("3", 0.0290), p("3", 0.0259), ),
  ("", "NET priority", n("91", 0.9093), n("91", 0.9087), n("92", 0.9202), n("90", 0.9023), ),
  ("Crime", "TOTAL high priority", p("90", 0.9000), p("90", 0.8971), p("92", 0.9210), p("89", 0.8878), ),
  ("", "TOTAL lower priority", p("7", 0.0741), p("6", 0.0573), p("6", 0.0567), p("10", 0.1031), ),
  ("", "NET priority", n("83", 0.8258), n("84", 0.8397), n("86", 0.8643), n("78", 0.7847), ),
  ("Climate change", "TOTAL high priority", p("67", 0.6707), p("62", 0.6199), p("66", 0.6647), p("73", 0.7252), ),
  ("", "TOTAL lower priority", p("27", 0.2713), p("27", 0.2657), p("30", 0.3023), p("25", 0.2548), ),
  ("", "NET priority", n("40", 0.3994), n("35", 0.3541), n("36", 0.3624), n("47", 0.4704), ),
))

#heading(level: 3, "By Household income")
#xtab(("Item", "Metric", ), ("Total", "<50k", "50k-<100k", "100k+", ), ("1055", "355", "357", "343", ), (
  ("Jobs", "TOTAL high priority", p("89", 0.8862), p("91", 0.9142), p("89", 0.8851), p("86", 0.8552), ),
  ("", "TOTAL lower priority", p("8", 0.0788), p("5", 0.0491), p("7", 0.0739), p("12", 0.1175), ),
  ("", "NET priority", n("81", 0.8075), n("87", 0.8651), n("81", 0.8112), n("74", 0.7377), ),
  ("Inflation", "TOTAL high priority", p("94", 0.9427), p("95", 0.9529), p("95", 0.9487), p("92", 0.9249), ),
  ("", "TOTAL lower priority", p("3", 0.0338), p("3", 0.0313), p("4", 0.0362), p("3", 0.0342), ),
  ("", "NET priority", n("91", 0.9089), n("92", 0.9216), n("91", 0.9125), n("89", 0.8908), ),
  ("AI harms", "TOTAL high priority", p("81", 0.8128), p("79", 0.7919), p("79", 0.7917), p("86", 0.8576), ),
  ("", "TOTAL lower priority", p("14", 0.1390), p("13", 0.1323), p("17", 0.1690), p("12", 0.1170), ),
  ("", "NET priority", n("67", 0.6738), n("66", 0.6596), n("62", 0.6227), n("74", 0.7406), ),
  ("Immigration", "TOTAL high priority", p("70", 0.7004), p("72", 0.7161), p("76", 0.7595), p("62", 0.6240), ),
  ("", "TOTAL lower priority", p("25", 0.2533), p("22", 0.2181), p("21", 0.2089), p("34", 0.3375), ),
  ("", "NET priority", n("45", 0.4471), n("50", 0.4980), n("55", 0.5506), n("29", 0.2865), ),
  ("Health care", "TOTAL high priority", p("94", 0.9383), p("94", 0.9446), p("94", 0.9364), p("93", 0.9329), ),
  ("", "TOTAL lower priority", p("3", 0.0289), p("3", 0.0287), p("4", 0.0379), p("2", 0.0203), ),
  ("", "NET priority", n("91", 0.9093), n("92", 0.9159), n("90", 0.8984), n("91", 0.9126), ),
  ("Crime", "TOTAL high priority", p("90", 0.9000), p("91", 0.9147), p("91", 0.9148), p("87", 0.8684), ),
  ("", "TOTAL lower priority", p("7", 0.0741), p("4", 0.0381), p("6", 0.0610), p("13", 0.1285), ),
  ("", "NET priority", n("83", 0.8258), n("88", 0.8766), n("85", 0.8538), n("74", 0.7399), ),
  ("Climate change", "TOTAL high priority", p("67", 0.6707), p("70", 0.7009), p("64", 0.6402), p("67", 0.6663), ),
  ("", "TOTAL lower priority", p("27", 0.2713), p("23", 0.2271), p("32", 0.3185), p("28", 0.2755), ),
  ("", "NET priority", n("40", 0.3994), n("47", 0.4739), n("32", 0.3218), n("39", 0.3908), ),
))

#heading(level: 2, "Affect")

#stem("Thinking about AI's growing role in society, which of these options comes closest to how you feel, even if none are exactly right?")

#defs("Each total combines multiple responses:", ("Total", "Responses", ), (
  ("TOTAL excited", "\"Very excited\" or \"Somewhat excited\"", ),
  ("TOTAL concerned", "\"Somewhat concerned\" or \"Very concerned\"", ),
))

#note[Cells (weighted): totals (%) and net (percentage points).]
#heading(level: 3, "By Sex")
#xtab(("Metric", ), ("Total", "Female", "Male", ), ("1055", "565", "490", ), (
  ("TOTAL excited", p("27", 0.2670), p("25", 0.2487), p("29", 0.2868), ),
  ("TOTAL concerned", p("66", 0.6598), p("69", 0.6883), p("63", 0.6291), ),
  ("None of these", p("7", 0.0664), p("6", 0.0605), p("7", 0.0727), ),
  ("No answer", p("1", 0.0068), p("<1", 0.0026), p("1", 0.0114), ),
  ("NET concerned", n("39", 0.3927), n("44", 0.4396), n("34", 0.3423), ),
))

#heading(level: 3, "By Party")
#xtab(("Metric", ), ("Total", "Dem", "Rep", "Ind", ), ("1055", "498", "365", "189", ), (
  ("TOTAL excited", p("27", 0.2670), p("23", 0.2254), p("31", 0.3112), p("26", 0.2638), ),
  ("TOTAL concerned", p("66", 0.6598), p("72", 0.7203), p("62", 0.6223), p("62", 0.6243), ),
  ("None of these", p("7", 0.0664), p("5", 0.0530), p("6", 0.0585), p("10", 0.1015), ),
  ("No answer", p("1", 0.0068), p("<1", 0.0012), p("1", 0.0080), p("1", 0.0103), ),
  ("NET concerned", n("39", 0.3927), n("49", 0.4948), n("31", 0.3111), n("36", 0.3605), ),
))

#heading(level: 3, "By Age")
#xtab(("Metric", ), ("Total", "18–34", "35–49", "50–64", "65+", ), ("1055", "212", "235", "261", "347", ), (
  ("TOTAL excited", p("27", 0.2670), p("27", 0.2728), p("37", 0.3709), p("21", 0.2051), p("21", 0.2128), ),
  ("TOTAL concerned", p("66", 0.6598), p("66", 0.6609), p("55", 0.5456), p("71", 0.7063), p("73", 0.7309), ),
  ("None of these", p("7", 0.0664), p("7", 0.0664), p("7", 0.0656), p("8", 0.0780), p("6", 0.0564), ),
  ("No answer", p("1", 0.0068), p("0", 0.0000), p("2", 0.0179), p("1", 0.0107), p("0", 0.0000), ),
  ("NET concerned", n("39", 0.3927), n("39", 0.3881), n("17", 0.1747), n("50", 0.5012), n("52", 0.5181), ),
))

#heading(level: 3, "By Ethnicity")
#xtab(("Metric", ), ("Total", "White", "Black†", "Hispanic", ), ("1055", "661", "92", "187", ), (
  ("TOTAL excited", p("27", 0.2670), p("24", 0.2374), p("37", 0.3675), p("20", 0.2014), ),
  ("TOTAL concerned", p("66", 0.6598), p("70", 0.6972), p("52", 0.5217), p("71", 0.7105), ),
  ("None of these", p("7", 0.0664), p("6", 0.0613), p("8", 0.0838), p("8", 0.0811), ),
  ("No answer", p("1", 0.0068), p("<1", 0.0041), p("3", 0.0270), p("1", 0.0071), ),
  ("NET concerned", n("39", 0.3927), n("46", 0.4598), n("15", 0.1542), n("51", 0.5091), ),
))

#heading(level: 3, "By Education")
#xtab(("Metric", ), ("Total", "HS or less", "Some college", "BA+", ), ("1055", "248", "406", "401", ), (
  ("TOTAL excited", p("27", 0.2670), p("22", 0.2191), p("24", 0.2355), p("34", 0.3367), ),
  ("TOTAL concerned", p("66", 0.6598), p("66", 0.6577), p("70", 0.6962), p("64", 0.6359), ),
  ("None of these", p("7", 0.0664), p("11", 0.1124), p("7", 0.0665), p("2", 0.0209), ),
  ("No answer", p("1", 0.0068), p("1", 0.0107), p("<1", 0.0018), p("1", 0.0065), ),
  ("NET concerned", n("39", 0.3927), n("44", 0.4385), n("46", 0.4607), n("30", 0.2993), ),
))

#heading(level: 3, "By Household income")
#xtab(("Metric", ), ("Total", "<50k", "50k-<100k", "100k+", ), ("1055", "355", "357", "343", ), (
  ("TOTAL excited", p("27", 0.2670), p("20", 0.2048), p("26", 0.2573), p("35", 0.3481), ),
  ("TOTAL concerned", p("66", 0.6598), p("70", 0.7004), p("67", 0.6677), p("61", 0.6053), ),
  ("None of these", p("7", 0.0664), p("8", 0.0828), p("8", 0.0750), p("4", 0.0390), ),
  ("No answer", p("1", 0.0068), p("1", 0.0120), p("0", 0.0000), p("1", 0.0076), ),
  ("NET concerned", n("39", 0.3927), n("50", 0.4957), n("41", 0.4105), n("26", 0.2572), ),
))

#heading(level: 2, "Agency")

#stem("Again, thinking about AI, which statement comes closer to your view, even if neither is exactly right?")

#note[Cells (weighted): totals (%) and net (percentage points).]
#heading(level: 3, "By Sex")
#xtab(("Metric", ), ("Total", "Female", "Male", ), ("1055", "565", "490", ), (
  ("TOTAL can shape", p("15", 0.1484), p("13", 0.1271), p("17", 0.1713), ),
  ("TOTAL inevitable", p("71", 0.7064), p("73", 0.7306), p("68", 0.6804), ),
  ("Neither of these", p("14", 0.1412), p("13", 0.1347), p("15", 0.1483), ),
  ("No answer", p("<1", 0.0040), p("1", 0.0076), p("0", 0.0000), ),
  ("NET inevitable", n("56", 0.5581), n("60", 0.6036), n("51", 0.5090), ),
))

#heading(level: 3, "By Party")
#xtab(("Metric", ), ("Total", "Dem", "Rep", "Ind", ), ("1055", "498", "365", "189", ), (
  ("TOTAL can shape", p("15", 0.1484), p("15", 0.1453), p("16", 0.1628), p("13", 0.1303), ),
  ("TOTAL inevitable", p("71", 0.7064), p("74", 0.7443), p("70", 0.7001), p("66", 0.6578), ),
  ("Neither of these", p("14", 0.1412), p("10", 0.1048), p("14", 0.1351), p("21", 0.2119), ),
  ("No answer", p("<1", 0.0040), p("1", 0.0056), p("<1", 0.0020), p("0", 0.0000), ),
  ("NET inevitable", n("56", 0.5581), n("60", 0.5990), n("54", 0.5372), n("53", 0.5275), ),
))

#heading(level: 3, "By Age")
#xtab(("Metric", ), ("Total", "18–34", "35–49", "50–64", "65+", ), ("1055", "212", "235", "261", "347", ), (
  ("TOTAL can shape", p("15", 0.1484), p("19", 0.1853), p("16", 0.1570), p("9", 0.0920), p("15", 0.1485), ),
  ("TOTAL inevitable", p("71", 0.7064), p("64", 0.6413), p("71", 0.7088), p("77", 0.7687), p("72", 0.7228), ),
  ("Neither of these", p("14", 0.1412), p("17", 0.1734), p("13", 0.1256), p("14", 0.1384), p("12", 0.1219), ),
  ("No answer", p("<1", 0.0040), p("0", 0.0000), p("1", 0.0085), p("<1", 0.0009), p("1", 0.0068), ),
  ("NET inevitable", n("56", 0.5581), n("46", 0.4560), n("55", 0.5518), n("68", 0.6767), n("57", 0.5743), ),
))

#heading(level: 3, "By Ethnicity")
#xtab(("Metric", ), ("Total", "White", "Black†", "Hispanic", ), ("1055", "661", "92", "187", ), (
  ("TOTAL can shape", p("15", 0.1484), p("17", 0.1654), p("17", 0.1697), p("11", 0.1069), ),
  ("TOTAL inevitable", p("71", 0.7064), p("72", 0.7212), p("69", 0.6933), p("63", 0.6307), ),
  ("Neither of these", p("14", 0.1412), p("11", 0.1112), p("13", 0.1250), p("26", 0.2553), ),
  ("No answer", p("<1", 0.0040), p("<1", 0.0022), p("1", 0.0120), p("1", 0.0071), ),
  ("NET inevitable", n("56", 0.5581), n("56", 0.5558), n("52", 0.5236), n("52", 0.5238), ),
))

#heading(level: 3, "By Education")
#xtab(("Metric", ), ("Total", "HS or less", "Some college", "BA+", ), ("1055", "248", "406", "401", ), (
  ("TOTAL can shape", p("15", 0.1484), p("10", 0.1009), p("17", 0.1664), p("18", 0.1822), ),
  ("TOTAL inevitable", p("71", 0.7064), p("68", 0.6817), p("71", 0.7087), p("73", 0.7292), ),
  ("Neither of these", p("14", 0.1412), p("21", 0.2103), p("12", 0.1215), p("9", 0.0872), ),
  ("No answer", p("<1", 0.0040), p("1", 0.0070), p("<1", 0.0034), p("<1", 0.0014), ),
  ("NET inevitable", n("56", 0.5581), n("58", 0.5807), n("54", 0.5423), n("55", 0.5470), ),
))

#heading(level: 3, "By Household income")
#xtab(("Metric", ), ("Total", "<50k", "50k-<100k", "100k+", ), ("1055", "355", "357", "343", ), (
  ("TOTAL can shape", p("15", 0.1484), p("12", 0.1178), p("17", 0.1723), p("16", 0.1598), ),
  ("TOTAL inevitable", p("71", 0.7064), p("70", 0.6994), p("70", 0.7010), p("72", 0.7198), ),
  ("Neither of these", p("14", 0.1412), p("17", 0.1725), p("13", 0.1260), p("12", 0.1204), ),
  ("No answer", p("<1", 0.0040), p("1", 0.0103), p("<1", 0.0006), p("0", 0.0000), ),
  ("NET inevitable", n("56", 0.5581), n("58", 0.5817), n("53", 0.5286), n("56", 0.5601), ),
))

#heading(level: 2, "Community")

#stem("Thinking about your local community, how much are you seeing each of the following changes because of AI?")

#defs("Each label stands for a full item:", ("Label", "Item", ), (
  ("Saving time", "People are saving time on everyday tasks", ),
  ("Pressured to do more", "People are pressured to do more, faster", ),
  ("Losing connections", "People are losing connections to others", ),
  ("Real vs. fake", "People are struggling to tell what's real from what's fake", ),
  ("Better health care", "People are getting better health care", ),
))

#defs("Each total combines multiple responses:", ("Total", "Responses", ), (
  ("TOTAL realized", "\"Have seen\" or \"Starting to see\"", ),
  ("TOTAL not yet", "\"Expect to see soon\" or \"Don't expect to see\"", ),
))

#note[Cells (weighted): totals (%) and net (percentage points).]
#heading(level: 3, "By Sex")
#xtab(("Item", "Metric", ), ("Total", "Female", "Male", ), ("1055", "565", "490", ), (
  ("Saving time", "TOTAL realized", p("48", 0.4792), p("48", 0.4811), p("48", 0.4771), ),
  ("", "TOTAL not yet", p("29", 0.2856), p("28", 0.2790), p("29", 0.2927), ),
  ("", "NET realized", n("19", 0.1936), n("20", 0.2021), n("18", 0.1844), ),
  ("Pressured to do more", "TOTAL realized", p("47", 0.4675), p("48", 0.4833), p("45", 0.4505), ),
  ("", "TOTAL not yet", p("32", 0.3244), p("30", 0.2950), p("36", 0.3561), ),
  ("", "NET realized", n("14", 0.1431), n("19", 0.1883), n("9", 0.0944), ),
  ("Losing connections", "TOTAL realized", p("59", 0.5931), p("62", 0.6211), p("56", 0.5628), ),
  ("", "TOTAL not yet", p("26", 0.2605), p("23", 0.2276), p("30", 0.2959), ),
  ("", "NET realized", n("33", 0.3326), n("39", 0.3935), n("27", 0.2670), ),
  ("Real vs. fake", "TOTAL realized", p("83", 0.8326), p("84", 0.8367), p("83", 0.8281), ),
  ("", "TOTAL not yet", p("12", 0.1197), p("10", 0.1040), p("14", 0.1366), ),
  ("", "NET realized", n("71", 0.7129), n("73", 0.7327), n("69", 0.6916), ),
  ("Better health care", "TOTAL realized", p("17", 0.1692), p("16", 0.1557), p("18", 0.1838), ),
  ("", "TOTAL not yet", p("52", 0.5191), p("53", 0.5259), p("51", 0.5118), ),
  ("", "NET realized", n("−35", -0.3499), n("−37", -0.3702), n("−33", -0.3280), ),
))

#heading(level: 3, "By Party")
#xtab(("Item", "Metric", ), ("Total", "Dem", "Rep", "Ind", ), ("1055", "498", "365", "189", ), (
  ("Saving time", "TOTAL realized", p("48", 0.4792), p("48", 0.4776), p("49", 0.4898), p("47", 0.4667), ),
  ("", "TOTAL not yet", p("29", 0.2856), p("29", 0.2895), p("30", 0.3011), p("25", 0.2543), ),
  ("", "NET realized", n("19", 0.1936), n("19", 0.1881), n("19", 0.1886), n("21", 0.2124), ),
  ("Pressured to do more", "TOTAL realized", p("47", 0.4675), p("52", 0.5230), p("44", 0.4366), p("43", 0.4299), ),
  ("", "TOTAL not yet", p("32", 0.3244), p("31", 0.3093), p("33", 0.3317), p("34", 0.3388), ),
  ("", "NET realized", n("14", 0.1431), n("21", 0.2137), n("10", 0.1049), n("9", 0.0911), ),
  ("Losing connections", "TOTAL realized", p("59", 0.5931), p("64", 0.6427), p("58", 0.5847), p("53", 0.5280), ),
  ("", "TOTAL not yet", p("26", 0.2605), p("25", 0.2535), p("25", 0.2498), p("29", 0.2907), ),
  ("", "NET realized", n("33", 0.3326), n("39", 0.3892), n("33", 0.3348), n("24", 0.2373), ),
  ("Real vs. fake", "TOTAL realized", p("83", 0.8326), p("83", 0.8269), p("88", 0.8805), p("77", 0.7666), ),
  ("", "TOTAL not yet", p("12", 0.1197), p("13", 0.1327), p("9", 0.0942), p("14", 0.1400), ),
  ("", "NET realized", n("71", 0.7129), n("69", 0.6942), n("79", 0.7863), n("63", 0.6266), ),
  ("Better health care", "TOTAL realized", p("17", 0.1692), p("13", 0.1319), p("23", 0.2266), p("14", 0.1366), ),
  ("", "TOTAL not yet", p("52", 0.5191), p("61", 0.6114), p("46", 0.4646), p("46", 0.4587), ),
  ("", "NET realized", n("−35", -0.3499), n("−48", -0.4795), n("−24", -0.2380), n("−32", -0.3222), ),
))

#heading(level: 3, "By Age")
#xtab(("Item", "Metric", ), ("Total", "18–34", "35–49", "50–64", "65+", ), ("1055", "212", "235", "261", "347", ), (
  ("Saving time", "TOTAL realized", p("48", 0.4792), p("56", 0.5638), p("57", 0.5661), p("44", 0.4427), p("33", 0.3253), ),
  ("", "TOTAL not yet", p("29", 0.2856), p("28", 0.2815), p("24", 0.2409), p("25", 0.2473), p("37", 0.3714), ),
  ("", "NET realized", n("19", 0.1936), n("28", 0.2823), n("33", 0.3252), n("20", 0.1954), n("−5", -0.0462), ),
  ("Pressured to do more", "TOTAL realized", p("47", 0.4675), p("46", 0.4590), p("58", 0.5799), p("48", 0.4839), p("35", 0.3485), ),
  ("", "TOTAL not yet", p("32", 0.3244), p("33", 0.3330), p("29", 0.2895), p("31", 0.3057), p("37", 0.3672), ),
  ("", "NET realized", n("14", 0.1431), n("13", 0.1260), n("29", 0.2904), n("18", 0.1782), n("−2", -0.0187), ),
  ("Losing connections", "TOTAL realized", p("59", 0.5931), p("57", 0.5712), p("69", 0.6856), p("61", 0.6070), p("51", 0.5122), ),
  ("", "TOTAL not yet", p("26", 0.2605), p("27", 0.2742), p("22", 0.2155), p("25", 0.2505), p("30", 0.2991), ),
  ("", "NET realized", n("33", 0.3326), n("30", 0.2970), n("47", 0.4701), n("36", 0.3564), n("21", 0.2131), ),
  ("Real vs. fake", "TOTAL realized", p("83", 0.8326), p("80", 0.8016), p("87", 0.8738), p("85", 0.8521), p("81", 0.8093), ),
  ("", "TOTAL not yet", p("12", 0.1197), p("14", 0.1437), p("11", 0.1082), p("10", 0.0983), p("12", 0.1229), ),
  ("", "NET realized", n("71", 0.7129), n("66", 0.6578), n("77", 0.7656), n("75", 0.7538), n("69", 0.6864), ),
  ("Better health care", "TOTAL realized", p("17", 0.1692), p("14", 0.1361), p("19", 0.1908), p("14", 0.1414), p("21", 0.2123), ),
  ("", "TOTAL not yet", p("52", 0.5191), p("59", 0.5873), p("47", 0.4663), p("55", 0.5523), p("46", 0.4611), ),
  ("", "NET realized", n("−35", -0.3499), n("−45", -0.4512), n("−28", -0.2755), n("−41", -0.4109), n("−25", -0.2489), ),
))

#heading(level: 3, "By Ethnicity")
#xtab(("Item", "Metric", ), ("Total", "White", "Black†", "Hispanic", ), ("1055", "661", "92", "187", ), (
  ("Saving time", "TOTAL realized", p("48", 0.4792), p("46", 0.4567), p("53", 0.5262), p("46", 0.4590), ),
  ("", "TOTAL not yet", p("29", 0.2856), p("30", 0.3006), p("19", 0.1947), p("36", 0.3613), ),
  ("", "NET realized", n("19", 0.1936), n("16", 0.1562), n("33", 0.3315), n("10", 0.0978), ),
  ("Pressured to do more", "TOTAL realized", p("47", 0.4675), p("46", 0.4596), p("53", 0.5310), p("44", 0.4396), ),
  ("", "TOTAL not yet", p("32", 0.3244), p("30", 0.3029), p("28", 0.2780), p("37", 0.3692), ),
  ("", "NET realized", n("14", 0.1431), n("16", 0.1567), n("25", 0.2530), n("7", 0.0704), ),
  ("Losing connections", "TOTAL realized", p("59", 0.5931), p("59", 0.5942), p("69", 0.6938), p("56", 0.5610), ),
  ("", "TOTAL not yet", p("26", 0.2605), p("26", 0.2631), p("15", 0.1515), p("27", 0.2683), ),
  ("", "NET realized", n("33", 0.3326), n("33", 0.3311), n("54", 0.5423), n("29", 0.2927), ),
  ("Real vs. fake", "TOTAL realized", p("83", 0.8326), p("89", 0.8946), p("77", 0.7698), p("68", 0.6846), ),
  ("", "TOTAL not yet", p("12", 0.1197), p("8", 0.0772), p("17", 0.1742), p("20", 0.2008), ),
  ("", "NET realized", n("71", 0.7129), n("82", 0.8175), n("60", 0.5956), n("48", 0.4838), ),
  ("Better health care", "TOTAL realized", p("17", 0.1692), p("15", 0.1514), p("23", 0.2275), p("15", 0.1510), ),
  ("", "TOTAL not yet", p("52", 0.5191), p("51", 0.5139), p("49", 0.4934), p("56", 0.5581), ),
  ("", "NET realized", n("−35", -0.3499), n("−36", -0.3625), n("−27", -0.2659), n("−41", -0.4071), ),
))

#heading(level: 3, "By Education")
#xtab(("Item", "Metric", ), ("Total", "HS or less", "Some college", "BA+", ), ("1055", "248", "406", "401", ), (
  ("Saving time", "TOTAL realized", p("48", 0.4792), p("41", 0.4090), p("44", 0.4381), p("58", 0.5774), ),
  ("", "TOTAL not yet", p("29", 0.2856), p("30", 0.3029), p("34", 0.3362), p("23", 0.2326), ),
  ("", "NET realized", n("19", 0.1936), n("11", 0.1061), n("10", 0.1020), n("34", 0.3448), ),
  ("Pressured to do more", "TOTAL realized", p("47", 0.4675), p("42", 0.4214), p("45", 0.4531), p("52", 0.5232), ),
  ("", "TOTAL not yet", p("32", 0.3244), p("32", 0.3159), p("37", 0.3672), p("30", 0.3024), ),
  ("", "NET realized", n("14", 0.1431), n("11", 0.1055), n("9", 0.0859), n("22", 0.2208), ),
  ("Losing connections", "TOTAL realized", p("59", 0.5931), p("56", 0.5576), p("59", 0.5940), p("63", 0.6273), ),
  ("", "TOTAL not yet", p("26", 0.2605), p("25", 0.2485), p("30", 0.2966), p("25", 0.2466), ),
  ("", "NET realized", n("33", 0.3326), n("31", 0.3092), n("30", 0.2974), n("38", 0.3807), ),
  ("Real vs. fake", "TOTAL realized", p("83", 0.8326), p("78", 0.7799), p("86", 0.8578), p("87", 0.8665), ),
  ("", "TOTAL not yet", p("12", 0.1197), p("14", 0.1400), p("11", 0.1081), p("11", 0.1079), ),
  ("", "NET realized", n("71", 0.7129), n("64", 0.6399), n("75", 0.7497), n("76", 0.7586), ),
  ("Better health care", "TOTAL realized", p("17", 0.1692), p("16", 0.1569), p("15", 0.1541), p("19", 0.1921), ),
  ("", "TOTAL not yet", p("52", 0.5191), p("50", 0.4976), p("55", 0.5461), p("52", 0.5211), ),
  ("", "NET realized", n("−35", -0.3499), n("−34", -0.3407), n("−39", -0.3920), n("−33", -0.3290), ),
))

#heading(level: 3, "By Household income")
#xtab(("Item", "Metric", ), ("Total", "<50k", "50k-<100k", "100k+", ), ("1055", "355", "357", "343", ), (
  ("Saving time", "TOTAL realized", p("48", 0.4792), p("37", 0.3703), p("53", 0.5321), p("55", 0.5517), ),
  ("", "TOTAL not yet", p("29", 0.2856), p("34", 0.3373), p("26", 0.2629), p("25", 0.2488), ),
  ("", "NET realized", n("19", 0.1936), n("3", 0.0330), n("27", 0.2691), n("30", 0.3029), ),
  ("Pressured to do more", "TOTAL realized", p("47", 0.4675), p("44", 0.4405), p("50", 0.5014), p("47", 0.4650), ),
  ("", "TOTAL not yet", p("32", 0.3244), p("31", 0.3105), p("31", 0.3136), p("35", 0.3511), ),
  ("", "NET realized", n("14", 0.1431), n("13", 0.1300), n("19", 0.1878), n("11", 0.1139), ),
  ("Losing connections", "TOTAL realized", p("59", 0.5931), p("60", 0.6008), p("60", 0.6021), p("58", 0.5753), ),
  ("", "TOTAL not yet", p("26", 0.2605), p("23", 0.2335), p("25", 0.2510), p("30", 0.3007), ),
  ("", "NET realized", n("33", 0.3326), n("37", 0.3672), n("35", 0.3511), n("27", 0.2746), ),
  ("Real vs. fake", "TOTAL realized", p("83", 0.8326), p("78", 0.7822), p("88", 0.8808), p("84", 0.8427), ),
  ("", "TOTAL not yet", p("12", 0.1197), p("14", 0.1444), p("9", 0.0912), p("12", 0.1195), ),
  ("", "NET realized", n("71", 0.7129), n("64", 0.6378), n("79", 0.7896), n("72", 0.7232), ),
  ("Better health care", "TOTAL realized", p("17", 0.1692), p("16", 0.1570), p("18", 0.1836), p("17", 0.1690), ),
  ("", "TOTAL not yet", p("52", 0.5191), p("52", 0.5193), p("52", 0.5155), p("52", 0.5224), ),
  ("", "NET realized", n("−35", -0.3499), n("−36", -0.3623), n("−33", -0.3319), n("−35", -0.3534), ),
))

#heading(level: 2, "Families")

#stem("Thinking about families in America today, how is AI affecting each of the following?")

#defs("Each label stands for a full item:", ("Label", "Item", ), (
  ("Jobs", "Job security", ),
  ("Future", "Outlook on the future", ),
  ("Children", "Children's well-being", ),
  ("Finances", "Household finances", ),
))

#defs("Each total combines multiple responses:", ("Total", "Responses", ), (
  ("TOTAL better", "\"Making it much better\" or \"Making it somewhat better\"", ),
  ("TOTAL worse", "\"Making it somewhat worse\" or \"Making it much worse\"", ),
))

#note[Cells (weighted): totals (%) and net (percentage points).]
#heading(level: 3, "By Sex")
#xtab(("Item", "Metric", ), ("Total", "Female", "Male", ), ("1055", "565", "490", ), (
  ("Jobs", "TOTAL better", p("11", 0.1131), p("13", 0.1262), p("10", 0.0989), ),
  ("", "TOTAL worse", p("79", 0.7919), p("79", 0.7877), p("80", 0.7965), ),
  ("", "NET worse", n("68", 0.6788), n("66", 0.6615), n("70", 0.6975), ),
  ("Future", "TOTAL better", p("30", 0.3021), p("29", 0.2873), p("32", 0.3182), ),
  ("", "TOTAL worse", p("57", 0.5700), p("58", 0.5837), p("56", 0.5552), ),
  ("", "NET worse", n("27", 0.2678), n("30", 0.2964), n("24", 0.2371), ),
  ("Children", "TOTAL better", p("15", 0.1545), p("15", 0.1471), p("16", 0.1625), ),
  ("", "TOTAL worse", p("70", 0.6994), p("72", 0.7204), p("68", 0.6768), ),
  ("", "NET worse", n("54", 0.5449), n("57", 0.5733), n("51", 0.5142), ),
  ("Finances", "TOTAL better", p("28", 0.2751), p("25", 0.2478), p("30", 0.3046), ),
  ("", "TOTAL worse", p("40", 0.4042), p("43", 0.4261), p("38", 0.3806), ),
  ("", "NET worse", n("13", 0.1291), n("18", 0.1784), n("8", 0.0760), ),
))

#heading(level: 3, "By Party")
#xtab(("Item", "Metric", ), ("Total", "Dem", "Rep", "Ind", ), ("1055", "498", "365", "189", ), (
  ("Jobs", "TOTAL better", p("11", 0.1131), p("7", 0.0727), p("15", 0.1451), p("13", 0.1271), ),
  ("", "TOTAL worse", p("79", 0.7919), p("85", 0.8532), p("75", 0.7525), p("76", 0.7590), ),
  ("", "NET worse", n("68", 0.6788), n("78", 0.7805), n("61", 0.6074), n("63", 0.6319), ),
  ("Future", "TOTAL better", p("30", 0.3021), p("25", 0.2525), p("36", 0.3595), p("29", 0.2905), ),
  ("", "TOTAL worse", p("57", 0.5700), p("67", 0.6687), p("49", 0.4857), p("55", 0.5492), ),
  ("", "NET worse", n("27", 0.2678), n("42", 0.4162), n("13", 0.1262), n("26", 0.2586), ),
  ("Children", "TOTAL better", p("15", 0.1545), p("16", 0.1561), p("16", 0.1587), p("15", 0.1458), ),
  ("", "TOTAL worse", p("70", 0.6994), p("72", 0.7233), p("67", 0.6656), p("72", 0.7184), ),
  ("", "NET worse", n("54", 0.5449), n("57", 0.5672), n("51", 0.5070), n("57", 0.5727), ),
  ("Finances", "TOTAL better", p("28", 0.2751), p("22", 0.2204), p("30", 0.2996), p("33", 0.3259), ),
  ("", "TOTAL worse", p("40", 0.4042), p("47", 0.4717), p("36", 0.3553), p("38", 0.3754), ),
  ("", "NET worse", n("13", 0.1291), n("25", 0.2513), n("6", 0.0558), n("5", 0.0495), ),
))

#heading(level: 3, "By Age")
#xtab(("Item", "Metric", ), ("Total", "18–34", "35–49", "50–64", "65+", ), ("1055", "212", "235", "261", "347", ), (
  ("Jobs", "TOTAL better", p("11", 0.1131), p("7", 0.0701), p("17", 0.1711), p("8", 0.0793), p("14", 0.1365), ),
  ("", "TOTAL worse", p("79", 0.7919), p("82", 0.8203), p("74", 0.7362), p("85", 0.8478), p("76", 0.7628), ),
  ("", "NET worse", n("68", 0.6788), n("75", 0.7502), n("57", 0.5651), n("77", 0.7685), n("63", 0.6264), ),
  ("Future", "TOTAL better", p("30", 0.3021), p("18", 0.1835), p("32", 0.3210), p("31", 0.3143), p("41", 0.4117), ),
  ("", "TOTAL worse", p("57", 0.5700), p("60", 0.6018), p("59", 0.5872), p("61", 0.6060), p("48", 0.4816), ),
  ("", "NET worse", n("27", 0.2678), n("42", 0.4183), n("27", 0.2662), n("29", 0.2917), n("7", 0.0699), ),
  ("Children", "TOTAL better", p("15", 0.1545), p("9", 0.0947), p("18", 0.1822), p("16", 0.1579), p("19", 0.1938), ),
  ("", "TOTAL worse", p("70", 0.6994), p("76", 0.7623), p("70", 0.7011), p("67", 0.6738), p("65", 0.6473), ),
  ("", "NET worse", n("54", 0.5449), n("67", 0.6676), n("52", 0.5189), n("52", 0.5159), n("45", 0.4535), ),
  ("Finances", "TOTAL better", p("28", 0.2751), p("27", 0.2744), p("36", 0.3597), p("22", 0.2238), p("24", 0.2381), ),
  ("", "TOTAL worse", p("40", 0.4042), p("37", 0.3733), p("38", 0.3764), p("47", 0.4728), p("41", 0.4051), ),
  ("", "NET worse", n("13", 0.1291), n("10", 0.0989), n("2", 0.0167), n("25", 0.2490), n("17", 0.1669), ),
))

#heading(level: 3, "By Ethnicity")
#xtab(("Item", "Metric", ), ("Total", "White", "Black†", "Hispanic", ), ("1055", "661", "92", "187", ), (
  ("Jobs", "TOTAL better", p("11", 0.1131), p("8", 0.0831), p("15", 0.1460), p("13", 0.1320), ),
  ("", "TOTAL worse", p("79", 0.7919), p("85", 0.8458), p("64", 0.6422), p("77", 0.7668), ),
  ("", "NET worse", n("68", 0.6788), n("76", 0.7627), n("50", 0.4962), n("63", 0.6348), ),
  ("Future", "TOTAL better", p("30", 0.3021), p("26", 0.2645), p("34", 0.3358), p("28", 0.2789), ),
  ("", "TOTAL worse", p("57", 0.5700), p("63", 0.6275), p("48", 0.4772), p("53", 0.5341), ),
  ("", "NET worse", n("27", 0.2678), n("36", 0.3630), n("14", 0.1414), n("26", 0.2551), ),
  ("Children", "TOTAL better", p("15", 0.1545), p("14", 0.1388), p("19", 0.1900), p("14", 0.1414), ),
  ("", "TOTAL worse", p("70", 0.6994), p("74", 0.7375), p("56", 0.5562), p("70", 0.7044), ),
  ("", "NET worse", n("54", 0.5449), n("60", 0.5987), n("37", 0.3662), n("56", 0.5630), ),
  ("Finances", "TOTAL better", p("28", 0.2751), p("24", 0.2351), p("34", 0.3351), p("31", 0.3099), ),
  ("", "TOTAL worse", p("40", 0.4042), p("45", 0.4501), p("27", 0.2685), p("40", 0.3954), ),
  ("", "NET worse", n("13", 0.1291), n("22", 0.2150), n("−7", -0.0666), n("9", 0.0855), ),
))

#heading(level: 3, "By Education")
#xtab(("Item", "Metric", ), ("Total", "HS or less", "Some college", "BA+", ), ("1055", "248", "406", "401", ), (
  ("Jobs", "TOTAL better", p("11", 0.1131), p("11", 0.1143), p("13", 0.1292), p("10", 0.1005), ),
  ("", "TOTAL worse", p("79", 0.7919), p("74", 0.7381), p("79", 0.7938), p("84", 0.8436), ),
  ("", "NET worse", n("68", 0.6788), n("62", 0.6238), n("66", 0.6646), n("74", 0.7431), ),
  ("Future", "TOTAL better", p("30", 0.3021), p("27", 0.2669), p("29", 0.2927), p("34", 0.3436), ),
  ("", "TOTAL worse", p("57", 0.5700), p("53", 0.5270), p("62", 0.6169), p("58", 0.5790), ),
  ("", "NET worse", n("27", 0.2678), n("26", 0.2601), n("32", 0.3242), n("24", 0.2354), ),
  ("Children", "TOTAL better", p("15", 0.1545), p("16", 0.1571), p("16", 0.1600), p("15", 0.1481), ),
  ("", "TOTAL worse", p("70", 0.6994), p("65", 0.6493), p("70", 0.7038), p("75", 0.7456), ),
  ("", "NET worse", n("54", 0.5449), n("49", 0.4923), n("54", 0.5438), n("60", 0.5975), ),
  ("Finances", "TOTAL better", p("28", 0.2751), p("22", 0.2190), p("30", 0.2951), p("32", 0.3162), ),
  ("", "TOTAL worse", p("40", 0.4042), p("42", 0.4190), p("46", 0.4579), p("35", 0.3515), ),
  ("", "NET worse", n("13", 0.1291), n("20", 0.2000), n("16", 0.1628), n("4", 0.0353), ),
))

#heading(level: 3, "By Household income")
#xtab(("Item", "Metric", ), ("Total", "<50k", "50k-<100k", "100k+", ), ("1055", "355", "357", "343", ), (
  ("Jobs", "TOTAL better", p("11", 0.1131), p("12", 0.1239), p("11", 0.1058), p("11", 0.1080), ),
  ("", "TOTAL worse", p("79", 0.7919), p("76", 0.7621), p("80", 0.8003), p("82", 0.8178), ),
  ("", "NET worse", n("68", 0.6788), n("64", 0.6382), n("69", 0.6946), n("71", 0.7098), ),
  ("Future", "TOTAL better", p("30", 0.3021), p("25", 0.2460), p("30", 0.3027), p("37", 0.3660), ),
  ("", "TOTAL worse", p("57", 0.5700), p("59", 0.5881), p("59", 0.5855), p("53", 0.5338), ),
  ("", "NET worse", n("27", 0.2678), n("34", 0.3421), n("28", 0.2828), n("17", 0.1679), ),
  ("Children", "TOTAL better", p("15", 0.1545), p("15", 0.1544), p("15", 0.1468), p("16", 0.1622), ),
  ("", "TOTAL worse", p("70", 0.6994), p("68", 0.6800), p("69", 0.6906), p("73", 0.7303), ),
  ("", "NET worse", n("54", 0.5449), n("53", 0.5256), n("54", 0.5438), n("57", 0.5680), ),
  ("Finances", "TOTAL better", p("28", 0.2751), p("24", 0.2430), p("26", 0.2598), p("33", 0.3272), ),
  ("", "TOTAL worse", p("40", 0.4042), p("41", 0.4112), p("45", 0.4545), p("35", 0.3465), ),
  ("", "NET worse", n("13", 0.1291), n("17", 0.1682), n("19", 0.1947), n("2", 0.0194), ),
))

#heading(level: 2, "Government")

#stem("When it comes to each of the following issues, is the government doing too much, too little, or about the right amount in response?")

#defs("Each label stands for a full item:", ("Label", "Item", ), (
  ("Children", "AI's effects on children and young people", ),
  ("Environment", "AI's environmental footprint, including from data centers", ),
  ("Workers", "AI's effects on workers and jobs", ),
  ("Competitiveness", "AI's effect on American competitiveness", ),
))

#defs("Each total combines multiple responses:", ("Total", "Responses", ), (
  ("TOTAL too much", "\"Way too much\" or \"Somewhat too much\"", ),
  ("TOTAL too little", "\"Somewhat too little\" or \"Way too little\"", ),
))

#note[Cells (weighted): totals (%) and net (percentage points).]
#heading(level: 3, "By Sex")
#xtab(("Item", "Metric", ), ("Total", "Female", "Male", ), ("1055", "565", "490", ), (
  ("Children", "TOTAL too much", p("25", 0.2516), p("29", 0.2941), p("21", 0.2058), ),
  ("", "TOTAL too little", p("45", 0.4533), p("41", 0.4050), p("51", 0.5055), ),
  ("", "NET too little", n("20", 0.2018), n("11", 0.1109), n("30", 0.2997), ),
  ("Environment", "TOTAL too much", p("23", 0.2286), p("25", 0.2483), p("21", 0.2073), ),
  ("", "TOTAL too little", p("43", 0.4317), p("38", 0.3753), p("49", 0.4925), ),
  ("", "NET too little", n("20", 0.2031), n("13", 0.1270), n("29", 0.2852), ),
  ("Workers", "TOTAL too much", p("25", 0.2518), p("27", 0.2682), p("23", 0.2341), ),
  ("", "TOTAL too little", p("41", 0.4072), p("37", 0.3745), p("44", 0.4425), ),
  ("", "NET too little", n("16", 0.1554), n("11", 0.1063), n("21", 0.2084), ),
  ("Competitiveness", "TOTAL too much", p("21", 0.2102), p("23", 0.2318), p("19", 0.1870), ),
  ("", "TOTAL too little", p("28", 0.2847), p("25", 0.2486), p("32", 0.3236), ),
  ("", "NET too little", n("7", 0.0745), n("2", 0.0168), n("14", 0.1366), ),
))

#heading(level: 3, "By Party")
#xtab(("Item", "Metric", ), ("Total", "Dem", "Rep", "Ind", ), ("1055", "498", "365", "189", ), (
  ("Children", "TOTAL too much", p("25", 0.2516), p("25", 0.2549), p("23", 0.2254), p("29", 0.2906), ),
  ("", "TOTAL too little", p("45", 0.4533), p("56", 0.5640), p("41", 0.4114), p("34", 0.3427), ),
  ("", "NET too little", n("20", 0.2018), n("31", 0.3091), n("19", 0.1860), n("5", 0.0521), ),
  ("Environment", "TOTAL too much", p("23", 0.2286), p("23", 0.2289), p("21", 0.2063), p("27", 0.2659), ),
  ("", "TOTAL too little", p("43", 0.4317), p("57", 0.5670), p("34", 0.3393), p("36", 0.3634), ),
  ("", "NET too little", n("20", 0.2031), n("34", 0.3382), n("13", 0.1330), n("10", 0.0976), ),
  ("Workers", "TOTAL too much", p("25", 0.2518), p("26", 0.2558), p("22", 0.2184), p("30", 0.3016), ),
  ("", "TOTAL too little", p("41", 0.4072), p("53", 0.5349), p("34", 0.3411), p("31", 0.3076), ),
  ("", "NET too little", n("16", 0.1554), n("28", 0.2791), n("12", 0.1227), n("1", 0.0060), ),
  ("Competitiveness", "TOTAL too much", p("21", 0.2102), p("18", 0.1761), p("21", 0.2075), p("27", 0.2717), ),
  ("", "TOTAL too little", p("28", 0.2847), p("36", 0.3634), p("23", 0.2292), p("25", 0.2478), ),
  ("", "NET too little", n("7", 0.0745), n("19", 0.1873), n("2", 0.0217), n("−2", -0.0239), ),
))

#heading(level: 3, "By Age")
#xtab(("Item", "Metric", ), ("Total", "18–34", "35–49", "50–64", "65+", ), ("1055", "212", "235", "261", "347", ), (
  ("Children", "TOTAL too much", p("25", 0.2516), p("29", 0.2856), p("28", 0.2785), p("24", 0.2422), p("19", 0.1929), ),
  ("", "TOTAL too little", p("45", 0.4533), p("42", 0.4219), p("46", 0.4590), p("43", 0.4324), p("50", 0.5041), ),
  ("", "NET too little", n("20", 0.2018), n("14", 0.1363), n("18", 0.1805), n("19", 0.1902), n("31", 0.3112), ),
  ("Environment", "TOTAL too much", p("23", 0.2286), p("27", 0.2701), p("19", 0.1871), p("20", 0.1964), p("25", 0.2514), ),
  ("", "TOTAL too little", p("43", 0.4317), p("44", 0.4387), p("42", 0.4224), p("45", 0.4509), p("42", 0.4150), ),
  ("", "NET too little", n("20", 0.2031), n("17", 0.1686), n("24", 0.2353), n("25", 0.2544), n("16", 0.1636), ),
  ("Workers", "TOTAL too much", p("25", 0.2518), p("30", 0.3045), p("25", 0.2495), p("23", 0.2261), p("22", 0.2159), ),
  ("", "TOTAL too little", p("41", 0.4072), p("37", 0.3683), p("38", 0.3831), p("43", 0.4349), p("45", 0.4518), ),
  ("", "NET too little", n("16", 0.1554), n("6", 0.0638), n("13", 0.1337), n("21", 0.2089), n("24", 0.2359), ),
  ("Competitiveness", "TOTAL too much", p("21", 0.2102), p("24", 0.2370), p("22", 0.2248), p("18", 0.1826), p("19", 0.1896), ),
  ("", "TOTAL too little", p("28", 0.2847), p("25", 0.2450), p("32", 0.3188), p("30", 0.3022), p("28", 0.2807), ),
  ("", "NET too little", n("7", 0.0745), n("1", 0.0080), n("9", 0.0939), n("12", 0.1196), n("9", 0.0911), ),
))

#heading(level: 3, "By Ethnicity")
#xtab(("Item", "Metric", ), ("Total", "White", "Black†", "Hispanic", ), ("1055", "661", "92", "187", ), (
  ("Children", "TOTAL too much", p("25", 0.2516), p("20", 0.2040), p("37", 0.3699), p("34", 0.3448), ),
  ("", "TOTAL too little", p("45", 0.4533), p("52", 0.5197), p("34", 0.3437), p("33", 0.3298), ),
  ("", "NET too little", n("20", 0.2018), n("32", 0.3157), n("−3", -0.0262), n("−2", -0.0150), ),
  ("Environment", "TOTAL too much", p("23", 0.2286), p("19", 0.1908), p("30", 0.3036), p("32", 0.3203), ),
  ("", "TOTAL too little", p("43", 0.4317), p("48", 0.4843), p("25", 0.2488), p("36", 0.3585), ),
  ("", "NET too little", n("20", 0.2031), n("29", 0.2935), n("−5", -0.0548), n("4", 0.0383), ),
  ("Workers", "TOTAL too much", p("25", 0.2518), p("21", 0.2064), p("37", 0.3653), p("35", 0.3520), ),
  ("", "TOTAL too little", p("41", 0.4072), p("46", 0.4590), p("32", 0.3248), p("31", 0.3112), ),
  ("", "NET too little", n("16", 0.1554), n("25", 0.2526), n("−4", -0.0405), n("−4", -0.0408), ),
  ("Competitiveness", "TOTAL too much", p("21", 0.2102), p("18", 0.1838), p("23", 0.2328), p("28", 0.2818), ),
  ("", "TOTAL too little", p("28", 0.2847), p("31", 0.3060), p("22", 0.2188), p("27", 0.2746), ),
  ("", "NET too little", n("7", 0.0745), n("12", 0.1222), n("−1", -0.0140), n("−1", -0.0073), ),
))

#heading(level: 3, "By Education")
#xtab(("Item", "Metric", ), ("Total", "HS or less", "Some college", "BA+", ), ("1055", "248", "406", "401", ), (
  ("Children", "TOTAL too much", p("25", 0.2516), p("28", 0.2810), p("27", 0.2743), p("21", 0.2064), ),
  ("", "TOTAL too little", p("45", 0.4533), p("38", 0.3799), p("39", 0.3863), p("57", 0.5733), ),
  ("", "NET too little", n("20", 0.2018), n("10", 0.0989), n("11", 0.1121), n("37", 0.3669), ),
  ("Environment", "TOTAL too much", p("23", 0.2286), p("22", 0.2219), p("29", 0.2892), p("19", 0.1919), ),
  ("", "TOTAL too little", p("43", 0.4317), p("32", 0.3237), p("39", 0.3911), p("57", 0.5669), ),
  ("", "NET too little", n("20", 0.2031), n("10", 0.1018), n("10", 0.1019), n("37", 0.3749), ),
  ("Workers", "TOTAL too much", p("25", 0.2518), p("27", 0.2723), p("30", 0.2992), p("20", 0.1979), ),
  ("", "TOTAL too little", p("41", 0.4072), p("32", 0.3223), p("38", 0.3804), p("51", 0.5099), ),
  ("", "NET too little", n("16", 0.1554), n("5", 0.0501), n("8", 0.0812), n("31", 0.3121), ),
  ("Competitiveness", "TOTAL too much", p("21", 0.2102), p("20", 0.2043), p("27", 0.2745), p("17", 0.1703), ),
  ("", "TOTAL too little", p("28", 0.2847), p("22", 0.2240), p("25", 0.2529), p("37", 0.3672), ),
  ("", "NET too little", n("7", 0.0745), n("2", 0.0196), n("−2", -0.0215), n("20", 0.1968), ),
))

#heading(level: 3, "By Household income")
#xtab(("Item", "Metric", ), ("Total", "<50k", "50k-<100k", "100k+", ), ("1055", "355", "357", "343", ), (
  ("Children", "TOTAL too much", p("25", 0.2516), p("29", 0.2945), p("23", 0.2335), p("22", 0.2202), ),
  ("", "TOTAL too little", p("45", 0.4533), p("38", 0.3808), p("45", 0.4521), p("54", 0.5376), ),
  ("", "NET too little", n("20", 0.2018), n("9", 0.0863), n("22", 0.2186), n("32", 0.3174), ),
  ("Environment", "TOTAL too much", p("23", 0.2286), p("26", 0.2557), p("23", 0.2262), p("20", 0.1998), ),
  ("", "TOTAL too little", p("43", 0.4317), p("34", 0.3414), p("44", 0.4408), p("53", 0.5262), ),
  ("", "NET too little", n("20", 0.2031), n("9", 0.0857), n("21", 0.2146), n("33", 0.3264), ),
  ("Workers", "TOTAL too much", p("25", 0.2518), p("30", 0.2952), p("24", 0.2365), p("22", 0.2171), ),
  ("", "TOTAL too little", p("41", 0.4072), p("37", 0.3651), p("41", 0.4116), p("45", 0.4513), ),
  ("", "NET too little", n("16", 0.1554), n("7", 0.0699), n("18", 0.1750), n("23", 0.2342), ),
  ("Competitiveness", "TOTAL too much", p("21", 0.2102), p("23", 0.2305), p("22", 0.2172), p("18", 0.1802), ),
  ("", "TOTAL too little", p("28", 0.2847), p("22", 0.2158), p("29", 0.2923), p("36", 0.3562), ),
  ("", "NET too little", n("7", 0.0745), n("−1", -0.0147), n("8", 0.0752), n("18", 0.1760), ),
))

#heading(level: 2, "Futures")

#stem("Thinking about the next 20 years, how likely is each of the following to happen?")

#defs("Each label stands for a full item:", ("Label", "Item", ), (
  ("Superintelligence", "AI becoming smarter than humans at most tasks", ),
  ("Loss-of-control", "AI systems behaving in ways their developers did not intend", ),
  ("Breakthroughs", "AI making major scientific and medical breakthroughs", ),
  ("WMDs", "AI being used to create weapons of mass destruction", ),
))

#defs("Each total combines multiple responses:", ("Total", "Responses", ), (
  ("TOTAL likely", "\"Already happening\" or \"Likely to happen\"", ),
  ("TOTAL unlikely", "\"Unlikely to happen\" or \"Not at all likely to happen\"", ),
))

#note[Cells (weighted): totals (%) and net (percentage points).]
#heading(level: 3, "By Sex")
#xtab(("Item", "Metric", ), ("Total", "Female", "Male", ), ("1055", "565", "490", ), (
  ("Superintelligence", "TOTAL likely", p("70", 0.6972), p("67", 0.6705), p("73", 0.7260), ),
  ("", "TOTAL unlikely", p("19", 0.1920), p("20", 0.1955), p("19", 0.1884), ),
  ("", "NET likely", n("51", 0.5052), n("48", 0.4751), n("54", 0.5376), ),
  ("Loss-of-control", "TOTAL likely", p("77", 0.7706), p("77", 0.7719), p("77", 0.7692), ),
  ("", "TOTAL unlikely", p("10", 0.0950), p("8", 0.0799), p("11", 0.1113), ),
  ("", "NET likely", n("68", 0.6756), n("69", 0.6921), n("66", 0.6579), ),
  ("Breakthroughs", "TOTAL likely", p("68", 0.6798), p("62", 0.6182), p("75", 0.7462), ),
  ("", "TOTAL unlikely", p("16", 0.1622), p("20", 0.1952), p("13", 0.1266), ),
  ("", "NET likely", n("52", 0.5176), n("42", 0.4230), n("62", 0.6196), ),
  ("WMDs", "TOTAL likely", p("69", 0.6931), p("66", 0.6597), p("73", 0.7290), ),
  ("", "TOTAL unlikely", p("12", 0.1157), p("11", 0.1116), p("12", 0.1201), ),
  ("", "NET likely", n("58", 0.5774), n("55", 0.5481), n("61", 0.6089), ),
))

#heading(level: 3, "By Party")
#xtab(("Item", "Metric", ), ("Total", "Dem", "Rep", "Ind", ), ("1055", "498", "365", "189", ), (
  ("Superintelligence", "TOTAL likely", p("70", 0.6972), p("73", 0.7275), p("69", 0.6939), p("66", 0.6557), ),
  ("", "TOTAL unlikely", p("19", 0.1920), p("19", 0.1879), p("19", 0.1901), p("20", 0.2023), ),
  ("", "NET likely", n("51", 0.5052), n("54", 0.5396), n("50", 0.5038), n("45", 0.4533), ),
  ("Loss-of-control", "TOTAL likely", p("77", 0.7706), p("84", 0.8415), p("73", 0.7321), p("72", 0.7203), ),
  ("", "TOTAL unlikely", p("10", 0.0950), p("6", 0.0623), p("10", 0.0968), p("15", 0.1460), ),
  ("", "NET likely", n("68", 0.6756), n("78", 0.7792), n("64", 0.6353), n("57", 0.5743), ),
  ("Breakthroughs", "TOTAL likely", p("68", 0.6798), p("65", 0.6470), p("72", 0.7151), p("68", 0.6790), ),
  ("", "TOTAL unlikely", p("16", 0.1622), p("21", 0.2142), p("15", 0.1453), p("10", 0.1041), ),
  ("", "NET likely", n("52", 0.5176), n("43", 0.4328), n("57", 0.5698), n("58", 0.5750), ),
  ("WMDs", "TOTAL likely", p("69", 0.6931), p("75", 0.7544), p("66", 0.6569), p("65", 0.6543), ),
  ("", "TOTAL unlikely", p("12", 0.1157), p("12", 0.1165), p("12", 0.1248), p("10", 0.1001), ),
  ("", "NET likely", n("58", 0.5774), n("64", 0.6379), n("53", 0.5321), n("55", 0.5542), ),
))

#heading(level: 3, "By Age")
#xtab(("Item", "Metric", ), ("Total", "18–34", "35–49", "50–64", "65+", ), ("1055", "212", "235", "261", "347", ), (
  ("Superintelligence", "TOTAL likely", p("70", 0.6972), p("60", 0.6008), p("77", 0.7692), p("75", 0.7511), p("69", 0.6880), ),
  ("", "TOTAL unlikely", p("19", 0.1920), p("26", 0.2601), p("14", 0.1360), p("14", 0.1363), p("22", 0.2204), ),
  ("", "NET likely", n("51", 0.5052), n("34", 0.3407), n("63", 0.6332), n("61", 0.6147), n("47", 0.4675), ),
  ("Loss-of-control", "TOTAL likely", p("77", 0.7706), p("67", 0.6698), p("82", 0.8232), p("82", 0.8162), p("79", 0.7938), ),
  ("", "TOTAL unlikely", p("10", 0.0950), p("17", 0.1690), p("5", 0.0496), p("8", 0.0770), p("7", 0.0705), ),
  ("", "NET likely", n("68", 0.6756), n("50", 0.5009), n("77", 0.7736), n("74", 0.7392), n("72", 0.7234), ),
  ("Breakthroughs", "TOTAL likely", p("68", 0.6798), p("60", 0.6034), p("73", 0.7269), p("66", 0.6647), p("74", 0.7364), ),
  ("", "TOTAL unlikely", p("16", 0.1622), p("22", 0.2169), p("14", 0.1376), p("13", 0.1305), p("15", 0.1521), ),
  ("", "NET likely", n("52", 0.5176), n("39", 0.3866), n("59", 0.5893), n("53", 0.5342), n("58", 0.5843), ),
  ("WMDs", "TOTAL likely", p("69", 0.6931), p("65", 0.6471), p("68", 0.6760), p("75", 0.7455), p("72", 0.7158), ),
  ("", "TOTAL unlikely", p("12", 0.1157), p("14", 0.1421), p("14", 0.1432), p("8", 0.0838), p("9", 0.0864), ),
  ("", "NET likely", n("58", 0.5774), n("51", 0.5051), n("53", 0.5327), n("66", 0.6617), n("63", 0.6293), ),
))

#heading(level: 3, "By Ethnicity")
#xtab(("Item", "Metric", ), ("Total", "White", "Black†", "Hispanic", ), ("1055", "661", "92", "187", ), (
  ("Superintelligence", "TOTAL likely", p("70", 0.6972), p("69", 0.6866), p("67", 0.6676), p("63", 0.6309), ),
  ("", "TOTAL unlikely", p("19", 0.1920), p("21", 0.2098), p("18", 0.1814), p("21", 0.2054), ),
  ("", "NET likely", n("51", 0.5052), n("48", 0.4768), n("49", 0.4862), n("43", 0.4255), ),
  ("Loss-of-control", "TOTAL likely", p("77", 0.7706), p("80", 0.7973), p("76", 0.7580), p("66", 0.6611), ),
  ("", "TOTAL unlikely", p("10", 0.0950), p("7", 0.0719), p("5", 0.0510), p("18", 0.1776), ),
  ("", "NET likely", n("68", 0.6756), n("73", 0.7254), n("71", 0.7070), n("48", 0.4834), ),
  ("Breakthroughs", "TOTAL likely", p("68", 0.6798), p("67", 0.6723), p("66", 0.6558), p("62", 0.6245), ),
  ("", "TOTAL unlikely", p("16", 0.1622), p("17", 0.1683), p("14", 0.1429), p("21", 0.2136), ),
  ("", "NET likely", n("52", 0.5176), n("50", 0.5040), n("51", 0.5129), n("41", 0.4109), ),
  ("WMDs", "TOTAL likely", p("69", 0.6931), p("70", 0.7005), p("63", 0.6278), p("65", 0.6488), ),
  ("", "TOTAL unlikely", p("12", 0.1157), p("11", 0.1100), p("16", 0.1631), p("13", 0.1347), ),
  ("", "NET likely", n("58", 0.5774), n("59", 0.5905), n("46", 0.4648), n("51", 0.5141), ),
))

#heading(level: 3, "By Education")
#xtab(("Item", "Metric", ), ("Total", "HS or less", "Some college", "BA+", ), ("1055", "248", "406", "401", ), (
  ("Superintelligence", "TOTAL likely", p("70", 0.6972), p("66", 0.6592), p("70", 0.6957), p("74", 0.7358), ),
  ("", "TOTAL unlikely", p("19", 0.1920), p("19", 0.1905), p("19", 0.1878), p("20", 0.1966), ),
  ("", "NET likely", n("51", 0.5052), n("47", 0.4686), n("51", 0.5079), n("54", 0.5392), ),
  ("Loss-of-control", "TOTAL likely", p("77", 0.7706), p("67", 0.6736), p("79", 0.7910), p("85", 0.8516), ),
  ("", "TOTAL unlikely", p("10", 0.0950), p("12", 0.1221), p("9", 0.0922), p("7", 0.0703), ),
  ("", "NET likely", n("68", 0.6756), n("55", 0.5516), n("70", 0.6988), n("78", 0.7813), ),
  ("Breakthroughs", "TOTAL likely", p("68", 0.6798), p("57", 0.5718), p("72", 0.7166), p("76", 0.7601), ),
  ("", "TOTAL unlikely", p("16", 0.1622), p("22", 0.2175), p("13", 0.1335), p("13", 0.1281), ),
  ("", "NET likely", n("52", 0.5176), n("35", 0.3543), n("58", 0.5831), n("63", 0.6320), ),
  ("WMDs", "TOTAL likely", p("69", 0.6931), p("66", 0.6603), p("69", 0.6947), p("72", 0.7241), ),
  ("", "TOTAL unlikely", p("12", 0.1157), p("13", 0.1272), p("10", 0.1030), p("11", 0.1134), ),
  ("", "NET likely", n("58", 0.5774), n("53", 0.5332), n("59", 0.5917), n("61", 0.6107), ),
))

#heading(level: 3, "By Household income")
#xtab(("Item", "Metric", ), ("Total", "<50k", "50k-<100k", "100k+", ), ("1055", "355", "357", "343", ), (
  ("Superintelligence", "TOTAL likely", p("70", 0.6972), p("69", 0.6895), p("69", 0.6891), p("71", 0.7141), ),
  ("", "TOTAL unlikely", p("19", 0.1920), p("18", 0.1798), p("18", 0.1840), p("21", 0.2140), ),
  ("", "NET likely", n("51", 0.5052), n("51", 0.5097), n("51", 0.5050), n("50", 0.5001), ),
  ("Loss-of-control", "TOTAL likely", p("77", 0.7706), p("73", 0.7309), p("79", 0.7881), p("80", 0.7989), ),
  ("", "TOTAL unlikely", p("10", 0.0950), p("11", 0.1072), p("6", 0.0616), p("11", 0.1140), ),
  ("", "NET likely", n("68", 0.6756), n("62", 0.6237), n("73", 0.7265), n("68", 0.6849), ),
  ("Breakthroughs", "TOTAL likely", p("68", 0.6798), p("62", 0.6157), p("69", 0.6855), p("75", 0.7477), ),
  ("", "TOTAL unlikely", p("16", 0.1622), p("19", 0.1910), p("16", 0.1644), p("13", 0.1270), ),
  ("", "NET likely", n("52", 0.5176), n("42", 0.4248), n("52", 0.5211), n("62", 0.6207), ),
  ("WMDs", "TOTAL likely", p("69", 0.6931), p("65", 0.6480), p("71", 0.7107), p("73", 0.7273), ),
  ("", "TOTAL unlikely", p("12", 0.1157), p("15", 0.1493), p("10", 0.1036), p("9", 0.0892), ),
  ("", "NET likely", n("58", 0.5774), n("50", 0.4987), n("61", 0.6071), n("64", 0.6381), ),
))

= Appendix — Questionnaire

Here are the questions, items, and response options for the results of this release. 
Some additional instructions may be omitted for brevity and clarity.

#heading(level: 2, "Priorities")

#stem("We are faced with many problems in this country, and resources are often limited. Given these constraints, how much of a priority should the government place on each of the following?")

*Items*

#items(("Improving the job situation", "Reducing inflation", "Dealing with harms from artificial intelligence (AI)", "Dealing with immigration", "Improving health care", "Reducing crime", "Dealing with climate change", ))

*Response options*

#options(("Top priority", "Important but lower priority", "Not too important", "Not a priority at all", "Not sure", ))

#heading(level: 2, "Affect")

#stem("Thinking about AI's growing role in society, which of these options comes closest to how you feel, even if none are exactly right?")

*Response options*

#options(("Very excited", "Somewhat excited", "Somewhat concerned", "Very concerned", "None of these are close to how I feel", ))

#heading(level: 2, "Agency")

#stem("Again, thinking about AI, which statement comes closer to your view, even if neither is exactly right?")

*Response options*

#options(("People like me can shape how much AI is part of our lives", "AI is coming into our lives whether we want it or not", "Neither of these are close to how I feel", ))

#heading(level: 2, "Community")

#stem("Thinking about your local community, how much are you seeing each of the following changes because of AI?")

*Items*

#items(("People are saving time on everyday tasks", "People are pressured to do more, faster", "People are losing connections to others", "People are struggling to tell what's real from what's fake", "People are getting better health care", ))

*Response options*

#options(("Have seen", "Starting to see", "Expect to see soon", "Don't expect to see", "Not sure", ))

#heading(level: 2, "Families")

#stem("Thinking about families in America today, how is AI affecting each of the following?")

*Items*

#items(("Job security", "Outlook on the future", "Children's well-being", "Household finances", ))

*Response options*

#options(("Making it much better", "Making it somewhat better", "Making it somewhat worse", "Making it much worse", "Having no effect", ))

#heading(level: 2, "Government")

#stem("When it comes to each of the following issues, is the government doing too much, too little, or about the right amount in response?")

*Items*

#items(("AI's effects on children and young people", "AI's environmental footprint, including from data centers", "AI's effects on workers and jobs", "AI's effect on American competitiveness", ))

*Response options*

#options(("Way too much", "Somewhat too much", "About the right amount", "Somewhat too little", "Way too little", "Not sure", ))

#heading(level: 2, "Futures")

#stem("Thinking about the next 20 years, how likely is each of the following to happen?")

*Items*

#items(("AI becoming smarter than humans at most tasks", "AI systems behaving in ways their developers did not intend", "AI making major scientific and medical breakthroughs", "AI being used to create weapons of mass destruction", ))

*Response options*

#options(("Already happening", "Likely to happen", "Unlikely to happen", "Not at all likely to happen", "Not sure", ))

= Appendix — Methodology

This is the second tracking wave of the *Americans on AI* survey, a
project of Athena Insights.

Respondents were interviewed between July 9 and 13, 2026 as part of NORC's
AmeriSpeak Omnibus. AmeriSpeak is a probability-based household panel
recruited by address-based sampling from the NORC National Frame, designed
to be representative of the US household population. Interviews were
conducted online (94%) and by phone (6%), in English; 1,055 adults
completed the module.

Results are weighted with NORC's vote-choice study weights. NORC first
adjusts the panel base weights for sample selection and nonresponse and
rakes to Current Population Survey benchmarks on age, sex, census
division, race/ethnicity, and education; a second round of raking then
adds 2024 presidential vote choice. The voter shares are benchmarked to
the 2024 election results. This yields a design effect of 1.96 and
an effective sample size of 540. This wave fields no oversamples:
the achieved sample follows population shares. Standard errors are
design-based (Taylor linearization over NORC's variance strata and
units).

The full-sample margin of error is ±4.2 percentage points at 95%
confidence. Margins of error for subgroup estimates are larger. The achieved
(unweighted) composition is disclosed in full (*Appendix — Sample
composition*) per AAPOR
#link("https://aapor.org/standards-and-ethics/disclosure-standards/")[disclosure standards].

For the questionnaire, item order within blocks was randomized and response options were rotated (forward/reverse), holding don't know answers last. The median
completion time was about 3 minutes. Respondents who skipped an item on the web or declined
to answer on the phone remain in the base for every percentage, shown as their own
response category.

Results are reported as response distributions, totals, and nets.
Every percentage is out of all respondents, with "Not sure" and "None" answers
included along with the above "no answer responses". Totals combine related response options, and a net is the percentage-point gap between two totals.

= Appendix — Sample composition

Unweighted demographic composition of the achieved sample (n=1,055).

This wave fields no oversamples, so unweighted shares approximate population shares; the report's figures are weighted to NORC's Current Population Survey benchmarks (see the methodology). *Party* is profiled by NORC, not a weighting dimension of this module's design.

#comp(("Dimension", "Group", "n", "%", ), (
  ("Sex", "Female", "565", "54", ),
  ("", "Male", "490", "46", ),
  ("Party", "Dem", "498", "47", ),
  ("", "Rep", "365", "35", ),
  ("", "Ind", "189", "18", ),
  ("", "Unknown", "3", "0", ),
  ("Age", "18–34", "212", "20", ),
  ("", "35–49", "235", "22", ),
  ("", "50–64", "261", "25", ),
  ("", "65+", "347", "33", ),
  ("Ethnicity", "White", "661", "63", ),
  ("", "Black", "92", "9", ),
  ("", "Hispanic", "187", "18", ),
  ("", "Asian/PI", "72", "7", ),
  ("", "Two or more", "32", "3", ),
  ("", "Other", "11", "1", ),
  ("Education", "HS or less", "248", "24", ),
  ("", "Some college", "406", "38", ),
  ("", "BA+", "401", "38", ),
  ("Household income", "<50k", "355", "34", ),
  ("", "50k-<100k", "357", "34", ),
  ("", "100k+", "343", "33", ),
))
