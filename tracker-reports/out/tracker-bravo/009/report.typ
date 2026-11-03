#import "/tracker-reports/report.typ": *
#show: report.with(title: "Americans on AI — 26 October 2026")

Athena Insights surveyed 1,985 US adults from October 22-26, 2026, via NORC's AmeriSpeak Panel, a probability-based panel designed to be representative of the US household population.

This release includes the results of that survey as a whole-sample topline, then as crosstabs broken out by subgroup, followed by appendices covering the questionnaire, methodology, and unweighted sample composition.

Results are weighted to US population benchmarks; the full-sample margin of error is ±3.2 percentage points at 95% confidence, accounting for the design effect of weighting. 

In general subgroup estimates carry wider margins of error than the full sample's; but the subgroups presented in this release are oversampled to give more and balanced precision than implied by their population shares.

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
  ("Jobs", p("47", 0.4744), p("38", 0.3753), p("8", 0.0815), p("2", 0.0151), p("4", 0.0437), ),
  ("Inflation", p("70", 0.6953), p("20", 0.2027), p("4", 0.0388), p("2", 0.0174), p("4", 0.0382), ),
  ("AI harms", p("41", 0.4074), p("40", 0.3952), p("9", 0.0930), p("4", 0.0404), p("6", 0.0562), ),
  ("Immigration", p("35", 0.3496), p("33", 0.3290), p("18", 0.1814), p("8", 0.0786), p("5", 0.0503), ),
  ("Health care", p("64", 0.6438), p("24", 0.2361), p("6", 0.0565), p("1", 0.0110), p("4", 0.0433), ),
  ("Crime", p("52", 0.5237), p("32", 0.3164), p("9", 0.0872), p("2", 0.0215), p("4", 0.0373), ),
  ("Climate change", p("34", 0.3427), p("31", 0.3099), p("16", 0.1609), p("13", 0.1324), p("4", 0.0424), ),
))

#heading(level: 2, "Affect")

#stem("Thinking about AI's growing role in society, which of these options comes closest to how you feel, even if none are exactly right?")

#note[*Response distribution (weighted)* — % of all respondents. "No answer" (2% or less) is not shown.]
#dist(("Response", "%", ), (
  ("Very excited", p("6", 0.0634), ),
  ("Somewhat excited", p("14", 0.1436), ),
  ("Somewhat concerned", p("39", 0.3871), ),
  ("Very concerned", p("31", 0.3136), ),
  ("None of these are close to how I feel", p("9", 0.0856), ),
))

#heading(level: 2, "Agency")

#stem("Again, thinking about AI, which statement comes closer to your view, even if neither is exactly right?")

#note[*Response distribution (weighted)* — % of all respondents. "No answer" (2% or less) is not shown.]
#dist(("Response", "%", ), (
  ("People like me can shape how much AI is part of our lives", p("16", 0.1555), ),
  ("AI is coming into our lives whether we want it or not", p("67", 0.6698), ),
  ("Neither of these are close to how I feel", p("16", 0.1600), ),
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
  ("Saving time", p("20", 0.2013), p("29", 0.2900), p("16", 0.1566), p("13", 0.1297), p("21", 0.2111), ),
  ("Pressured to do more", p("21", 0.2103), p("28", 0.2756), p("20", 0.2004), p("9", 0.0856), p("22", 0.2185), ),
  ("Losing connections", p("30", 0.2968), p("27", 0.2677), p("17", 0.1739), p("8", 0.0841), p("16", 0.1642), ),
  ("Real vs. fake", p("55", 0.5521), p("24", 0.2438), p("8", 0.0811), p("3", 0.0287), p("9", 0.0873), ),
  ("Better health care", p("5", 0.0514), p("11", 0.1096), p("21", 0.2057), p("33", 0.3290), p("29", 0.2931), ),
))

#heading(level: 2, "Families")

#stem("Thinking about families in America today, how is AI affecting each of the following?")

#defs("Each label stands for a full item:", ("Label", "Item", ), (
  ("Jobs", "Job security", ),
  ("Future", "Outlook on the future", ),
  ("Children", "Children's well-being", ),
  ("Finances", "Household finances", ),
))

#note[*Response distribution (weighted)* — % of all respondents. "No answer" (2% or less) is not shown.]
#dist(("Item", "Making it much better", "Making it somewhat better", "Making it somewhat worse", "Making it much worse", "Having no effect", ), (
  ("Jobs", p("3", 0.0336), p("10", 0.0978), p("41", 0.4101), p("32", 0.3180), p("12", 0.1184), ),
  ("Future", p("5", 0.0538), p("23", 0.2293), p("34", 0.3372), p("24", 0.2424), p("11", 0.1141), ),
  ("Children", p("4", 0.0409), p("15", 0.1496), p("34", 0.3441), p("28", 0.2761), p("17", 0.1651), ),
  ("Finances", p("4", 0.0380), p("24", 0.2405), p("28", 0.2834), p("14", 0.1447), p("27", 0.2695), ),
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
  ("Children", p("10", 0.1037), p("13", 0.1251), p("12", 0.1180), p("20", 0.1953), p("29", 0.2892), p("16", 0.1576), ),
  ("Environment", p("14", 0.1378), p("10", 0.1015), p("13", 0.1335), p("15", 0.1479), p("32", 0.3157), p("16", 0.1552), ),
  ("Workers", p("9", 0.0943), p("13", 0.1301), p("14", 0.1377), p("21", 0.2101), p("26", 0.2571), p("16", 0.1567), ),
  ("Competitiveness", p("8", 0.0792), p("14", 0.1361), p("22", 0.2225), p("17", 0.1671), p("16", 0.1572), p("23", 0.2288), ),
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
  ("Superintelligence", p("31", 0.3104), p("40", 0.3993), p("10", 0.1027), p("6", 0.0565), p("12", 0.1230), ),
  ("Loss-of-control", p("43", 0.4256), p("37", 0.3677), p("6", 0.0582), p("2", 0.0218), p("12", 0.1181), ),
  ("Breakthroughs", p("18", 0.1849), p("45", 0.4501), p("12", 0.1186), p("4", 0.0410), p("19", 0.1948), ),
  ("WMDs", p("19", 0.1879), p("51", 0.5067), p("8", 0.0848), p("3", 0.0330), p("18", 0.1793), ),
))

= Crosstabs

Here we are reporting totals and nets for response options, shown for the whole sample and then broken out by sex, party, age, race / ethnicity, education, and household income (the _banner_).

- A total is a combination of response options which indicate a common lean, for example: the total excited includes "very excited" and "somewhat excited" responses.

- A net is the gap, in percentage points, between the two leans of a question, for example: the total concerned minus the total excited.

In general subgroup estimates carry wider margins of error than the full sample's; but certain subgroups presented in this release are oversampled to give more and balanced precision than implied by their population shares.

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
#xtab(("Item", "Metric", ), ("Total", "Female", "Male", ), ("1985", "1110", "875", ), (
  ("Jobs", "TOTAL high priority", p("85", 0.8497), p("84", 0.8443), p("86", 0.8555), ),
  ("", "TOTAL lower priority", p("10", 0.0966), p("9", 0.0860), p("11", 0.1081), ),
  ("", "NET priority", n("75", 0.7531), n("76", 0.7583), n("75", 0.7474), ),
  ("Inflation", "TOTAL high priority", p("90", 0.8980), p("89", 0.8883), p("91", 0.9084), ),
  ("", "TOTAL lower priority", p("6", 0.0562), p("5", 0.0460), p("7", 0.0671), ),
  ("", "NET priority", n("84", 0.8418), n("84", 0.8423), n("84", 0.8412), ),
  ("AI harms", "TOTAL high priority", p("80", 0.8026), p("84", 0.8352), p("77", 0.7677), ),
  ("", "TOTAL lower priority", p("13", 0.1334), p("9", 0.0867), p("18", 0.1834), ),
  ("", "NET priority", n("67", 0.6692), n("75", 0.7486), n("58", 0.5843), ),
  ("Immigration", "TOTAL high priority", p("68", 0.6786), p("70", 0.6951), p("66", 0.6610), ),
  ("", "TOTAL lower priority", p("26", 0.2599), p("23", 0.2265), p("30", 0.2957), ),
  ("", "NET priority", n("42", 0.4187), n("47", 0.4686), n("37", 0.3653), ),
  ("Health care", "TOTAL high priority", p("88", 0.8799), p("89", 0.8852), p("87", 0.8742), ),
  ("", "TOTAL lower priority", p("7", 0.0675), p("4", 0.0436), p("9", 0.0931), ),
  ("", "NET priority", n("81", 0.8124), n("84", 0.8416), n("78", 0.7811), ),
  ("Crime", "TOTAL high priority", p("84", 0.8401), p("86", 0.8571), p("82", 0.8219), ),
  ("", "TOTAL lower priority", p("11", 0.1087), p("8", 0.0785), p("14", 0.1410), ),
  ("", "NET priority", n("73", 0.7314), n("78", 0.7786), n("68", 0.6809), ),
  ("Climate change", "TOTAL high priority", p("65", 0.6526), p("71", 0.7056), p("60", 0.5959), ),
  ("", "TOTAL lower priority", p("29", 0.2933), p("23", 0.2267), p("36", 0.3646), ),
  ("", "NET priority", n("36", 0.3593), n("48", 0.4789), n("23", 0.2314), ),
))

#heading(level: 3, "By Party")
#xtab(("Item", "Metric", ), ("Total", "Dem", "Rep", "Ind", ), ("1985", "1010", "512", "450", ), (
  ("Jobs", "TOTAL high priority", p("85", 0.8497), p("94", 0.9425), p("81", 0.8063), p("78", 0.7762), ),
  ("", "TOTAL lower priority", p("10", 0.0966), p("4", 0.0364), p("17", 0.1681), p("8", 0.0804), ),
  ("", "NET priority", n("75", 0.7531), n("91", 0.9060), n("64", 0.6383), n("70", 0.6958), ),
  ("Inflation", "TOTAL high priority", p("90", 0.8980), p("96", 0.9611), p("90", 0.8999), p("80", 0.8032), ),
  ("", "TOTAL lower priority", p("6", 0.0562), p("3", 0.0270), p("9", 0.0853), p("5", 0.0536), ),
  ("", "NET priority", n("84", 0.8418), n("93", 0.9341), n("81", 0.8146), n("75", 0.7497), ),
  ("AI harms", "TOTAL high priority", p("80", 0.8026), p("91", 0.9054), p("80", 0.8020), p("66", 0.6622), ),
  ("", "TOTAL lower priority", p("13", 0.1334), p("7", 0.0715), p("16", 0.1601), p("18", 0.1817), ),
  ("", "NET priority", n("67", 0.6692), n("83", 0.8338), n("64", 0.6420), n("48", 0.4805), ),
  ("Immigration", "TOTAL high priority", p("68", 0.6786), p("56", 0.5643), p("85", 0.8529), p("60", 0.5960), ),
  ("", "TOTAL lower priority", p("26", 0.2599), p("41", 0.4107), p("13", 0.1288), p("23", 0.2315), ),
  ("", "NET priority", n("42", 0.4187), n("15", 0.1536), n("72", 0.7241), n("36", 0.3646), ),
  ("Health care", "TOTAL high priority", p("88", 0.8799), p("96", 0.9649), p("86", 0.8564), p("79", 0.7871), ),
  ("", "TOTAL lower priority", p("7", 0.0675), p("2", 0.0189), p("12", 0.1162), p("7", 0.0682), ),
  ("", "NET priority", n("81", 0.8124), n("95", 0.9460), n("74", 0.7403), n("72", 0.7189), ),
  ("Crime", "TOTAL high priority", p("84", 0.8401), p("87", 0.8698), p("89", 0.8854), p("73", 0.7287), ),
  ("", "TOTAL lower priority", p("11", 0.1087), p("12", 0.1173), p("8", 0.0808), p("14", 0.1370), ),
  ("", "NET priority", n("73", 0.7314), n("75", 0.7526), n("80", 0.8046), n("59", 0.5917), ),
  ("Climate change", "TOTAL high priority", p("65", 0.6526), p("89", 0.8943), p("43", 0.4287), p("62", 0.6213), ),
  ("", "TOTAL lower priority", p("29", 0.2933), p("9", 0.0851), p("54", 0.5425), p("24", 0.2368), ),
  ("", "NET priority", n("36", 0.3593), n("81", 0.8093), n("−11", -0.1138), n("38", 0.3845), ),
))

#heading(level: 3, "By Age")
#xtab(("Item", "Metric", ), ("Total", "18–34", "35–49", "50–64", "65+", ), ("1985", "554", "551", "436", "444", ), (
  ("Jobs", "TOTAL high priority", p("85", 0.8497), p("80", 0.7965), p("84", 0.8375), p("88", 0.8822), p("90", 0.8950), ),
  ("", "TOTAL lower priority", p("10", 0.0966), p("12", 0.1187), p("11", 0.1054), p("8", 0.0841), p("7", 0.0734), ),
  ("", "NET priority", n("75", 0.7531), n("68", 0.6777), n("73", 0.7322), n("80", 0.7981), n("82", 0.8217), ),
  ("Inflation", "TOTAL high priority", p("90", 0.8980), p("84", 0.8353), p("87", 0.8679), p("94", 0.9430), p("96", 0.9608), ),
  ("", "TOTAL lower priority", p("6", 0.0562), p("8", 0.0834), p("8", 0.0773), p("4", 0.0395), p("2", 0.0181), ),
  ("", "NET priority", n("84", 0.8418), n("75", 0.7518), n("79", 0.7906), n("90", 0.9035), n("94", 0.9427), ),
  ("AI harms", "TOTAL high priority", p("80", 0.8026), p("72", 0.7211), p("78", 0.7795), p("86", 0.8586), p("87", 0.8707), ),
  ("", "TOTAL lower priority", p("13", 0.1334), p("18", 0.1824), p("16", 0.1592), p("10", 0.1005), p("8", 0.0800), ),
  ("", "NET priority", n("67", 0.6692), n("54", 0.5387), n("62", 0.6203), n("76", 0.7581), n("79", 0.7908), ),
  ("Immigration", "TOTAL high priority", p("68", 0.6786), p("54", 0.5431), p("60", 0.6014), p("79", 0.7875), p("82", 0.8164), ),
  ("", "TOTAL lower priority", p("26", 0.2599), p("36", 0.3556), p("33", 0.3296), p("18", 0.1814), p("15", 0.1491), ),
  ("", "NET priority", n("42", 0.4187), n("19", 0.1875), n("27", 0.2718), n("61", 0.6061), n("67", 0.6672), ),
  ("Health care", "TOTAL high priority", p("88", 0.8799), p("80", 0.8027), p("84", 0.8360), p("95", 0.9488), p("95", 0.9520), ),
  ("", "TOTAL lower priority", p("7", 0.0675), p("12", 0.1184), p("9", 0.0919), p("3", 0.0335), p("1", 0.0142), ),
  ("", "NET priority", n("81", 0.8124), n("68", 0.6844), n("74", 0.7440), n("92", 0.9153), n("94", 0.9378), ),
  ("Crime", "TOTAL high priority", p("84", 0.8401), p("74", 0.7433), p("79", 0.7898), p("91", 0.9119), p("94", 0.9389), ),
  ("", "TOTAL lower priority", p("11", 0.1087), p("18", 0.1768), p("13", 0.1330), p("7", 0.0668), p("4", 0.0423), ),
  ("", "NET priority", n("73", 0.7314), n("57", 0.5665), n("66", 0.6568), n("85", 0.8452), n("90", 0.8966), ),
  ("Climate change", "TOTAL high priority", p("65", 0.6526), p("68", 0.6812), p("61", 0.6121), p("61", 0.6057), p("70", 0.7023), ),
  ("", "TOTAL lower priority", p("29", 0.2933), p("24", 0.2448), p("32", 0.3241), p("35", 0.3491), p("27", 0.2687), ),
  ("", "NET priority", n("36", 0.3593), n("44", 0.4364), n("29", 0.2880), n("26", 0.2566), n("43", 0.4335), ),
))

#heading(level: 3, "By Ethnicity")
#xtab(("Item", "Metric", ), ("Total", "White", "Black", "Hispanic", ), ("1985", "754", "632", "441", ), (
  ("Jobs", "TOTAL high priority", p("85", 0.8497), p("85", 0.8500), p("84", 0.8384), p("85", 0.8532), ),
  ("", "TOTAL lower priority", p("10", 0.0966), p("10", 0.1033), p("9", 0.0923), p("9", 0.0896), ),
  ("", "NET priority", n("75", 0.7531), n("75", 0.7467), n("75", 0.7460), n("76", 0.7636), ),
  ("Inflation", "TOTAL high priority", p("90", 0.8980), p("94", 0.9356), p("83", 0.8334), p("85", 0.8498), ),
  ("", "TOTAL lower priority", p("6", 0.0562), p("3", 0.0335), p("7", 0.0705), p("9", 0.0920), ),
  ("", "NET priority", n("84", 0.8418), n("90", 0.9021), n("76", 0.7628), n("76", 0.7578), ),
  ("AI harms", "TOTAL high priority", p("80", 0.8026), p("82", 0.8159), p("75", 0.7481), p("77", 0.7731), ),
  ("", "TOTAL lower priority", p("13", 0.1334), p("13", 0.1259), p("16", 0.1633), p("16", 0.1558), ),
  ("", "NET priority", n("67", 0.6692), n("69", 0.6900), n("58", 0.5848), n("62", 0.6173), ),
  ("Immigration", "TOTAL high priority", p("68", 0.6786), p("73", 0.7258), p("60", 0.5964), p("63", 0.6298), ),
  ("", "TOTAL lower priority", p("26", 0.2599), p("23", 0.2316), p("31", 0.3138), p("29", 0.2942), ),
  ("", "NET priority", n("42", 0.4187), n("49", 0.4942), n("28", 0.2826), n("34", 0.3356), ),
  ("Health care", "TOTAL high priority", p("88", 0.8799), p("89", 0.8916), p("86", 0.8607), p("86", 0.8603), ),
  ("", "TOTAL lower priority", p("7", 0.0675), p("6", 0.0614), p("5", 0.0508), p("9", 0.0934), ),
  ("", "NET priority", n("81", 0.8124), n("83", 0.8302), n("81", 0.8099), n("77", 0.7669), ),
  ("Crime", "TOTAL high priority", p("84", 0.8401), p("87", 0.8674), p("84", 0.8351), p("79", 0.7876), ),
  ("", "TOTAL lower priority", p("11", 0.1087), p("10", 0.0979), p("11", 0.1078), p("12", 0.1243), ),
  ("", "NET priority", n("73", 0.7314), n("77", 0.7695), n("73", 0.7273), n("66", 0.6633), ),
  ("Climate change", "TOTAL high priority", p("65", 0.6526), p("63", 0.6265), p("71", 0.7134), p("68", 0.6845), ),
  ("", "TOTAL lower priority", p("29", 0.2933), p("33", 0.3278), p("20", 0.2035), p("26", 0.2565), ),
  ("", "NET priority", n("36", 0.3593), n("30", 0.2987), n("51", 0.5099), n("43", 0.4279), ),
))

#heading(level: 3, "By Education")
#xtab(("Item", "Metric", ), ("Total", "HS or less", "Some college", "BA+", ), ("1985", "534", "741", "710", ), (
  ("Jobs", "TOTAL high priority", p("85", 0.8497), p("79", 0.7919), p("88", 0.8812), p("88", 0.8845), ),
  ("", "TOTAL lower priority", p("10", 0.0966), p("11", 0.1108), p("8", 0.0805), p("9", 0.0940), ),
  ("", "NET priority", n("75", 0.7531), n("68", 0.6811), n("80", 0.8007), n("79", 0.7905), ),
  ("Inflation", "TOTAL high priority", p("90", 0.8980), p("82", 0.8190), p("95", 0.9466), p("94", 0.9417), ),
  ("", "TOTAL lower priority", p("6", 0.0562), p("9", 0.0877), p("3", 0.0257), p("5", 0.0466), ),
  ("", "NET priority", n("84", 0.8418), n("73", 0.7313), n("92", 0.9209), n("90", 0.8951), ),
  ("AI harms", "TOTAL high priority", p("80", 0.8026), p("73", 0.7340), p("86", 0.8579), p("83", 0.8315), ),
  ("", "TOTAL lower priority", p("13", 0.1334), p("16", 0.1598), p("9", 0.0865), p("14", 0.1404), ),
  ("", "NET priority", n("67", 0.6692), n("57", 0.5741), n("77", 0.7714), n("69", 0.6911), ),
  ("Immigration", "TOTAL high priority", p("68", 0.6786), p("65", 0.6480), p("75", 0.7546), p("66", 0.6554), ),
  ("", "TOTAL lower priority", p("26", 0.2599), p("24", 0.2426), p("20", 0.1998), p("32", 0.3194), ),
  ("", "NET priority", n("42", 0.4187), n("41", 0.4054), n("55", 0.5548), n("34", 0.3360), ),
  ("Health care", "TOTAL high priority", p("88", 0.8799), p("81", 0.8119), p("90", 0.9045), p("93", 0.9297), ),
  ("", "TOTAL lower priority", p("7", 0.0675), p("10", 0.0950), p("6", 0.0550), p("5", 0.0492), ),
  ("", "NET priority", n("81", 0.8124), n("72", 0.7169), n("85", 0.8495), n("88", 0.8805), ),
  ("Crime", "TOTAL high priority", p("84", 0.8401), p("79", 0.7881), p("89", 0.8938), p("85", 0.8536), ),
  ("", "TOTAL lower priority", p("11", 0.1087), p("11", 0.1094), p("8", 0.0758), p("13", 0.1311), ),
  ("", "NET priority", n("73", 0.7314), n("68", 0.6787), n("82", 0.8179), n("72", 0.7225), ),
  ("Climate change", "TOTAL high priority", p("65", 0.6526), p("60", 0.6025), p("70", 0.6998), p("67", 0.6689), ),
  ("", "TOTAL lower priority", p("29", 0.2933), p("31", 0.3113), p("25", 0.2519), p("30", 0.3047), ),
  ("", "NET priority", n("36", 0.3593), n("29", 0.2912), n("45", 0.4479), n("36", 0.3641), ),
))

#heading(level: 3, "By Household income")
#xtab(("Item", "Metric", ), ("Total", "<50k", "50k-<100k", "100k+", ), ("1985", "797", "605", "583", ), (
  ("Jobs", "TOTAL high priority", p("85", 0.8497), p("80", 0.8021), p("87", 0.8652), p("89", 0.8896), ),
  ("", "TOTAL lower priority", p("10", 0.0966), p("11", 0.1076), p("8", 0.0812), p("10", 0.0990), ),
  ("", "NET priority", n("75", 0.7531), n("69", 0.6946), n("78", 0.7840), n("79", 0.7906), ),
  ("Inflation", "TOTAL high priority", p("90", 0.8980), p("85", 0.8472), p("91", 0.9127), p("94", 0.9423), ),
  ("", "TOTAL lower priority", p("6", 0.0562), p("8", 0.0768), p("4", 0.0405), p("5", 0.0476), ),
  ("", "NET priority", n("84", 0.8418), n("77", 0.7703), n("87", 0.8722), n("89", 0.8947), ),
  ("AI harms", "TOTAL high priority", p("80", 0.8026), p("75", 0.7501), p("82", 0.8217), p("84", 0.8448), ),
  ("", "TOTAL lower priority", p("13", 0.1334), p("14", 0.1393), p("12", 0.1160), p("14", 0.1435), ),
  ("", "NET priority", n("67", 0.6692), n("61", 0.6107), n("71", 0.7057), n("70", 0.7013), ),
  ("Immigration", "TOTAL high priority", p("68", 0.6786), p("67", 0.6745), p("70", 0.7034), p("66", 0.6594), ),
  ("", "TOTAL lower priority", p("26", 0.2599), p("22", 0.2244), p("23", 0.2312), p("33", 0.3287), ),
  ("", "NET priority", n("42", 0.4187), n("45", 0.4501), n("47", 0.4722), n("33", 0.3307), ),
  ("Health care", "TOTAL high priority", p("88", 0.8799), p("83", 0.8346), p("88", 0.8798), p("93", 0.9322), ),
  ("", "TOTAL lower priority", p("7", 0.0675), p("8", 0.0845), p("6", 0.0574), p("6", 0.0577), ),
  ("", "NET priority", n("81", 0.8124), n("75", 0.7501), n("82", 0.8224), n("87", 0.8745), ),
  ("Crime", "TOTAL high priority", p("84", 0.8401), p("82", 0.8150), p("87", 0.8729), p("84", 0.8372), ),
  ("", "TOTAL lower priority", p("11", 0.1087), p("10", 0.1010), p("8", 0.0822), p("14", 0.1432), ),
  ("", "NET priority", n("73", 0.7314), n("71", 0.7141), n("79", 0.7907), n("69", 0.6940), ),
  ("Climate change", "TOTAL high priority", p("65", 0.6526), p("64", 0.6381), p("63", 0.6270), p("69", 0.6942), ),
  ("", "TOTAL lower priority", p("29", 0.2933), p("27", 0.2719), p("32", 0.3219), p("29", 0.2903), ),
  ("", "NET priority", n("36", 0.3593), n("37", 0.3662), n("31", 0.3051), n("40", 0.4039), ),
))

#heading(level: 2, "Affect")

#stem("Thinking about AI's growing role in society, which of these options comes closest to how you feel, even if none are exactly right?")

#defs("Each total combines multiple responses:", ("Total", "Responses", ), (
  ("TOTAL excited", "\"Very excited\" or \"Somewhat excited\"", ),
  ("TOTAL concerned", "\"Somewhat concerned\" or \"Very concerned\"", ),
))

#note[Cells (weighted): totals (%) and net (percentage points).]
#heading(level: 3, "By Sex")
#xtab(("Metric", ), ("Total", "Female", "Male", ), ("1985", "1110", "875", ), (
  ("TOTAL excited", p("21", 0.2070), p("17", 0.1660), p("25", 0.2508), ),
  ("TOTAL concerned", p("70", 0.7007), p("73", 0.7309), p("67", 0.6684), ),
  ("None of these", p("9", 0.0856), p("9", 0.0910), p("8", 0.0798), ),
  ("No answer", p("1", 0.0067), p("1", 0.0121), p("<1", 0.0010), ),
  ("NET concerned", n("49", 0.4938), n("56", 0.5649), n("42", 0.4176), ),
))

#heading(level: 3, "By Party")
#xtab(("Metric", ), ("Total", "Dem", "Rep", "Ind", ), ("1985", "1010", "512", "450", ), (
  ("TOTAL excited", p("21", 0.2070), p("17", 0.1679), p("23", 0.2311), p("23", 0.2341), ),
  ("TOTAL concerned", p("70", 0.7007), p("79", 0.7872), p("72", 0.7213), p("54", 0.5376), ),
  ("None of these", p("9", 0.0856), p("4", 0.0440), p("5", 0.0463), p("20", 0.2047), ),
  ("No answer", p("1", 0.0067), p("<1", 0.0010), p("<1", 0.0013), p("2", 0.0235), ),
  ("NET concerned", n("49", 0.4938), n("62", 0.6193), n("49", 0.4902), n("30", 0.3035), ),
))

#heading(level: 3, "By Age")
#xtab(("Metric", ), ("Total", "18–34", "35–49", "50–64", "65+", ), ("1985", "554", "551", "436", "444", ), (
  ("TOTAL excited", p("21", 0.2070), p("26", 0.2592), p("22", 0.2176), p("20", 0.1986), p("14", 0.1424), ),
  ("TOTAL concerned", p("70", 0.7007), p("63", 0.6255), p("68", 0.6816), p("74", 0.7395), p("77", 0.7730), ),
  ("None of these", p("9", 0.0856), p("10", 0.1008), p("10", 0.0977), p("6", 0.0619), p("8", 0.0771), ),
  ("No answer", p("1", 0.0067), p("1", 0.0145), p("<1", 0.0030), p("0", 0.0000), p("1", 0.0074), ),
  ("NET concerned", n("49", 0.4938), n("37", 0.3663), n("46", 0.4640), n("54", 0.5409), n("63", 0.6306), ),
))

#heading(level: 3, "By Ethnicity")
#xtab(("Metric", ), ("Total", "White", "Black", "Hispanic", ), ("1985", "754", "632", "441", ), (
  ("TOTAL excited", p("21", 0.2070), p("18", 0.1793), p("26", 0.2554), p("27", 0.2682), ),
  ("TOTAL concerned", p("70", 0.7007), p("74", 0.7442), p("58", 0.5818), p("63", 0.6325), ),
  ("None of these", p("9", 0.0856), p("8", 0.0762), p("15", 0.1457), p("10", 0.0966), ),
  ("No answer", p("1", 0.0067), p("<1", 0.0004), p("2", 0.0170), p("<1", 0.0026), ),
  ("NET concerned", n("49", 0.4938), n("56", 0.5649), n("33", 0.3264), n("36", 0.3644), ),
))

#heading(level: 3, "By Education")
#xtab(("Metric", ), ("Total", "HS or less", "Some college", "BA+", ), ("1985", "534", "741", "710", ), (
  ("TOTAL excited", p("21", 0.2070), p("20", 0.1963), p("16", 0.1647), p("25", 0.2472), ),
  ("TOTAL concerned", p("70", 0.7007), p("64", 0.6420), p("77", 0.7676), p("71", 0.7116), ),
  ("None of these", p("9", 0.0856), p("14", 0.1433), p("7", 0.0677), p("4", 0.0412), ),
  ("No answer", p("1", 0.0067), p("2", 0.0184), p("0", 0.0000), p("0", 0.0000), ),
  ("NET concerned", n("49", 0.4938), n("45", 0.4457), n("60", 0.6030), n("46", 0.4643), ),
))

#heading(level: 3, "By Household income")
#xtab(("Metric", ), ("Total", "<50k", "50k-<100k", "100k+", ), ("1985", "797", "605", "583", ), (
  ("TOTAL excited", p("21", 0.2070), p("20", 0.1987), p("18", 0.1751), p("25", 0.2473), ),
  ("TOTAL concerned", p("70", 0.7007), p("66", 0.6551), p("76", 0.7566), p("70", 0.6993), ),
  ("None of these", p("9", 0.0856), p("13", 0.1280), p("7", 0.0683), p("5", 0.0534), ),
  ("No answer", p("1", 0.0067), p("2", 0.0182), p("0", 0.0000), p("0", 0.0000), ),
  ("NET concerned", n("49", 0.4938), n("46", 0.4563), n("58", 0.5815), n("45", 0.4520), ),
))

#heading(level: 2, "Agency")

#stem("Again, thinking about AI, which statement comes closer to your view, even if neither is exactly right?")

#note[Cells (weighted): totals (%) and net (percentage points).]
#heading(level: 3, "By Sex")
#xtab(("Metric", ), ("Total", "Female", "Male", ), ("1985", "1110", "875", ), (
  ("TOTAL can shape", p("16", 0.1555), p("16", 0.1568), p("15", 0.1540), ),
  ("TOTAL inevitable", p("67", 0.6698), p("65", 0.6468), p("69", 0.6945), ),
  ("Neither of these", p("16", 0.1600), p("18", 0.1770), p("14", 0.1417), ),
  ("No answer", p("1", 0.0147), p("2", 0.0193), p("1", 0.0098), ),
  ("NET inevitable", n("51", 0.5144), n("49", 0.4900), n("54", 0.5404), ),
))

#heading(level: 3, "By Party")
#xtab(("Metric", ), ("Total", "Dem", "Rep", "Ind", ), ("1985", "1010", "512", "450", ), (
  ("TOTAL can shape", p("16", 0.1555), p("14", 0.1407), p("17", 0.1706), p("16", 0.1585), ),
  ("TOTAL inevitable", p("67", 0.6698), p("72", 0.7198), p("70", 0.7045), p("56", 0.5553), ),
  ("Neither of these", p("16", 0.1600), p("13", 0.1346), p("12", 0.1211), p("24", 0.2403), ),
  ("No answer", p("1", 0.0147), p("<1", 0.0049), p("<1", 0.0037), p("5", 0.0460), ),
  ("NET inevitable", n("51", 0.5144), n("58", 0.5790), n("53", 0.5339), n("40", 0.3969), ),
))

#heading(level: 3, "By Age")
#xtab(("Metric", ), ("Total", "18–34", "35–49", "50–64", "65+", ), ("1985", "554", "551", "436", "444", ), (
  ("TOTAL can shape", p("16", 0.1555), p("15", 0.1511), p("19", 0.1906), p("19", 0.1859), p("10", 0.0977), ),
  ("TOTAL inevitable", p("67", 0.6698), p("62", 0.6229), p("62", 0.6185), p("69", 0.6896), p("76", 0.7585), ),
  ("Neither of these", p("16", 0.1600), p("20", 0.1996), p("17", 0.1705), p("12", 0.1213), p("14", 0.1380), ),
  ("No answer", p("1", 0.0147), p("3", 0.0264), p("2", 0.0203), p("<1", 0.0032), p("1", 0.0059), ),
  ("NET inevitable", n("51", 0.5144), n("47", 0.4717), n("43", 0.4279), n("50", 0.5037), n("66", 0.6608), ),
))

#heading(level: 3, "By Ethnicity")
#xtab(("Metric", ), ("Total", "White", "Black", "Hispanic", ), ("1985", "754", "632", "441", ), (
  ("TOTAL can shape", p("16", 0.1555), p("15", 0.1515), p("14", 0.1399), p("17", 0.1749), ),
  ("TOTAL inevitable", p("67", 0.6698), p("70", 0.7003), p("61", 0.6109), p("59", 0.5924), ),
  ("Neither of these", p("16", 0.1600), p("14", 0.1423), p("22", 0.2222), p("22", 0.2156), ),
  ("No answer", p("1", 0.0147), p("1", 0.0058), p("3", 0.0270), p("2", 0.0171), ),
  ("NET inevitable", n("51", 0.5144), n("55", 0.5488), n("47", 0.4710), n("42", 0.4175), ),
))

#heading(level: 3, "By Education")
#xtab(("Metric", ), ("Total", "HS or less", "Some college", "BA+", ), ("1985", "534", "741", "710", ), (
  ("TOTAL can shape", p("16", 0.1555), p("14", 0.1375), p("12", 0.1238), p("20", 0.1955), ),
  ("TOTAL inevitable", p("67", 0.6698), p("60", 0.6016), p("73", 0.7295), p("70", 0.6951), ),
  ("Neither of these", p("16", 0.1600), p("23", 0.2272), p("14", 0.1426), p("11", 0.1058), ),
  ("No answer", p("1", 0.0147), p("3", 0.0337), p("<1", 0.0041), p("<1", 0.0035), ),
  ("NET inevitable", n("51", 0.5144), n("46", 0.4641), n("61", 0.6057), n("50", 0.4996), ),
))

#heading(level: 3, "By Household income")
#xtab(("Metric", ), ("Total", "<50k", "50k-<100k", "100k+", ), ("1985", "797", "605", "583", ), (
  ("TOTAL can shape", p("16", 0.1555), p("13", 0.1314), p("17", 0.1740), p("17", 0.1653), ),
  ("TOTAL inevitable", p("67", 0.6698), p("62", 0.6170), p("68", 0.6813), p("72", 0.7197), ),
  ("Neither of these", p("16", 0.1600), p("23", 0.2292), p("14", 0.1356), p("10", 0.1037), ),
  ("No answer", p("1", 0.0147), p("2", 0.0224), p("1", 0.0091), p("1", 0.0113), ),
  ("NET inevitable", n("51", 0.5144), n("49", 0.4855), n("51", 0.5073), n("55", 0.5544), ),
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
#xtab(("Item", "Metric", ), ("Total", "Female", "Male", ), ("1985", "1110", "875", ), (
  ("Saving time", "TOTAL realized", p("49", 0.4913), p("49", 0.4874), p("50", 0.4956), ),
  ("", "TOTAL not yet", p("29", 0.2863), p("26", 0.2617), p("31", 0.3127), ),
  ("", "NET realized", n("21", 0.2050), n("23", 0.2257), n("18", 0.1829), ),
  ("Pressured to do more", "TOTAL realized", p("49", 0.4859), p("49", 0.4922), p("48", 0.4792), ),
  ("", "TOTAL not yet", p("29", 0.2860), p("25", 0.2501), p("32", 0.3245), ),
  ("", "NET realized", n("20", 0.1999), n("24", 0.2421), n("15", 0.1547), ),
  ("Losing connections", "TOTAL realized", p("56", 0.5646), p("59", 0.5878), p("54", 0.5396), ),
  ("", "TOTAL not yet", p("26", 0.2580), p("22", 0.2219), p("30", 0.2967), ),
  ("", "NET realized", n("31", 0.3066), n("37", 0.3660), n("24", 0.2430), ),
  ("Real vs. fake", "TOTAL realized", p("80", 0.7959), p("79", 0.7934), p("80", 0.7985), ),
  ("", "TOTAL not yet", p("11", 0.1097), p("9", 0.0949), p("13", 0.1255), ),
  ("", "NET realized", n("69", 0.6862), n("70", 0.6985), n("67", 0.6730), ),
  ("Better health care", "TOTAL realized", p("16", 0.1610), p("16", 0.1554), p("17", 0.1669), ),
  ("", "TOTAL not yet", p("53", 0.5347), p("50", 0.5037), p("57", 0.5678), ),
  ("", "NET realized", n("−37", -0.3737), n("−35", -0.3483), n("−40", -0.4009), ),
))

#heading(level: 3, "By Party")
#xtab(("Item", "Metric", ), ("Total", "Dem", "Rep", "Ind", ), ("1985", "1010", "512", "450", ), (
  ("Saving time", "TOTAL realized", p("49", 0.4913), p("49", 0.4934), p("48", 0.4760), p("52", 0.5179), ),
  ("", "TOTAL not yet", p("29", 0.2863), p("30", 0.3014), p("32", 0.3248), p("21", 0.2059), ),
  ("", "NET realized", n("21", 0.2050), n("19", 0.1920), n("15", 0.1513), n("31", 0.3120), ),
  ("Pressured to do more", "TOTAL realized", p("49", 0.4859), p("52", 0.5190), p("45", 0.4540), p("49", 0.4866), ),
  ("", "TOTAL not yet", p("29", 0.2860), p("30", 0.3035), p("32", 0.3203), p("21", 0.2097), ),
  ("", "NET realized", n("20", 0.1999), n("22", 0.2155), n("13", 0.1337), n("28", 0.2769), ),
  ("Losing connections", "TOTAL realized", p("56", 0.5646), p("59", 0.5850), p("56", 0.5626), p("54", 0.5396), ),
  ("", "TOTAL not yet", p("26", 0.2580), p("28", 0.2796), p("27", 0.2691), p("21", 0.2121), ),
  ("", "NET realized", n("31", 0.3066), n("31", 0.3054), n("29", 0.2935), n("33", 0.3275), ),
  ("Real vs. fake", "TOTAL realized", p("80", 0.7959), p("86", 0.8615), p("79", 0.7911), p("71", 0.7073), ),
  ("", "TOTAL not yet", p("11", 0.1097), p("9", 0.0934), p("13", 0.1251), p("11", 0.1092), ),
  ("", "NET realized", n("69", 0.6862), n("77", 0.7681), n("67", 0.6659), n("60", 0.5981), ),
  ("Better health care", "TOTAL realized", p("16", 0.1610), p("14", 0.1423), p("17", 0.1742), p("17", 0.1740), ),
  ("", "TOTAL not yet", p("53", 0.5347), p("59", 0.5884), p("51", 0.5142), p("48", 0.4846), ),
  ("", "NET realized", n("−37", -0.3737), n("−45", -0.4461), n("−34", -0.3401), n("−31", -0.3106), ),
))

#heading(level: 3, "By Age")
#xtab(("Item", "Metric", ), ("Total", "18–34", "35–49", "50–64", "65+", ), ("1985", "554", "551", "436", "444", ), (
  ("Saving time", "TOTAL realized", p("49", 0.4913), p("53", 0.5317), p("57", 0.5697), p("44", 0.4354), p("42", 0.4162), ),
  ("", "TOTAL not yet", p("29", 0.2863), p("30", 0.3039), p("26", 0.2561), p("30", 0.3016), p("28", 0.2818), ),
  ("", "NET realized", n("21", 0.2050), n("23", 0.2278), n("31", 0.3135), n("13", 0.1338), n("13", 0.1344), ),
  ("Pressured to do more", "TOTAL realized", p("49", 0.4859), p("56", 0.5642), p("54", 0.5414), p("41", 0.4142), p("40", 0.4034), ),
  ("", "TOTAL not yet", p("29", 0.2860), p("26", 0.2590), p("28", 0.2751), p("31", 0.3133), p("30", 0.3040), ),
  ("", "NET realized", n("20", 0.1999), n("31", 0.3052), n("27", 0.2664), n("10", 0.1009), n("10", 0.0994), ),
  ("Losing connections", "TOTAL realized", p("56", 0.5646), p("56", 0.5630), p("63", 0.6341), p("56", 0.5589), p("50", 0.5018), ),
  ("", "TOTAL not yet", p("26", 0.2580), p("29", 0.2944), p("21", 0.2089), p("26", 0.2569), p("27", 0.2655), ),
  ("", "NET realized", n("31", 0.3066), n("27", 0.2687), n("43", 0.4253), n("30", 0.3020), n("24", 0.2363), ),
  ("Real vs. fake", "TOTAL realized", p("80", 0.7959), p("75", 0.7473), p("83", 0.8269), p("84", 0.8403), p("78", 0.7815), ),
  ("", "TOTAL not yet", p("11", 0.1097), p("16", 0.1606), p("7", 0.0729), p("9", 0.0894), p("11", 0.1052), ),
  ("", "NET realized", n("69", 0.6862), n("59", 0.5867), n("75", 0.7540), n("75", 0.7509), n("68", 0.6763), ),
  ("Better health care", "TOTAL realized", p("16", 0.1610), p("17", 0.1654), p("17", 0.1662), p("13", 0.1307), p("18", 0.1781), ),
  ("", "TOTAL not yet", p("53", 0.5347), p("56", 0.5641), p("56", 0.5594), p("57", 0.5726), p("44", 0.4409), ),
  ("", "NET realized", n("−37", -0.3737), n("−40", -0.3986), n("−39", -0.3932), n("−44", -0.4419), n("−26", -0.2627), ),
))

#heading(level: 3, "By Ethnicity")
#xtab(("Item", "Metric", ), ("Total", "White", "Black", "Hispanic", ), ("1985", "754", "632", "441", ), (
  ("Saving time", "TOTAL realized", p("49", 0.4913), p("48", 0.4765), p("47", 0.4664), p("52", 0.5233), ),
  ("", "TOTAL not yet", p("29", 0.2863), p("29", 0.2909), p("28", 0.2763), p("29", 0.2918), ),
  ("", "NET realized", n("21", 0.2050), n("19", 0.1856), n("19", 0.1900), n("23", 0.2315), ),
  ("Pressured to do more", "TOTAL realized", p("49", 0.4859), p("47", 0.4712), p("50", 0.4988), p("49", 0.4933), ),
  ("", "TOTAL not yet", p("29", 0.2860), p("29", 0.2913), p("29", 0.2865), p("29", 0.2898), ),
  ("", "NET realized", n("20", 0.1999), n("18", 0.1799), n("21", 0.2123), n("20", 0.2035), ),
  ("Losing connections", "TOTAL realized", p("56", 0.5646), p("57", 0.5721), p("55", 0.5482), p("58", 0.5762), ),
  ("", "TOTAL not yet", p("26", 0.2580), p("25", 0.2474), p("24", 0.2387), p("29", 0.2860), ),
  ("", "NET realized", n("31", 0.3066), n("32", 0.3246), n("31", 0.3095), n("29", 0.2901), ),
  ("Real vs. fake", "TOTAL realized", p("80", 0.7959), p("82", 0.8234), p("69", 0.6941), p("78", 0.7787), ),
  ("", "TOTAL not yet", p("11", 0.1097), p("9", 0.0856), p("18", 0.1844), p("14", 0.1429), ),
  ("", "NET realized", n("69", 0.6862), n("74", 0.7378), n("51", 0.5097), n("64", 0.6358), ),
  ("Better health care", "TOTAL realized", p("16", 0.1610), p("15", 0.1479), p("23", 0.2303), p("16", 0.1598), ),
  ("", "TOTAL not yet", p("53", 0.5347), p("54", 0.5385), p("46", 0.4588), p("54", 0.5407), ),
  ("", "NET realized", n("−37", -0.3737), n("−39", -0.3905), n("−23", -0.2286), n("−38", -0.3808), ),
))

#heading(level: 3, "By Education")
#xtab(("Item", "Metric", ), ("Total", "HS or less", "Some college", "BA+", ), ("1985", "534", "741", "710", ), (
  ("Saving time", "TOTAL realized", p("49", 0.4913), p("43", 0.4346), p("46", 0.4588), p("57", 0.5702), ),
  ("", "TOTAL not yet", p("29", 0.2863), p("28", 0.2778), p("32", 0.3164), p("27", 0.2735), ),
  ("", "NET realized", n("21", 0.2050), n("16", 0.1568), n("14", 0.1424), n("30", 0.2967), ),
  ("Pressured to do more", "TOTAL realized", p("49", 0.4859), p("39", 0.3921), p("52", 0.5161), p("56", 0.5572), ),
  ("", "TOTAL not yet", p("29", 0.2860), p("30", 0.3039), p("27", 0.2724), p("28", 0.2781), ),
  ("", "NET realized", n("20", 0.1999), n("9", 0.0882), n("24", 0.2438), n("28", 0.2792), ),
  ("Losing connections", "TOTAL realized", p("56", 0.5646), p("52", 0.5209), p("59", 0.5887), p("59", 0.5906), ),
  ("", "TOTAL not yet", p("26", 0.2580), p("26", 0.2626), p("26", 0.2585), p("25", 0.2531), ),
  ("", "NET realized", n("31", 0.3066), n("26", 0.2583), n("33", 0.3302), n("34", 0.3375), ),
  ("Real vs. fake", "TOTAL realized", p("80", 0.7959), p("71", 0.7088), p("83", 0.8287), p("86", 0.8588), ),
  ("", "TOTAL not yet", p("11", 0.1097), p("16", 0.1557), p("8", 0.0829), p("8", 0.0833), ),
  ("", "NET realized", n("69", 0.6862), n("55", 0.5531), n("75", 0.7458), n("78", 0.7755), ),
  ("Better health care", "TOTAL realized", p("16", 0.1610), p("18", 0.1840), p("15", 0.1490), p("15", 0.1467), ),
  ("", "TOTAL not yet", p("53", 0.5347), p("46", 0.4557), p("54", 0.5380), p("61", 0.6103), ),
  ("", "NET realized", n("−37", -0.3737), n("−27", -0.2717), n("−39", -0.3891), n("−46", -0.4635), ),
))

#heading(level: 3, "By Household income")
#xtab(("Item", "Metric", ), ("Total", "<50k", "50k-<100k", "100k+", ), ("1985", "797", "605", "583", ), (
  ("Saving time", "TOTAL realized", p("49", 0.4913), p("42", 0.4225), p("52", 0.5207), p("54", 0.5423), ),
  ("", "TOTAL not yet", p("29", 0.2863), p("29", 0.2872), p("29", 0.2872), p("28", 0.2844), ),
  ("", "NET realized", n("21", 0.2050), n("14", 0.1353), n("23", 0.2335), n("26", 0.2579), ),
  ("Pressured to do more", "TOTAL realized", p("49", 0.4859), p("46", 0.4586), p("50", 0.4994), p("50", 0.5044), ),
  ("", "TOTAL not yet", p("29", 0.2860), p("26", 0.2621), p("28", 0.2762), p("32", 0.3233), ),
  ("", "NET realized", n("20", 0.1999), n("20", 0.1965), n("22", 0.2232), n("18", 0.1812), ),
  ("Losing connections", "TOTAL realized", p("56", 0.5646), p("53", 0.5286), p("62", 0.6158), p("56", 0.5565), ),
  ("", "TOTAL not yet", p("26", 0.2580), p("25", 0.2512), p("23", 0.2323), p("29", 0.2907), ),
  ("", "NET realized", n("31", 0.3066), n("28", 0.2773), n("38", 0.3835), n("27", 0.2658), ),
  ("Real vs. fake", "TOTAL realized", p("80", 0.7959), p("73", 0.7324), p("83", 0.8312), p("83", 0.8349), ),
  ("", "TOTAL not yet", p("11", 0.1097), p("13", 0.1328), p("8", 0.0846), p("11", 0.1074), ),
  ("", "NET realized", n("69", 0.6862), n("60", 0.5996), n("75", 0.7466), n("73", 0.7275), ),
  ("Better health care", "TOTAL realized", p("16", 0.1610), p("20", 0.1952), p("13", 0.1309), p("15", 0.1506), ),
  ("", "TOTAL not yet", p("53", 0.5347), p("46", 0.4583), p("58", 0.5778), p("58", 0.5810), ),
  ("", "NET realized", n("−37", -0.3737), n("−26", -0.2631), n("−45", -0.4468), n("−43", -0.4305), ),
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
#xtab(("Item", "Metric", ), ("Total", "Female", "Male", ), ("1985", "1110", "875", ), (
  ("Jobs", "TOTAL better", p("13", 0.1314), p("12", 0.1237), p("14", 0.1397), ),
  ("", "TOTAL worse", p("73", 0.7281), p("72", 0.7155), p("74", 0.7415), ),
  ("", "NET worse", n("60", 0.5967), n("59", 0.5919), n("60", 0.6018), ),
  ("Future", "TOTAL better", p("28", 0.2832), p("26", 0.2592), p("31", 0.3088), ),
  ("", "TOTAL worse", p("58", 0.5795), p("58", 0.5839), p("57", 0.5748), ),
  ("", "NET worse", n("30", 0.2964), n("32", 0.3247), n("27", 0.2661), ),
  ("Children", "TOTAL better", p("19", 0.1906), p("18", 0.1802), p("20", 0.2017), ),
  ("", "TOTAL worse", p("62", 0.6202), p("63", 0.6314), p("61", 0.6083), ),
  ("", "NET worse", n("43", 0.4296), n("45", 0.4512), n("41", 0.4065), ),
  ("Finances", "TOTAL better", p("28", 0.2785), p("26", 0.2608), p("30", 0.2974), ),
  ("", "TOTAL worse", p("43", 0.4282), p("41", 0.4124), p("45", 0.4450), ),
  ("", "NET worse", n("15", 0.1496), n("15", 0.1516), n("15", 0.1476), ),
))

#heading(level: 3, "By Party")
#xtab(("Item", "Metric", ), ("Total", "Dem", "Rep", "Ind", ), ("1985", "1010", "512", "450", ), (
  ("Jobs", "TOTAL better", p("13", 0.1314), p("11", 0.1118), p("13", 0.1322), p("16", 0.1583), ),
  ("", "TOTAL worse", p("73", 0.7281), p("81", 0.8126), p("70", 0.6994), p("65", 0.6466), ),
  ("", "NET worse", n("60", 0.5967), n("70", 0.7008), n("57", 0.5672), n("49", 0.4883), ),
  ("Future", "TOTAL better", p("28", 0.2832), p("26", 0.2555), p("31", 0.3087), p("29", 0.2916), ),
  ("", "TOTAL worse", p("58", 0.5795), p("65", 0.6478), p("55", 0.5460), p("52", 0.5237), ),
  ("", "NET worse", n("30", 0.2964), n("39", 0.3922), n("24", 0.2372), n("23", 0.2321), ),
  ("Children", "TOTAL better", p("19", 0.1906), p("16", 0.1583), p("20", 0.2008), p("22", 0.2240), ),
  ("", "TOTAL worse", p("62", 0.6202), p("72", 0.7221), p("57", 0.5704), p("55", 0.5501), ),
  ("", "NET worse", n("43", 0.4296), n("56", 0.5639), n("37", 0.3695), n("33", 0.3261), ),
  ("Finances", "TOTAL better", p("28", 0.2785), p("24", 0.2409), p("32", 0.3234), p("27", 0.2716), ),
  ("", "TOTAL worse", p("43", 0.4282), p("49", 0.4895), p("37", 0.3710), p("43", 0.4269), ),
  ("", "NET worse", n("15", 0.1496), n("25", 0.2486), n("5", 0.0476), n("16", 0.1553), ),
))

#heading(level: 3, "By Age")
#xtab(("Item", "Metric", ), ("Total", "18–34", "35–49", "50–64", "65+", ), ("1985", "554", "551", "436", "444", ), (
  ("Jobs", "TOTAL better", p("13", 0.1314), p("16", 0.1566), p("16", 0.1628), p("8", 0.0794), p("12", 0.1175), ),
  ("", "TOTAL worse", p("73", 0.7281), p("70", 0.7027), p("73", 0.7251), p("78", 0.7791), p("71", 0.7145), ),
  ("", "NET worse", n("60", 0.5967), n("55", 0.5461), n("56", 0.5622), n("70", 0.6997), n("60", 0.5969), ),
  ("Future", "TOTAL better", p("28", 0.2832), p("26", 0.2631), p("25", 0.2495), p("28", 0.2786), p("34", 0.3446), ),
  ("", "TOTAL worse", p("58", 0.5795), p("61", 0.6149), p("63", 0.6301), p("57", 0.5749), p("49", 0.4914), ),
  ("", "NET worse", n("30", 0.2964), n("35", 0.3518), n("38", 0.3806), n("30", 0.2963), n("15", 0.1468), ),
  ("Children", "TOTAL better", p("19", 0.1906), p("21", 0.2122), p("17", 0.1735), p("16", 0.1612), p("21", 0.2090), ),
  ("", "TOTAL worse", p("62", 0.6202), p("63", 0.6312), p("65", 0.6482), p("63", 0.6294), p("57", 0.5709), ),
  ("", "NET worse", n("43", 0.4296), n("42", 0.4190), n("47", 0.4747), n("47", 0.4682), n("36", 0.3619), ),
  ("Finances", "TOTAL better", p("28", 0.2785), p("30", 0.3042), p("29", 0.2854), p("25", 0.2451), p("27", 0.2718), ),
  ("", "TOTAL worse", p("43", 0.4282), p("44", 0.4409), p("44", 0.4357), p("44", 0.4407), p("39", 0.3942), ),
  ("", "NET worse", n("15", 0.1496), n("14", 0.1367), n("15", 0.1503), n("20", 0.1956), n("12", 0.1224), ),
))

#heading(level: 3, "By Ethnicity")
#xtab(("Item", "Metric", ), ("Total", "White", "Black", "Hispanic", ), ("1985", "754", "632", "441", ), (
  ("Jobs", "TOTAL better", p("13", 0.1314), p("9", 0.0880), p("25", 0.2495), p("22", 0.2158), ),
  ("", "TOTAL worse", p("73", 0.7281), p("76", 0.7626), p("60", 0.6019), p("67", 0.6680), ),
  ("", "NET worse", n("60", 0.5967), n("67", 0.6746), n("35", 0.3525), n("45", 0.4522), ),
  ("Future", "TOTAL better", p("28", 0.2832), p("24", 0.2416), p("39", 0.3859), p("33", 0.3318), ),
  ("", "TOTAL worse", p("58", 0.5795), p("62", 0.6239), p("44", 0.4411), p("53", 0.5290), ),
  ("", "NET worse", n("30", 0.2964), n("38", 0.3824), n("6", 0.0552), n("20", 0.1972), ),
  ("Children", "TOTAL better", p("19", 0.1906), p("15", 0.1496), p("31", 0.3098), p("21", 0.2140), ),
  ("", "TOTAL worse", p("62", 0.6202), p("67", 0.6671), p("48", 0.4832), p("57", 0.5726), ),
  ("", "NET worse", n("43", 0.4296), n("52", 0.5176), n("17", 0.1734), n("36", 0.3586), ),
  ("Finances", "TOTAL better", p("28", 0.2785), p("25", 0.2487), p("41", 0.4051), p("30", 0.2982), ),
  ("", "TOTAL worse", p("43", 0.4282), p("44", 0.4387), p("34", 0.3434), p("43", 0.4329), ),
  ("", "NET worse", n("15", 0.1496), n("19", 0.1901), n("−6", -0.0617), n("13", 0.1347), ),
))

#heading(level: 3, "By Education")
#xtab(("Item", "Metric", ), ("Total", "HS or less", "Some college", "BA+", ), ("1985", "534", "741", "710", ), (
  ("Jobs", "TOTAL better", p("13", 0.1314), p("18", 0.1811), p("10", 0.1006), p("10", 0.1040), ),
  ("", "TOTAL worse", p("73", 0.7281), p("63", 0.6321), p("77", 0.7659), p("80", 0.7961), ),
  ("", "NET worse", n("60", 0.5967), n("45", 0.4510), n("67", 0.6653), n("69", 0.6921), ),
  ("Future", "TOTAL better", p("28", 0.2832), p("25", 0.2520), p("28", 0.2848), p("31", 0.3128), ),
  ("", "TOTAL worse", p("58", 0.5795), p("55", 0.5460), p("61", 0.6086), p("59", 0.5921), ),
  ("", "NET worse", n("30", 0.2964), n("29", 0.2940), n("32", 0.3238), n("28", 0.2793), ),
  ("Children", "TOTAL better", p("19", 0.1906), p("22", 0.2206), p("20", 0.2018), p("15", 0.1531), ),
  ("", "TOTAL worse", p("62", 0.6202), p("54", 0.5422), p("62", 0.6224), p("70", 0.6957), ),
  ("", "NET worse", n("43", 0.4296), n("32", 0.3216), n("42", 0.4206), n("54", 0.5426), ),
  ("Finances", "TOTAL better", p("28", 0.2785), p("27", 0.2681), p("27", 0.2692), p("30", 0.2954), ),
  ("", "TOTAL worse", p("43", 0.4282), p("40", 0.3953), p("47", 0.4681), p("43", 0.4324), ),
  ("", "NET worse", n("15", 0.1496), n("13", 0.1272), n("20", 0.1990), n("14", 0.1370), ),
))

#heading(level: 3, "By Household income")
#xtab(("Item", "Metric", ), ("Total", "<50k", "50k-<100k", "100k+", ), ("1985", "797", "605", "583", ), (
  ("Jobs", "TOTAL better", p("13", 0.1314), p("14", 0.1386), p("14", 0.1357), p("12", 0.1188), ),
  ("", "TOTAL worse", p("73", 0.7281), p("69", 0.6860), p("73", 0.7311), p("77", 0.7736), ),
  ("", "NET worse", n("60", 0.5967), n("55", 0.5474), n("60", 0.5954), n("65", 0.6548), ),
  ("Future", "TOTAL better", p("28", 0.2832), p("26", 0.2630), p("29", 0.2873), p("30", 0.3024), ),
  ("", "TOTAL worse", p("58", 0.5795), p("56", 0.5564), p("59", 0.5855), p("60", 0.6004), ),
  ("", "NET worse", n("30", 0.2964), n("29", 0.2934), n("30", 0.2982), n("30", 0.2980), ),
  ("Children", "TOTAL better", p("19", 0.1906), p("23", 0.2299), p("17", 0.1714), p("16", 0.1638), ),
  ("", "TOTAL worse", p("62", 0.6202), p("57", 0.5694), p("64", 0.6428), p("66", 0.6570), ),
  ("", "NET worse", n("43", 0.4296), n("34", 0.3395), n("47", 0.4714), n("49", 0.4932), ),
  ("Finances", "TOTAL better", p("28", 0.2785), p("26", 0.2630), p("26", 0.2589), p("32", 0.3154), ),
  ("", "TOTAL worse", p("43", 0.4282), p("45", 0.4523), p("42", 0.4200), p("41", 0.4081), ),
  ("", "NET worse", n("15", 0.1496), n("19", 0.1894), n("16", 0.1611), n("9", 0.0927), ),
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
#xtab(("Item", "Metric", ), ("Total", "Female", "Male", ), ("1985", "1110", "875", ), (
  ("Children", "TOTAL too much", p("23", 0.2289), p("25", 0.2469), p("21", 0.2095), ),
  ("", "TOTAL too little", p("48", 0.4845), p("48", 0.4770), p("49", 0.4924), ),
  ("", "NET too little", n("26", 0.2556), n("23", 0.2302), n("28", 0.2829), ),
  ("Environment", "TOTAL too much", p("24", 0.2393), p("26", 0.2591), p("22", 0.2181), ),
  ("", "TOTAL too little", p("46", 0.4637), p("46", 0.4567), p("47", 0.4711), ),
  ("", "NET too little", n("22", 0.2244), n("20", 0.1977), n("25", 0.2529), ),
  ("Workers", "TOTAL too much", p("22", 0.2244), p("23", 0.2255), p("22", 0.2233), ),
  ("", "TOTAL too little", p("47", 0.4672), p("46", 0.4551), p("48", 0.4802), ),
  ("", "NET too little", n("24", 0.2428), n("23", 0.2297), n("26", 0.2569), ),
  ("Competitiveness", "TOTAL too much", p("22", 0.2153), p("22", 0.2198), p("21", 0.2105), ),
  ("", "TOTAL too little", p("32", 0.3243), p("33", 0.3342), p("31", 0.3136), ),
  ("", "NET too little", n("11", 0.1090), n("11", 0.1144), n("10", 0.1031), ),
))

#heading(level: 3, "By Party")
#xtab(("Item", "Metric", ), ("Total", "Dem", "Rep", "Ind", ), ("1985", "1010", "512", "450", ), (
  ("Children", "TOTAL too much", p("23", 0.2289), p("23", 0.2272), p("21", 0.2055), p("26", 0.2585), ),
  ("", "TOTAL too little", p("48", 0.4845), p("58", 0.5803), p("47", 0.4668), p("37", 0.3721), ),
  ("", "NET too little", n("26", 0.2556), n("35", 0.3531), n("26", 0.2613), n("11", 0.1135), ),
  ("Environment", "TOTAL too much", p("24", 0.2393), p("23", 0.2295), p("26", 0.2582), p("22", 0.2185), ),
  ("", "TOTAL too little", p("46", 0.4637), p("58", 0.5835), p("39", 0.3910), p("40", 0.4003), ),
  ("", "NET too little", n("22", 0.2244), n("35", 0.3540), n("13", 0.1327), n("18", 0.1818), ),
  ("Workers", "TOTAL too much", p("22", 0.2244), p("24", 0.2412), p("18", 0.1837), p("25", 0.2535), ),
  ("", "TOTAL too little", p("47", 0.4672), p("57", 0.5723), p("44", 0.4362), p("36", 0.3646), ),
  ("", "NET too little", n("24", 0.2428), n("33", 0.3311), n("25", 0.2525), n("11", 0.1111), ),
  ("Competitiveness", "TOTAL too much", p("22", 0.2153), p("24", 0.2362), p("19", 0.1859), p("21", 0.2138), ),
  ("", "TOTAL too little", p("32", 0.3243), p("40", 0.3971), p("30", 0.2951), p("26", 0.2647), ),
  ("", "NET too little", n("11", 0.1090), n("16", 0.1609), n("11", 0.1092), n("5", 0.0510), ),
))

#heading(level: 3, "By Age")
#xtab(("Item", "Metric", ), ("Total", "18–34", "35–49", "50–64", "65+", ), ("1985", "554", "551", "436", "444", ), (
  ("Children", "TOTAL too much", p("23", 0.2289), p("22", 0.2213), p("24", 0.2425), p("26", 0.2623), p("19", 0.1936), ),
  ("", "TOTAL too little", p("48", 0.4845), p("45", 0.4515), p("51", 0.5073), p("47", 0.4658), p("52", 0.5174), ),
  ("", "NET too little", n("26", 0.2556), n("23", 0.2301), n("26", 0.2648), n("20", 0.2035), n("32", 0.3238), ),
  ("Environment", "TOTAL too much", p("24", 0.2393), p("21", 0.2097), p("25", 0.2458), p("28", 0.2791), p("23", 0.2313), ),
  ("", "TOTAL too little", p("46", 0.4637), p("46", 0.4611), p("43", 0.4324), p("49", 0.4925), p("47", 0.4718), ),
  ("", "NET too little", n("22", 0.2244), n("25", 0.2514), n("19", 0.1865), n("21", 0.2134), n("24", 0.2405), ),
  ("Workers", "TOTAL too much", p("22", 0.2244), p("20", 0.2020), p("25", 0.2454), p("28", 0.2771), p("18", 0.1818), ),
  ("", "TOTAL too little", p("47", 0.4672), p("47", 0.4663), p("46", 0.4631), p("41", 0.4092), p("53", 0.5253), ),
  ("", "NET too little", n("24", 0.2428), n("26", 0.2643), n("22", 0.2177), n("13", 0.1321), n("34", 0.3435), ),
  ("Competitiveness", "TOTAL too much", p("22", 0.2153), p("24", 0.2352), p("22", 0.2205), p("25", 0.2477), p("16", 0.1572), ),
  ("", "TOTAL too little", p("32", 0.3243), p("29", 0.2876), p("28", 0.2812), p("35", 0.3465), p("39", 0.3904), ),
  ("", "NET too little", n("11", 0.1090), n("5", 0.0524), n("6", 0.0607), n("10", 0.0988), n("23", 0.2331), ),
))

#heading(level: 3, "By Ethnicity")
#xtab(("Item", "Metric", ), ("Total", "White", "Black", "Hispanic", ), ("1985", "754", "632", "441", ), (
  ("Children", "TOTAL too much", p("23", 0.2289), p("18", 0.1780), p("35", 0.3455), p("30", 0.3002), ),
  ("", "TOTAL too little", p("48", 0.4845), p("53", 0.5265), p("31", 0.3089), p("45", 0.4493), ),
  ("", "NET too little", n("26", 0.2556), n("35", 0.3485), n("−4", -0.0366), n("15", 0.1490), ),
  ("Environment", "TOTAL too much", p("24", 0.2393), p("19", 0.1858), p("33", 0.3272), p("29", 0.2934), ),
  ("", "TOTAL too little", p("46", 0.4637), p("51", 0.5144), p("29", 0.2890), p("43", 0.4314), ),
  ("", "NET too little", n("22", 0.2244), n("33", 0.3286), n("−4", -0.0382), n("14", 0.1380), ),
  ("Workers", "TOTAL too much", p("22", 0.2244), p("18", 0.1820), p("31", 0.3142), p("26", 0.2633), ),
  ("", "TOTAL too little", p("47", 0.4672), p("52", 0.5169), p("29", 0.2876), p("43", 0.4349), ),
  ("", "NET too little", n("24", 0.2428), n("33", 0.3349), n("−3", -0.0265), n("17", 0.1716), ),
  ("Competitiveness", "TOTAL too much", p("22", 0.2153), p("17", 0.1659), p("29", 0.2892), p("30", 0.3025), ),
  ("", "TOTAL too little", p("32", 0.3243), p("35", 0.3516), p("24", 0.2425), p("29", 0.2916), ),
  ("", "NET too little", n("11", 0.1090), n("19", 0.1857), n("−5", -0.0467), n("−1", -0.0109), ),
))

#heading(level: 3, "By Education")
#xtab(("Item", "Metric", ), ("Total", "HS or less", "Some college", "BA+", ), ("1985", "534", "741", "710", ), (
  ("Children", "TOTAL too much", p("23", 0.2289), p("28", 0.2820), p("25", 0.2501), p("16", 0.1614), ),
  ("", "TOTAL too little", p("48", 0.4845), p("37", 0.3709), p("52", 0.5154), p("57", 0.5748), ),
  ("", "NET too little", n("26", 0.2556), n("9", 0.0889), n("27", 0.2653), n("41", 0.4134), ),
  ("Environment", "TOTAL too much", p("24", 0.2393), p("28", 0.2823), p("25", 0.2484), p("19", 0.1904), ),
  ("", "TOTAL too little", p("46", 0.4637), p("34", 0.3409), p("51", 0.5070), p("55", 0.5542), ),
  ("", "NET too little", n("22", 0.2244), n("6", 0.0586), n("26", 0.2586), n("36", 0.3638), ),
  ("Workers", "TOTAL too much", p("22", 0.2244), p("26", 0.2555), p("23", 0.2346), p("19", 0.1866), ),
  ("", "TOTAL too little", p("47", 0.4672), p("38", 0.3775), p("50", 0.4960), p("54", 0.5355), ),
  ("", "NET too little", n("24", 0.2428), n("12", 0.1221), n("26", 0.2613), n("35", 0.3489), ),
  ("Competitiveness", "TOTAL too much", p("22", 0.2153), p("24", 0.2366), p("21", 0.2051), p("20", 0.2014), ),
  ("", "TOTAL too little", p("32", 0.3243), p("25", 0.2525), p("38", 0.3781), p("36", 0.3572), ),
  ("", "NET too little", n("11", 0.1090), n("2", 0.0159), n("17", 0.1730), n("16", 0.1557), ),
))

#heading(level: 3, "By Household income")
#xtab(("Item", "Metric", ), ("Total", "<50k", "50k-<100k", "100k+", ), ("1985", "797", "605", "583", ), (
  ("Children", "TOTAL too much", p("23", 0.2289), p("28", 0.2809), p("24", 0.2449), p("15", 0.1533), ),
  ("", "TOTAL too little", p("48", 0.4845), p("39", 0.3875), p("52", 0.5178), p("56", 0.5641), ),
  ("", "NET too little", n("26", 0.2556), n("11", 0.1066), n("27", 0.2728), n("41", 0.4108), ),
  ("Environment", "TOTAL too much", p("24", 0.2393), p("27", 0.2742), p("25", 0.2452), p("19", 0.1933), ),
  ("", "TOTAL too little", p("46", 0.4637), p("37", 0.3704), p("46", 0.4635), p("57", 0.5713), ),
  ("", "NET too little", n("22", 0.2244), n("10", 0.0962), n("22", 0.2183), n("38", 0.3780), ),
  ("Workers", "TOTAL too much", p("22", 0.2244), p("27", 0.2697), p("24", 0.2432), p("15", 0.1540), ),
  ("", "TOTAL too little", p("47", 0.4672), p("39", 0.3906), p("45", 0.4517), p("57", 0.5707), ),
  ("", "NET too little", n("24", 0.2428), n("12", 0.1209), n("21", 0.2085), n("42", 0.4167), ),
  ("Competitiveness", "TOTAL too much", p("22", 0.2153), p("24", 0.2414), p("23", 0.2348), p("17", 0.1663), ),
  ("", "TOTAL too little", p("32", 0.3243), p("29", 0.2946), p("30", 0.2989), p("38", 0.3831), ),
  ("", "NET too little", n("11", 0.1090), n("5", 0.0532), n("6", 0.0641), n("22", 0.2168), ),
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
#xtab(("Item", "Metric", ), ("Total", "Female", "Male", ), ("1985", "1110", "875", ), (
  ("Superintelligence", "TOTAL likely", p("71", 0.7097), p("69", 0.6853), p("74", 0.7358), ),
  ("", "TOTAL unlikely", p("16", 0.1592), p("15", 0.1453), p("17", 0.1741), ),
  ("", "NET likely", n("55", 0.5504), n("54", 0.5400), n("56", 0.5616), ),
  ("Loss-of-control", "TOTAL likely", p("79", 0.7933), p("78", 0.7803), p("81", 0.8072), ),
  ("", "TOTAL unlikely", p("8", 0.0800), p("7", 0.0704), p("9", 0.0902), ),
  ("", "NET likely", n("71", 0.7133), n("71", 0.7099), n("72", 0.7169), ),
  ("Breakthroughs", "TOTAL likely", p("64", 0.6350), p("60", 0.5985), p("67", 0.6741), ),
  ("", "TOTAL unlikely", p("16", 0.1596), p("14", 0.1440), p("18", 0.1764), ),
  ("", "NET likely", n("48", 0.4754), n("45", 0.4545), n("50", 0.4977), ),
  ("WMDs", "TOTAL likely", p("69", 0.6945), p("68", 0.6843), p("71", 0.7055), ),
  ("", "TOTAL unlikely", p("12", 0.1178), p("8", 0.0847), p("15", 0.1531), ),
  ("", "NET likely", n("58", 0.5768), n("60", 0.5996), n("55", 0.5524), ),
))

#heading(level: 3, "By Party")
#xtab(("Item", "Metric", ), ("Total", "Dem", "Rep", "Ind", ), ("1985", "1010", "512", "450", ), (
  ("Superintelligence", "TOTAL likely", p("71", 0.7097), p("73", 0.7295), p("74", 0.7448), p("63", 0.6289), ),
  ("", "TOTAL unlikely", p("16", 0.1592), p("17", 0.1700), p("16", 0.1583), p("15", 0.1463), ),
  ("", "NET likely", n("55", 0.5504), n("56", 0.5595), n("59", 0.5865), n("48", 0.4826), ),
  ("Loss-of-control", "TOTAL likely", p("79", 0.7933), p("85", 0.8541), p("83", 0.8280), p("66", 0.6576), ),
  ("", "TOTAL unlikely", p("8", 0.0800), p("6", 0.0581), p("8", 0.0770), p("12", 0.1175), ),
  ("", "NET likely", n("71", 0.7133), n("80", 0.7960), n("75", 0.7510), n("54", 0.5401), ),
  ("Breakthroughs", "TOTAL likely", p("64", 0.6350), p("66", 0.6575), p("69", 0.6861), p("54", 0.5369), ),
  ("", "TOTAL unlikely", p("16", 0.1596), p("17", 0.1665), p("16", 0.1585), p("15", 0.1531), ),
  ("", "NET likely", n("48", 0.4754), n("49", 0.4909), n("53", 0.5276), n("38", 0.3837), ),
  ("WMDs", "TOTAL likely", p("69", 0.6945), p("73", 0.7328), p("73", 0.7292), p("59", 0.5859), ),
  ("", "TOTAL unlikely", p("12", 0.1178), p("9", 0.0918), p("12", 0.1246), p("15", 0.1482), ),
  ("", "NET likely", n("58", 0.5768), n("64", 0.6411), n("60", 0.6046), n("44", 0.4377), ),
))

#heading(level: 3, "By Age")
#xtab(("Item", "Metric", ), ("Total", "18–34", "35–49", "50–64", "65+", ), ("1985", "554", "551", "436", "444", ), (
  ("Superintelligence", "TOTAL likely", p("71", 0.7097), p("61", 0.6073), p("71", 0.7124), p("78", 0.7774), p("77", 0.7657), ),
  ("", "TOTAL unlikely", p("16", 0.1592), p("22", 0.2233), p("16", 0.1637), p("13", 0.1328), p("10", 0.1035), ),
  ("", "NET likely", n("55", 0.5504), n("38", 0.3839), n("55", 0.5487), n("64", 0.6446), n("66", 0.6622), ),
  ("Loss-of-control", "TOTAL likely", p("79", 0.7933), p("71", 0.7117), p("78", 0.7810), p("84", 0.8436), p("86", 0.8558), ),
  ("", "TOTAL unlikely", p("8", 0.0800), p("12", 0.1227), p("8", 0.0829), p("6", 0.0644), p("4", 0.0409), ),
  ("", "NET likely", n("71", 0.7133), n("59", 0.5889), n("70", 0.6981), n("78", 0.7791), n("81", 0.8149), ),
  ("Breakthroughs", "TOTAL likely", p("64", 0.6350), p("53", 0.5262), p("60", 0.6024), p("71", 0.7092), p("73", 0.7280), ),
  ("", "TOTAL unlikely", p("16", 0.1596), p("23", 0.2273), p("18", 0.1827), p("13", 0.1252), p("9", 0.0882), ),
  ("", "NET likely", n("48", 0.4754), n("30", 0.2990), n("42", 0.4198), n("58", 0.5840), n("64", 0.6398), ),
  ("WMDs", "TOTAL likely", p("69", 0.6945), p("59", 0.5910), p("68", 0.6841), p("74", 0.7408), p("78", 0.7846), ),
  ("", "TOTAL unlikely", p("12", 0.1178), p("18", 0.1756), p("12", 0.1211), p("9", 0.0904), p("7", 0.0713), ),
  ("", "NET likely", n("58", 0.5768), n("42", 0.4153), n("56", 0.5630), n("65", 0.6504), n("71", 0.7133), ),
))

#heading(level: 3, "By Ethnicity")
#xtab(("Item", "Metric", ), ("Total", "White", "Black", "Hispanic", ), ("1985", "754", "632", "441", ), (
  ("Superintelligence", "TOTAL likely", p("71", 0.7097), p("72", 0.7241), p("66", 0.6566), p("69", 0.6856), ),
  ("", "TOTAL unlikely", p("16", 0.1592), p("16", 0.1578), p("16", 0.1606), p("17", 0.1743), ),
  ("", "NET likely", n("55", 0.5504), n("57", 0.5663), n("50", 0.4960), n("51", 0.5113), ),
  ("Loss-of-control", "TOTAL likely", p("79", 0.7933), p("85", 0.8510), p("66", 0.6598), p("70", 0.7016), ),
  ("", "TOTAL unlikely", p("8", 0.0800), p("5", 0.0476), p("13", 0.1322), p("14", 0.1416), ),
  ("", "NET likely", n("71", 0.7133), n("80", 0.8034), n("53", 0.5276), n("56", 0.5600), ),
  ("Breakthroughs", "TOTAL likely", p("64", 0.6350), p("67", 0.6656), p("56", 0.5648), p("56", 0.5636), ),
  ("", "TOTAL unlikely", p("16", 0.1596), p("15", 0.1466), p("17", 0.1745), p("21", 0.2106), ),
  ("", "NET likely", n("48", 0.4754), n("52", 0.5190), n("39", 0.3903), n("35", 0.3530), ),
  ("WMDs", "TOTAL likely", p("69", 0.6945), p("73", 0.7322), p("58", 0.5778), p("65", 0.6462), ),
  ("", "TOTAL unlikely", p("12", 0.1178), p("10", 0.1004), p("17", 0.1652), p("14", 0.1412), ),
  ("", "NET likely", n("58", 0.5768), n("63", 0.6318), n("41", 0.4126), n("51", 0.5050), ),
))

#heading(level: 3, "By Education")
#xtab(("Item", "Metric", ), ("Total", "HS or less", "Some college", "BA+", ), ("1985", "534", "741", "710", ), (
  ("Superintelligence", "TOTAL likely", p("71", 0.7097), p("62", 0.6220), p("77", 0.7733), p("75", 0.7513), ),
  ("", "TOTAL unlikely", p("16", 0.1592), p("18", 0.1811), p("13", 0.1294), p("16", 0.1587), ),
  ("", "NET likely", n("55", 0.5504), n("44", 0.4409), n("64", 0.6439), n("59", 0.5926), ),
  ("Loss-of-control", "TOTAL likely", p("79", 0.7933), p("69", 0.6879), p("85", 0.8517), p("86", 0.8561), ),
  ("", "TOTAL unlikely", p("8", 0.0800), p("11", 0.1065), p("7", 0.0651), p("6", 0.0643), ),
  ("", "NET likely", n("71", 0.7133), n("58", 0.5814), n("79", 0.7866), n("79", 0.7918), ),
  ("Breakthroughs", "TOTAL likely", p("64", 0.6350), p("55", 0.5526), p("67", 0.6670), p("69", 0.6937), ),
  ("", "TOTAL unlikely", p("16", 0.1596), p("17", 0.1666), p("15", 0.1508), p("16", 0.1589), ),
  ("", "NET likely", n("48", 0.4754), n("39", 0.3860), n("52", 0.5163), n("53", 0.5348), ),
  ("WMDs", "TOTAL likely", p("69", 0.6945), p("62", 0.6229), p("78", 0.7788), p("71", 0.7059), ),
  ("", "TOTAL unlikely", p("12", 0.1178), p("14", 0.1389), p("7", 0.0698), p("13", 0.1308), ),
  ("", "NET likely", n("58", 0.5768), n("48", 0.4841), n("71", 0.7090), n("58", 0.5751), ),
))

#heading(level: 3, "By Household income")
#xtab(("Item", "Metric", ), ("Total", "<50k", "50k-<100k", "100k+", ), ("1985", "797", "605", "583", ), (
  ("Superintelligence", "TOTAL likely", p("71", 0.7097), p("63", 0.6264), p("75", 0.7458), p("77", 0.7707), ),
  ("", "TOTAL unlikely", p("16", 0.1592), p("18", 0.1752), p("15", 0.1490), p("15", 0.1507), ),
  ("", "NET likely", n("55", 0.5504), n("45", 0.4511), n("60", 0.5968), n("62", 0.6200), ),
  ("Loss-of-control", "TOTAL likely", p("79", 0.7933), p("70", 0.7037), p("84", 0.8440), p("85", 0.8474), ),
  ("", "TOTAL unlikely", p("8", 0.0800), p("12", 0.1150), p("5", 0.0487), p("7", 0.0699), ),
  ("", "NET likely", n("71", 0.7133), n("59", 0.5887), n("80", 0.7954), n("78", 0.7775), ),
  ("Breakthroughs", "TOTAL likely", p("64", 0.6350), p("58", 0.5805), p("64", 0.6369), p("70", 0.6959), ),
  ("", "TOTAL unlikely", p("16", 0.1596), p("14", 0.1433), p("18", 0.1783), p("16", 0.1602), ),
  ("", "NET likely", n("48", 0.4754), n("44", 0.4372), n("46", 0.4586), n("54", 0.5357), ),
  ("WMDs", "TOTAL likely", p("69", 0.6945), p("66", 0.6632), p("72", 0.7208), p("71", 0.7053), ),
  ("", "TOTAL unlikely", p("12", 0.1178), p("11", 0.1118), p("10", 0.1011), p("14", 0.1409), ),
  ("", "NET likely", n("58", 0.5768), n("55", 0.5514), n("62", 0.6198), n("56", 0.5644), ),
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

This is the ninth tracking wave of the *Americans on AI* survey, a
project of Athena Insights.

Respondents were interviewed between October 22 and 26, 2026 as part of NORC's
AmeriSpeak Omnibus. AmeriSpeak is a probability-based household panel
recruited by address-based sampling from the NORC National Frame, designed
to be representative of the US household population. Interviews were
conducted online (96%) and by phone (4%), in English; 1,985 adults
completed the module.

Results are weighted with NORC's vote-choice study weights. NORC first
adjusts the panel base weights for sample selection and nonresponse and
rakes to Current Population Survey benchmarks on age, sex, census
division, race/ethnicity, and education; a second round of raking then
adds 2024 presidential vote choice. The voter shares are benchmarked to
the 2024 election results. This yields a design effect of 2.10 and
an effective sample size of 943. The subgroups reported in this
release were oversampled by design: the weights restore population
proportions, while the additional interviews improve the precision of
those subgroup estimates. Standard errors are design-based (Taylor
linearization over NORC's variance strata and units).

The full-sample margin of error is ±3.2 percentage points at 95%
confidence. Margins of error for subgroup estimates are larger, though improved and balanced through the oversampling design. The achieved
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

Unweighted demographic composition of the achieved sample (n=1,985).

Several subgroups were oversampled by design, so their unweighted shares exceed their population shares; the report's figures are weighted to NORC's Current Population Survey benchmarks (see the methodology), which restores population proportions. *Party* is profiled by NORC, not a weighting dimension of this module's design.

#comp(("Dimension", "Group", "n", "%", ), (
  ("Sex", "Female", "1110", "56", ),
  ("", "Male", "875", "44", ),
  ("Party", "Dem", "1010", "51", ),
  ("", "Rep", "512", "26", ),
  ("", "Ind", "450", "23", ),
  ("", "Unknown", "13", "1", ),
  ("Age", "18–34", "554", "28", ),
  ("", "35–49", "551", "28", ),
  ("", "50–64", "436", "22", ),
  ("", "65+", "444", "22", ),
  ("Ethnicity", "White", "754", "38", ),
  ("", "Black", "632", "32", ),
  ("", "Hispanic", "441", "22", ),
  ("", "Asian/PI", "96", "5", ),
  ("", "Two or more", "51", "3", ),
  ("", "Other", "11", "1", ),
  ("Education", "HS or less", "534", "27", ),
  ("", "Some college", "741", "37", ),
  ("", "BA+", "710", "36", ),
  ("Household income", "<50k", "797", "40", ),
  ("", "50k-<100k", "605", "30", ),
  ("", "100k+", "583", "29", ),
))
