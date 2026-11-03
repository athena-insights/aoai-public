#import "/tracker-reports/report.typ": *
#show: report.with(title: "Americans on AI — 28 September 2026")

Athena Insights surveyed 2,410 US adults from September 24-28, 2026, via NORC's AmeriSpeak Panel, a probability-based panel designed to be representative of the US household population.

This release includes the results of that survey as a whole-sample topline, then as crosstabs broken out by subgroup, followed by appendices covering the questionnaire, methodology, and unweighted sample composition.

Results are weighted to US population benchmarks; the full-sample margin of error is ±2.6 percentage points at 95% confidence, accounting for the design effect of weighting. 

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
  ("Jobs", p("52", 0.5154), p("35", 0.3517), p("7", 0.0671), p("2", 0.0189), p("3", 0.0341), ),
  ("Inflation", p("71", 0.7081), p("20", 0.2020), p("4", 0.0353), p("1", 0.0120), p("3", 0.0340), ),
  ("AI harms", p("43", 0.4299), p("38", 0.3762), p("11", 0.1071), p("3", 0.0349), p("4", 0.0431), ),
  ("Immigration", p("39", 0.3853), p("35", 0.3465), p("15", 0.1497), p("7", 0.0727), p("4", 0.0350), ),
  ("Health care", p("68", 0.6818), p("22", 0.2234), p("4", 0.0389), p("2", 0.0152), p("3", 0.0307), ),
  ("Crime", p("52", 0.5241), p("34", 0.3405), p("7", 0.0704), p("3", 0.0279), p("3", 0.0285), ),
  ("Climate change", p("36", 0.3551), p("32", 0.3233), p("15", 0.1538), p("12", 0.1183), p("4", 0.0381), ),
))

#heading(level: 2, "Affect")

#stem("Thinking about AI's growing role in society, which of these options comes closest to how you feel, even if none are exactly right?")

#note[*Response distribution (weighted)* — % of all respondents. "No answer" (2% or less) is not shown.]
#dist(("Response", "%", ), (
  ("Very excited", p("5", 0.0539), ),
  ("Somewhat excited", p("15", 0.1546), ),
  ("Somewhat concerned", p("38", 0.3764), ),
  ("Very concerned", p("31", 0.3141), ),
  ("None of these are close to how I feel", p("10", 0.0961), ),
))

#heading(level: 2, "Agency")

#stem("Again, thinking about AI, which statement comes closer to your view, even if neither is exactly right?")

#note[*Response distribution (weighted)* — % of all respondents. "No answer" (2% or less) is not shown.]
#dist(("Response", "%", ), (
  ("People like me can shape how much AI is part of our lives", p("13", 0.1314), ),
  ("AI is coming into our lives whether we want it or not", p("71", 0.7131), ),
  ("Neither of these are close to how I feel", p("15", 0.1464), ),
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
  ("Saving time", p("21", 0.2118), p("28", 0.2808), p("14", 0.1360), p("14", 0.1366), p("22", 0.2239), ),
  ("Pressured to do more", p("25", 0.2503), p("25", 0.2463), p("19", 0.1884), p("8", 0.0816), p("23", 0.2259), ),
  ("Losing connections", p("35", 0.3451), p("24", 0.2361), p("16", 0.1587), p("9", 0.0916), p("16", 0.1593), ),
  ("Real vs. fake", p("55", 0.5547), p("23", 0.2309), p("8", 0.0794), p("4", 0.0390), p("9", 0.0873), ),
  ("Better health care", p("6", 0.0552), p("12", 0.1153), p("18", 0.1810), p("35", 0.3517), p("29", 0.2880), ),
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
  ("Jobs", p("3", 0.0291), p("9", 0.0864), p("42", 0.4167), p("34", 0.3357), p("11", 0.1108), p("2", 0.0213), ),
  ("Future", p("5", 0.0542), p("25", 0.2491), p("32", 0.3164), p("25", 0.2500), p("11", 0.1068), p("2", 0.0234), ),
  ("Children", p("3", 0.0301), p("13", 0.1334), p("34", 0.3377), p("33", 0.3259), p("15", 0.1477), p("3", 0.0252), ),
  ("Finances", p("4", 0.0391), p("20", 0.1992), p("28", 0.2773), p("17", 0.1722), p("29", 0.2859), p("3", 0.0263), ),
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
  ("Children", p("12", 0.1235), p("11", 0.1091), p("12", 0.1239), p("17", 0.1742), p("28", 0.2799), p("18", 0.1756), ),
  ("Environment", p("13", 0.1304), p("10", 0.0999), p("15", 0.1534), p("14", 0.1444), p("29", 0.2929), p("16", 0.1647), ),
  ("Workers", p("10", 0.1049), p("12", 0.1169), p("16", 0.1630), p("20", 0.1993), p("23", 0.2302), p("17", 0.1724), ),
  ("Competitiveness", p("9", 0.0943), p("12", 0.1164), p("22", 0.2169), p("17", 0.1699), p("14", 0.1388), p("25", 0.2505), ),
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
  ("Superintelligence", p("32", 0.3234), p("39", 0.3886), p("10", 0.1001), p("5", 0.0457), p("13", 0.1306), ),
  ("Loss-of-control", p("42", 0.4156), p("37", 0.3695), p("5", 0.0523), p("2", 0.0223), p("13", 0.1283), ),
  ("Breakthroughs", p("20", 0.1952), p("47", 0.4679), p("11", 0.1104), p("4", 0.0414), p("17", 0.1722), ),
  ("WMDs", p("19", 0.1930), p("50", 0.4952), p("9", 0.0852), p("3", 0.0297), p("18", 0.1833), ),
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
#xtab(("Item", "Metric", ), ("Total", "Female", "Male", ), ("2410", "1291", "1119", ), (
  ("Jobs", "TOTAL high priority", p("87", 0.8671), p("89", 0.8901), p("84", 0.8423), ),
  ("", "TOTAL lower priority", p("9", 0.0860), p("6", 0.0595), p("11", 0.1145), ),
  ("", "NET priority", n("78", 0.7811), n("83", 0.8306), n("73", 0.7279), ),
  ("Inflation", "TOTAL high priority", p("91", 0.9101), p("92", 0.9155), p("90", 0.9042), ),
  ("", "TOTAL lower priority", p("5", 0.0473), p("4", 0.0371), p("6", 0.0584), ),
  ("", "NET priority", n("86", 0.8627), n("88", 0.8784), n("85", 0.8459), ),
  ("AI harms", "TOTAL high priority", p("81", 0.8062), p("84", 0.8412), p("77", 0.7685), ),
  ("", "TOTAL lower priority", p("14", 0.1420), p("11", 0.1061), p("18", 0.1804), ),
  ("", "NET priority", n("66", 0.6642), n("74", 0.7351), n("59", 0.5880), ),
  ("Immigration", "TOTAL high priority", p("73", 0.7318), p("74", 0.7399), p("72", 0.7230), ),
  ("", "TOTAL lower priority", p("22", 0.2224), p("21", 0.2084), p("24", 0.2376), ),
  ("", "NET priority", n("51", 0.5093), n("53", 0.5315), n("49", 0.4854), ),
  ("Health care", "TOTAL high priority", p("91", 0.9053), p("92", 0.9151), p("89", 0.8947), ),
  ("", "TOTAL lower priority", p("5", 0.0541), p("4", 0.0398), p("7", 0.0694), ),
  ("", "NET priority", n("85", 0.8512), n("88", 0.8752), n("83", 0.8254), ),
  ("Crime", "TOTAL high priority", p("86", 0.8646), p("89", 0.8865), p("84", 0.8410), ),
  ("", "TOTAL lower priority", p("10", 0.0983), p("7", 0.0733), p("13", 0.1251), ),
  ("", "NET priority", n("77", 0.7663), n("81", 0.8132), n("72", 0.7159), ),
  ("Climate change", "TOTAL high priority", p("68", 0.6784), p("72", 0.7222), p("63", 0.6313), ),
  ("", "TOTAL lower priority", p("27", 0.2721), p("22", 0.2212), p("33", 0.3268), ),
  ("", "NET priority", n("41", 0.4063), n("50", 0.5010), n("30", 0.3045), ),
))

#heading(level: 3, "By Party")
#xtab(("Item", "Metric", ), ("Total", "Dem", "Rep", "Ind", ), ("2410", "1263", "695", "450", ), (
  ("Jobs", "TOTAL high priority", p("87", 0.8671), p("92", 0.9217), p("86", 0.8604), p("78", 0.7786), ),
  ("", "TOTAL lower priority", p("9", 0.0860), p("6", 0.0597), p("10", 0.1028), p("11", 0.1105), ),
  ("", "NET priority", n("78", 0.7811), n("86", 0.8620), n("76", 0.7576), n("67", 0.6682), ),
  ("Inflation", "TOTAL high priority", p("91", 0.9101), p("95", 0.9455), p("93", 0.9349), p("81", 0.8095), ),
  ("", "TOTAL lower priority", p("5", 0.0473), p("3", 0.0345), p("5", 0.0544), p("6", 0.0611), ),
  ("", "NET priority", n("86", 0.8627), n("91", 0.9110), n("88", 0.8806), n("75", 0.7483), ),
  ("AI harms", "TOTAL high priority", p("81", 0.8062), p("88", 0.8829), p("80", 0.8004), p("67", 0.6742), ),
  ("", "TOTAL lower priority", p("14", 0.1420), p("10", 0.0961), p("17", 0.1691), p("19", 0.1878), ),
  ("", "NET priority", n("66", 0.6642), n("79", 0.7868), n("63", 0.6314), n("49", 0.4863), ),
  ("Immigration", "TOTAL high priority", p("73", 0.7318), p("64", 0.6391), p("89", 0.8912), p("66", 0.6598), ),
  ("", "TOTAL lower priority", p("22", 0.2224), p("34", 0.3369), p("9", 0.0929), p("21", 0.2122), ),
  ("", "NET priority", n("51", 0.5093), n("30", 0.3022), n("80", 0.7983), n("45", 0.4475), ),
  ("Health care", "TOTAL high priority", p("91", 0.9053), p("96", 0.9582), p("91", 0.9055), p("81", 0.8100), ),
  ("", "TOTAL lower priority", p("5", 0.0541), p("3", 0.0305), p("8", 0.0777), p("6", 0.0624), ),
  ("", "NET priority", n("85", 0.8512), n("93", 0.9277), n("83", 0.8278), n("75", 0.7476), ),
  ("Crime", "TOTAL high priority", p("86", 0.8646), p("85", 0.8477), p("93", 0.9341), p("79", 0.7920), ),
  ("", "TOTAL lower priority", p("10", 0.0983), p("14", 0.1401), p("4", 0.0445), p("10", 0.1046), ),
  ("", "NET priority", n("77", 0.7663), n("71", 0.7076), n("89", 0.8896), n("69", 0.6873), ),
  ("Climate change", "TOTAL high priority", p("68", 0.6784), p("89", 0.8940), p("45", 0.4452), p("64", 0.6369), ),
  ("", "TOTAL lower priority", p("27", 0.2721), p("8", 0.0843), p("53", 0.5321), p("22", 0.2249), ),
  ("", "NET priority", n("41", 0.4063), n("81", 0.8097), n("−9", -0.0869), n("41", 0.4120), ),
))

#heading(level: 3, "By Age")
#xtab(("Item", "Metric", ), ("Total", "18–34", "35–49", "50–64", "65+", ), ("2410", "555", "654", "579", "622", ), (
  ("Jobs", "TOTAL high priority", p("87", 0.8671), p("82", 0.8204), p("89", 0.8859), p("87", 0.8670), p("90", 0.9034), ),
  ("", "TOTAL lower priority", p("9", 0.0860), p("12", 0.1181), p("7", 0.0664), p("9", 0.0852), p("7", 0.0685), ),
  ("", "NET priority", n("78", 0.7811), n("70", 0.7023), n("82", 0.8195), n("78", 0.7818), n("83", 0.8349), ),
  ("Inflation", "TOTAL high priority", p("91", 0.9101), p("87", 0.8735), p("90", 0.8981), p("92", 0.9224), p("95", 0.9541), ),
  ("", "TOTAL lower priority", p("5", 0.0473), p("7", 0.0724), p("5", 0.0468), p("4", 0.0391), p("3", 0.0258), ),
  ("", "NET priority", n("86", 0.8627), n("80", 0.8011), n("85", 0.8513), n("88", 0.8832), n("93", 0.9282), ),
  ("AI harms", "TOTAL high priority", p("81", 0.8062), p("75", 0.7519), p("79", 0.7920), p("82", 0.8171), p("87", 0.8746), ),
  ("", "TOTAL lower priority", p("14", 0.1420), p("18", 0.1811), p("14", 0.1359), p("14", 0.1397), p("10", 0.1037), ),
  ("", "NET priority", n("66", 0.6642), n("57", 0.5708), n("66", 0.6560), n("68", 0.6774), n("77", 0.7709), ),
  ("Immigration", "TOTAL high priority", p("73", 0.7318), p("62", 0.6203), p("69", 0.6890), p("79", 0.7926), p("85", 0.8504), ),
  ("", "TOTAL lower priority", p("22", 0.2224), p("30", 0.3045), p("26", 0.2562), p("18", 0.1785), p("13", 0.1319), ),
  ("", "NET priority", n("51", 0.5093), n("32", 0.3159), n("43", 0.4328), n("61", 0.6141), n("72", 0.7185), ),
  ("Health care", "TOTAL high priority", p("91", 0.9053), p("86", 0.8582), p("89", 0.8853), p("93", 0.9263), p("96", 0.9616), ),
  ("", "TOTAL lower priority", p("5", 0.0541), p("8", 0.0763), p("6", 0.0606), p("5", 0.0486), p("3", 0.0262), ),
  ("", "NET priority", n("85", 0.8512), n("78", 0.7819), n("82", 0.8248), n("88", 0.8777), n("94", 0.9354), ),
  ("Crime", "TOTAL high priority", p("86", 0.8646), p("81", 0.8083), p("83", 0.8346), p("88", 0.8830), p("94", 0.9445), ),
  ("", "TOTAL lower priority", p("10", 0.0983), p("14", 0.1413), p("11", 0.1131), p("8", 0.0843), p("5", 0.0453), ),
  ("", "NET priority", n("77", 0.7663), n("67", 0.6670), n("72", 0.7215), n("80", 0.7987), n("90", 0.8992), ),
  ("Climate change", "TOTAL high priority", p("68", 0.6784), p("72", 0.7207), p("68", 0.6766), p("61", 0.6060), p("70", 0.6974), ),
  ("", "TOTAL lower priority", p("27", 0.2721), p("21", 0.2096), p("27", 0.2713), p("34", 0.3409), p("28", 0.2831), ),
  ("", "NET priority", n("41", 0.4063), n("51", 0.5111), n("41", 0.4053), n("27", 0.2652), n("41", 0.4144), ),
))

#heading(level: 3, "By Ethnicity")
#xtab(("Item", "Metric", ), ("Total", "White", "Black", "Hispanic", "Asian/PI", ), ("2410", "1218", "447", "478", "171", ), (
  ("Jobs", "TOTAL high priority", p("87", 0.8671), p("88", 0.8805), p("84", 0.8422), p("85", 0.8487), p("86", 0.8590), ),
  ("", "TOTAL lower priority", p("9", 0.0860), p("8", 0.0795), p("8", 0.0761), p("10", 0.0959), p("10", 0.1021), ),
  ("", "NET priority", n("78", 0.7811), n("80", 0.8010), n("77", 0.7660), n("75", 0.7528), n("76", 0.7569), ),
  ("Inflation", "TOTAL high priority", p("91", 0.9101), p("93", 0.9311), p("86", 0.8649), p("87", 0.8676), p("91", 0.9128), ),
  ("", "TOTAL lower priority", p("5", 0.0473), p("3", 0.0337), p("6", 0.0622), p("7", 0.0697), p("8", 0.0769), ),
  ("", "NET priority", n("86", 0.8627), n("90", 0.8975), n("80", 0.8026), n("80", 0.7979), n("84", 0.8359), ),
  ("AI harms", "TOTAL high priority", p("81", 0.8062), p("83", 0.8289), p("78", 0.7756), p("74", 0.7418), p("87", 0.8746), ),
  ("", "TOTAL lower priority", p("14", 0.1420), p("13", 0.1337), p("13", 0.1330), p("17", 0.1694), p("10", 0.1031), ),
  ("", "NET priority", n("66", 0.6642), n("70", 0.6952), n("64", 0.6427), n("57", 0.5724), n("77", 0.7715), ),
  ("Immigration", "TOTAL high priority", p("73", 0.7318), p("77", 0.7742), p("60", 0.6042), p("68", 0.6757), p("76", 0.7568), ),
  ("", "TOTAL lower priority", p("22", 0.2224), p("19", 0.1904), p("30", 0.3028), p("26", 0.2580), p("24", 0.2364), ),
  ("", "NET priority", n("51", 0.5093), n("58", 0.5838), n("30", 0.3013), n("42", 0.4177), n("52", 0.5203), ),
  ("Health care", "TOTAL high priority", p("91", 0.9053), p("91", 0.9146), p("87", 0.8738), p("89", 0.8921), p("93", 0.9283), ),
  ("", "TOTAL lower priority", p("5", 0.0541), p("5", 0.0530), p("4", 0.0411), p("6", 0.0561), p("6", 0.0563), ),
  ("", "NET priority", n("85", 0.8512), n("86", 0.8616), n("83", 0.8328), n("84", 0.8359), n("87", 0.8720), ),
  ("Crime", "TOTAL high priority", p("86", 0.8646), p("88", 0.8764), p("84", 0.8384), p("83", 0.8337), p("88", 0.8782), ),
  ("", "TOTAL lower priority", p("10", 0.0983), p("10", 0.0953), p("9", 0.0927), p("11", 0.1123), p("10", 0.1025), ),
  ("", "NET priority", n("77", 0.7663), n("78", 0.7811), n("75", 0.7457), n("72", 0.7214), n("78", 0.7757), ),
  ("Climate change", "TOTAL high priority", p("68", 0.6784), p("66", 0.6595), p("71", 0.7142), p("68", 0.6777), p("76", 0.7589), ),
  ("", "TOTAL lower priority", p("27", 0.2721), p("31", 0.3073), p("20", 0.1960), p("23", 0.2339), p("22", 0.2205), ),
  ("", "NET priority", n("41", 0.4063), n("35", 0.3522), n("52", 0.5182), n("44", 0.4438), n("54", 0.5384), ),
))

#heading(level: 3, "By Education")
#xtab(("Item", "Metric", ), ("Total", "HS or less", "Some college", "BA+", ), ("2410", "648", "851", "911", ), (
  ("Jobs", "TOTAL high priority", p("87", 0.8671), p("81", 0.8147), p("88", 0.8845), p("91", 0.9064), ),
  ("", "TOTAL lower priority", p("9", 0.0860), p("11", 0.1086), p("8", 0.0754), p("7", 0.0711), ),
  ("", "NET priority", n("78", 0.7811), n("71", 0.7061), n("81", 0.8090), n("84", 0.8353), ),
  ("Inflation", "TOTAL high priority", p("91", 0.9101), p("85", 0.8452), p("92", 0.9169), p("97", 0.9693), ),
  ("", "TOTAL lower priority", p("5", 0.0473), p("7", 0.0733), p("5", 0.0504), p("2", 0.0194), ),
  ("", "NET priority", n("86", 0.8627), n("77", 0.7719), n("87", 0.8665), n("95", 0.9499), ),
  ("AI harms", "TOTAL high priority", p("81", 0.8062), p("74", 0.7393), p("80", 0.7991), p("88", 0.8773), ),
  ("", "TOTAL lower priority", p("14", 0.1420), p("16", 0.1649), p("16", 0.1600), p("11", 0.1064), ),
  ("", "NET priority", n("66", 0.6642), n("57", 0.5745), n("64", 0.6390), n("77", 0.7709), ),
  ("Immigration", "TOTAL high priority", p("73", 0.7318), p("70", 0.6987), p("75", 0.7461), p("75", 0.7543), ),
  ("", "TOTAL lower priority", p("22", 0.2224), p("22", 0.2203), p("22", 0.2208), p("23", 0.2258), ),
  ("", "NET priority", n("51", 0.5093), n("48", 0.4784), n("53", 0.5253), n("53", 0.5285), ),
  ("Health care", "TOTAL high priority", p("91", 0.9053), p("87", 0.8687), p("90", 0.9021), p("94", 0.9436), ),
  ("", "TOTAL lower priority", p("5", 0.0541), p("5", 0.0518), p("6", 0.0637), p("5", 0.0495), ),
  ("", "NET priority", n("85", 0.8512), n("82", 0.8169), n("84", 0.8384), n("89", 0.8942), ),
  ("Crime", "TOTAL high priority", p("86", 0.8646), p("83", 0.8315), p("91", 0.9060), p("87", 0.8678), ),
  ("", "TOTAL lower priority", p("10", 0.0983), p("10", 0.0960), p("7", 0.0691), p("12", 0.1213), ),
  ("", "NET priority", n("77", 0.7663), n("74", 0.7356), n("84", 0.8369), n("75", 0.7465), ),
  ("Climate change", "TOTAL high priority", p("68", 0.6784), p("64", 0.6430), p("63", 0.6296), p("75", 0.7481), ),
  ("", "TOTAL lower priority", p("27", 0.2721), p("27", 0.2697), p("33", 0.3287), p("23", 0.2343), ),
  ("", "NET priority", n("41", 0.4063), n("37", 0.3733), n("30", 0.3009), n("51", 0.5138), ),
))

#heading(level: 3, "By Household income")
#xtab(("Item", "Metric", ), ("Total", "<50k", "50k-<100k", "100k+", ), ("2410", "832", "745", "833", ), (
  ("Jobs", "TOTAL high priority", p("87", 0.8671), p("83", 0.8331), p("88", 0.8754), p("90", 0.8971), ),
  ("", "TOTAL lower priority", p("9", 0.0860), p("10", 0.0990), p("7", 0.0691), p("9", 0.0866), ),
  ("", "NET priority", n("78", 0.7811), n("73", 0.7341), n("81", 0.8063), n("81", 0.8105), ),
  ("Inflation", "TOTAL high priority", p("91", 0.9101), p("85", 0.8487), p("93", 0.9311), p("96", 0.9590), ),
  ("", "TOTAL lower priority", p("5", 0.0473), p("7", 0.0697), p("4", 0.0357), p("3", 0.0330), ),
  ("", "NET priority", n("86", 0.8627), n("78", 0.7790), n("90", 0.8954), n("93", 0.9260), ),
  ("AI harms", "TOTAL high priority", p("81", 0.8062), p("75", 0.7542), p("81", 0.8134), p("86", 0.8570), ),
  ("", "TOTAL lower priority", p("14", 0.1420), p("16", 0.1576), p("14", 0.1421), p("12", 0.1246), ),
  ("", "NET priority", n("66", 0.6642), n("60", 0.5966), n("67", 0.6712), n("73", 0.7324), ),
  ("Immigration", "TOTAL high priority", p("73", 0.7318), p("69", 0.6929), p("76", 0.7557), p("75", 0.7534), ),
  ("", "TOTAL lower priority", p("22", 0.2224), p("23", 0.2299), p("21", 0.2075), p("23", 0.2274), ),
  ("", "NET priority", n("51", 0.5093), n("46", 0.4629), n("55", 0.5482), n("53", 0.5260), ),
  ("Health care", "TOTAL high priority", p("91", 0.9053), p("87", 0.8734), p("92", 0.9151), p("93", 0.9316), ),
  ("", "TOTAL lower priority", p("5", 0.0541), p("5", 0.0536), p("4", 0.0448), p("6", 0.0628), ),
  ("", "NET priority", n("85", 0.8512), n("82", 0.8199), n("87", 0.8703), n("87", 0.8688), ),
  ("Crime", "TOTAL high priority", p("86", 0.8646), p("83", 0.8303), p("89", 0.8881), p("88", 0.8816), ),
  ("", "TOTAL lower priority", p("10", 0.0983), p("10", 0.1016), p("8", 0.0759), p("11", 0.1143), ),
  ("", "NET priority", n("77", 0.7663), n("73", 0.7287), n("81", 0.8121), n("77", 0.7673), ),
  ("Climate change", "TOTAL high priority", p("68", 0.6784), p("67", 0.6725), p("65", 0.6472), p("71", 0.7124), ),
  ("", "TOTAL lower priority", p("27", 0.2721), p("24", 0.2389), p("31", 0.3069), p("28", 0.2780), ),
  ("", "NET priority", n("41", 0.4063), n("43", 0.4336), n("34", 0.3403), n("43", 0.4344), ),
))

#heading(level: 2, "Affect")

#stem("Thinking about AI's growing role in society, which of these options comes closest to how you feel, even if none are exactly right?")

#defs("Each total combines multiple responses:", ("Total", "Responses", ), (
  ("TOTAL excited", "\"Very excited\" or \"Somewhat excited\"", ),
  ("TOTAL concerned", "\"Somewhat concerned\" or \"Very concerned\"", ),
))

#note[Cells (weighted): totals (%) and net (percentage points).]
#heading(level: 3, "By Sex")
#xtab(("Metric", ), ("Total", "Female", "Male", ), ("2410", "1291", "1119", ), (
  ("TOTAL excited", p("21", 0.2085), p("17", 0.1729), p("25", 0.2467), ),
  ("TOTAL concerned", p("69", 0.6905), p("72", 0.7240), p("65", 0.6545), ),
  ("None of these", p("10", 0.0961), p("10", 0.0976), p("9", 0.0945), ),
  ("No answer", p("<1", 0.0049), p("1", 0.0055), p("<1", 0.0043), ),
  ("NET concerned", n("48", 0.4820), n("55", 0.5510), n("41", 0.4078), ),
))

#heading(level: 3, "By Party")
#xtab(("Metric", ), ("Total", "Dem", "Rep", "Ind", ), ("2410", "1263", "695", "450", ), (
  ("TOTAL excited", p("21", 0.2085), p("18", 0.1814), p("27", 0.2672), p("17", 0.1714), ),
  ("TOTAL concerned", p("69", 0.6905), p("77", 0.7696), p("64", 0.6417), p("62", 0.6191), ),
  ("None of these", p("10", 0.0961), p("4", 0.0432), p("9", 0.0907), p("20", 0.2047), ),
  ("No answer", p("<1", 0.0049), p("1", 0.0058), p("<1", 0.0005), p("<1", 0.0048), ),
  ("NET concerned", n("48", 0.4820), n("59", 0.5882), n("37", 0.3745), n("45", 0.4477), ),
))

#heading(level: 3, "By Age")
#xtab(("Metric", ), ("Total", "18–34", "35–49", "50–64", "65+", ), ("2410", "555", "654", "579", "622", ), (
  ("TOTAL excited", p("21", 0.2085), p("21", 0.2090), p("22", 0.2202), p("22", 0.2156), p("19", 0.1896), ),
  ("TOTAL concerned", p("69", 0.6905), p("67", 0.6652), p("66", 0.6614), p("72", 0.7190), p("72", 0.7234), ),
  ("None of these", p("10", 0.0961), p("12", 0.1212), p("10", 0.1042), p("7", 0.0655), p("9", 0.0867), ),
  ("No answer", p("<1", 0.0049), p("<1", 0.0047), p("1", 0.0142), p("0", 0.0000), p("<1", 0.0003), ),
  ("NET concerned", n("48", 0.4820), n("46", 0.4562), n("44", 0.4412), n("50", 0.5034), n("53", 0.5338), ),
))

#heading(level: 3, "By Ethnicity")
#xtab(("Metric", ), ("Total", "White", "Black", "Hispanic", "Asian/PI", ), ("2410", "1218", "447", "478", "171", ), (
  ("TOTAL excited", p("21", 0.2085), p("20", 0.1984), p("20", 0.1992), p("21", 0.2100), p("30", 0.3004), ),
  ("TOTAL concerned", p("69", 0.6905), p("73", 0.7250), p("64", 0.6419), p("64", 0.6439), p("62", 0.6194), ),
  ("None of these", p("10", 0.0961), p("7", 0.0731), p("14", 0.1437), p("14", 0.1405), p("8", 0.0802), ),
  ("No answer", p("<1", 0.0049), p("<1", 0.0035), p("2", 0.0152), p("1", 0.0056), p("0", 0.0000), ),
  ("NET concerned", n("48", 0.4820), n("53", 0.5266), n("44", 0.4427), n("43", 0.4339), n("32", 0.3190), ),
))

#heading(level: 3, "By Education")
#xtab(("Metric", ), ("Total", "HS or less", "Some college", "BA+", ), ("2410", "648", "851", "911", ), (
  ("TOTAL excited", p("21", 0.2085), p("18", 0.1830), p("23", 0.2271), p("22", 0.2204), ),
  ("TOTAL concerned", p("69", 0.6905), p("66", 0.6564), p("69", 0.6855), p("73", 0.7277), ),
  ("None of these", p("10", 0.0961), p("16", 0.1556), p("8", 0.0847), p("5", 0.0454), ),
  ("No answer", p("<1", 0.0049), p("<1", 0.0049), p("<1", 0.0026), p("1", 0.0065), ),
  ("NET concerned", n("48", 0.4820), n("47", 0.4734), n("46", 0.4584), n("51", 0.5073), ),
))

#heading(level: 3, "By Household income")
#xtab(("Metric", ), ("Total", "<50k", "50k-<100k", "100k+", ), ("2410", "832", "745", "833", ), (
  ("TOTAL excited", p("21", 0.2085), p("18", 0.1841), p("19", 0.1934), p("25", 0.2486), ),
  ("TOTAL concerned", p("69", 0.6905), p("67", 0.6714), p("72", 0.7194), p("69", 0.6860), ),
  ("None of these", p("10", 0.0961), p("14", 0.1398), p("8", 0.0801), p("6", 0.0621), ),
  ("No answer", p("<1", 0.0049), p("<1", 0.0046), p("1", 0.0071), p("<1", 0.0033), ),
  ("NET concerned", n("48", 0.4820), n("49", 0.4873), n("53", 0.5259), n("44", 0.4373), ),
))

#heading(level: 2, "Agency")

#stem("Again, thinking about AI, which statement comes closer to your view, even if neither is exactly right?")

#note[Cells (weighted): totals (%) and net (percentage points).]
#heading(level: 3, "By Sex")
#xtab(("Metric", ), ("Total", "Female", "Male", ), ("2410", "1291", "1119", ), (
  ("TOTAL can shape", p("13", 0.1314), p("14", 0.1388), p("12", 0.1235), ),
  ("TOTAL inevitable", p("71", 0.7131), p("71", 0.7097), p("72", 0.7168), ),
  ("Neither of these", p("15", 0.1464), p("15", 0.1462), p("15", 0.1465), ),
  ("No answer", p("1", 0.0091), p("1", 0.0052), p("1", 0.0132), ),
  ("NET inevitable", n("58", 0.5817), n("57", 0.5709), n("59", 0.5933), ),
))

#heading(level: 3, "By Party")
#xtab(("Metric", ), ("Total", "Dem", "Rep", "Ind", ), ("2410", "1263", "695", "450", ), (
  ("TOTAL can shape", p("13", 0.1314), p("15", 0.1512), p("14", 0.1405), p("8", 0.0824), ),
  ("TOTAL inevitable", p("71", 0.7131), p("71", 0.7129), p("75", 0.7483), p("66", 0.6602), ),
  ("Neither of these", p("15", 0.1464), p("13", 0.1296), p("10", 0.1021), p("25", 0.2483), ),
  ("No answer", p("1", 0.0091), p("1", 0.0063), p("1", 0.0090), p("1", 0.0090), ),
  ("NET inevitable", n("58", 0.5817), n("56", 0.5617), n("61", 0.6078), n("58", 0.5778), ),
))

#heading(level: 3, "By Age")
#xtab(("Metric", ), ("Total", "18–34", "35–49", "50–64", "65+", ), ("2410", "555", "654", "579", "622", ), (
  ("TOTAL can shape", p("13", 0.1314), p("15", 0.1476), p("15", 0.1513), p("12", 0.1239), p("10", 0.0991), ),
  ("TOTAL inevitable", p("71", 0.7131), p("63", 0.6275), p("68", 0.6826), p("75", 0.7510), p("81", 0.8102), ),
  ("Neither of these", p("15", 0.1464), p("20", 0.2034), p("16", 0.1584), p("12", 0.1224), p("9", 0.0889), ),
  ("No answer", p("1", 0.0091), p("2", 0.0214), p("1", 0.0077), p("<1", 0.0027), p("<1", 0.0018), ),
  ("NET inevitable", n("58", 0.5817), n("48", 0.4798), n("53", 0.5312), n("63", 0.6270), n("71", 0.7111), ),
))

#heading(level: 3, "By Ethnicity")
#xtab(("Metric", ), ("Total", "White", "Black", "Hispanic", "Asian/PI", ), ("2410", "1218", "447", "478", "171", ), (
  ("TOTAL can shape", p("13", 0.1314), p("13", 0.1299), p("14", 0.1445), p("13", 0.1252), p("11", 0.1052), ),
  ("TOTAL inevitable", p("71", 0.7131), p("74", 0.7424), p("64", 0.6367), p("66", 0.6631), p("80", 0.7977), ),
  ("Neither of these", p("15", 0.1464), p("12", 0.1232), p("21", 0.2058), p("19", 0.1923), p("8", 0.0821), ),
  ("No answer", p("1", 0.0091), p("<1", 0.0046), p("1", 0.0131), p("2", 0.0194), p("2", 0.0150), ),
  ("NET inevitable", n("58", 0.5817), n("61", 0.6125), n("49", 0.4922), n("54", 0.5379), n("69", 0.6925), ),
))

#heading(level: 3, "By Education")
#xtab(("Metric", ), ("Total", "HS or less", "Some college", "BA+", ), ("2410", "648", "851", "911", ), (
  ("TOTAL can shape", p("13", 0.1314), p("12", 0.1183), p("15", 0.1461), p("13", 0.1340), ),
  ("TOTAL inevitable", p("71", 0.7131), p("64", 0.6425), p("73", 0.7307), p("77", 0.7704), ),
  ("Neither of these", p("15", 0.1464), p("22", 0.2234), p("12", 0.1212), p("9", 0.0881), ),
  ("No answer", p("1", 0.0091), p("2", 0.0158), p("<1", 0.0020), p("1", 0.0075), ),
  ("NET inevitable", n("58", 0.5817), n("52", 0.5242), n("58", 0.5846), n("64", 0.6364), ),
))

#heading(level: 3, "By Household income")
#xtab(("Metric", ), ("Total", "<50k", "50k-<100k", "100k+", ), ("2410", "832", "745", "833", ), (
  ("TOTAL can shape", p("13", 0.1314), p("13", 0.1265), p("13", 0.1302), p("14", 0.1380), ),
  ("TOTAL inevitable", p("71", 0.7131), p("64", 0.6417), p("75", 0.7460), p("76", 0.7627), ),
  ("Neither of these", p("15", 0.1464), p("22", 0.2221), p("11", 0.1105), p("9", 0.0947), ),
  ("No answer", p("1", 0.0091), p("1", 0.0098), p("1", 0.0132), p("<1", 0.0046), ),
  ("NET inevitable", n("58", 0.5817), n("52", 0.5152), n("62", 0.6158), n("62", 0.6247), ),
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
#xtab(("Item", "Metric", ), ("Total", "Female", "Male", ), ("2410", "1291", "1119", ), (
  ("Saving time", "TOTAL realized", p("49", 0.4927), p("47", 0.4657), p("52", 0.5217), ),
  ("", "TOTAL not yet", p("27", 0.2726), p("29", 0.2865), p("26", 0.2577), ),
  ("", "NET realized", n("22", 0.2201), n("18", 0.1792), n("26", 0.2640), ),
  ("Pressured to do more", "TOTAL realized", p("50", 0.4966), p("52", 0.5186), p("47", 0.4730), ),
  ("", "TOTAL not yet", p("27", 0.2700), p("25", 0.2508), p("29", 0.2907), ),
  ("", "NET realized", n("23", 0.2266), n("27", 0.2678), n("18", 0.1824), ),
  ("Losing connections", "TOTAL realized", p("58", 0.5812), p("62", 0.6224), p("54", 0.5368), ),
  ("", "TOTAL not yet", p("25", 0.2503), p("22", 0.2216), p("28", 0.2811), ),
  ("", "NET realized", n("33", 0.3309), n("40", 0.4008), n("26", 0.2557), ),
  ("Real vs. fake", "TOTAL realized", p("79", 0.7856), p("82", 0.8157), p("75", 0.7532), ),
  ("", "TOTAL not yet", p("12", 0.1184), p("10", 0.1003), p("14", 0.1379), ),
  ("", "NET realized", n("67", 0.6672), n("72", 0.7155), n("62", 0.6153), ),
  ("Better health care", "TOTAL realized", p("17", 0.1705), p("16", 0.1610), p("18", 0.1806), ),
  ("", "TOTAL not yet", p("53", 0.5327), p("55", 0.5462), p("52", 0.5182), ),
  ("", "NET realized", n("−36", -0.3622), n("−39", -0.3852), n("−34", -0.3376), ),
))

#heading(level: 3, "By Party")
#xtab(("Item", "Metric", ), ("Total", "Dem", "Rep", "Ind", ), ("2410", "1263", "695", "450", ), (
  ("Saving time", "TOTAL realized", p("49", 0.4927), p("52", 0.5246), p("52", 0.5235), p("39", 0.3925), ),
  ("", "TOTAL not yet", p("27", 0.2726), p("28", 0.2788), p("24", 0.2442), p("31", 0.3092), ),
  ("", "NET realized", n("22", 0.2201), n("25", 0.2459), n("28", 0.2793), n("8", 0.0833), ),
  ("Pressured to do more", "TOTAL realized", p("50", 0.4966), p("55", 0.5469), p("46", 0.4592), p("46", 0.4587), ),
  ("", "TOTAL not yet", p("27", 0.2700), p("25", 0.2489), p("30", 0.3038), p("26", 0.2609), ),
  ("", "NET realized", n("23", 0.2266), n("30", 0.2980), n("16", 0.1554), n("20", 0.1977), ),
  ("Losing connections", "TOTAL realized", p("58", 0.5812), p("63", 0.6273), p("57", 0.5706), p("51", 0.5107), ),
  ("", "TOTAL not yet", p("25", 0.2503), p("22", 0.2239), p("28", 0.2793), p("26", 0.2584), ),
  ("", "NET realized", n("33", 0.3309), n("40", 0.4034), n("29", 0.2913), n("25", 0.2523), ),
  ("Real vs. fake", "TOTAL realized", p("79", 0.7856), p("85", 0.8492), p("78", 0.7759), p("68", 0.6839), ),
  ("", "TOTAL not yet", p("12", 0.1184), p("9", 0.0855), p("13", 0.1334), p("16", 0.1585), ),
  ("", "NET realized", n("67", 0.6672), n("76", 0.7637), n("64", 0.6425), n("53", 0.5254), ),
  ("Better health care", "TOTAL realized", p("17", 0.1705), p("14", 0.1421), p("21", 0.2064), p("16", 0.1615), ),
  ("", "TOTAL not yet", p("53", 0.5327), p("61", 0.6066), p("49", 0.4904), p("47", 0.4679), ),
  ("", "NET realized", n("−36", -0.3622), n("−46", -0.4645), n("−28", -0.2840), n("−31", -0.3064), ),
))

#heading(level: 3, "By Age")
#xtab(("Item", "Metric", ), ("Total", "18–34", "35–49", "50–64", "65+", ), ("2410", "555", "654", "579", "622", ), (
  ("Saving time", "TOTAL realized", p("49", 0.4927), p("55", 0.5495), p("51", 0.5131), p("49", 0.4926), p("40", 0.4047), ),
  ("", "TOTAL not yet", p("27", 0.2726), p("26", 0.2595), p("28", 0.2778), p("27", 0.2714), p("28", 0.2841), ),
  ("", "NET realized", n("22", 0.2201), n("29", 0.2900), n("24", 0.2353), n("22", 0.2213), n("12", 0.1206), ),
  ("Pressured to do more", "TOTAL realized", p("50", 0.4966), p("61", 0.6056), p("56", 0.5572), p("43", 0.4302), p("37", 0.3680), ),
  ("", "TOTAL not yet", p("27", 0.2700), p("21", 0.2088), p("24", 0.2431), p("32", 0.3228), p("32", 0.3207), ),
  ("", "NET realized", n("23", 0.2266), n("40", 0.3968), n("31", 0.3142), n("11", 0.1074), n("5", 0.0473), ),
  ("Losing connections", "TOTAL realized", p("58", 0.5812), p("59", 0.5918), p("63", 0.6292), p("59", 0.5886), p("51", 0.5131), ),
  ("", "TOTAL not yet", p("25", 0.2503), p("26", 0.2608), p("22", 0.2167), p("24", 0.2396), p("28", 0.2819), ),
  ("", "NET realized", n("33", 0.3309), n("33", 0.3310), n("41", 0.4125), n("35", 0.3491), n("23", 0.2311), ),
  ("Real vs. fake", "TOTAL realized", p("79", 0.7856), p("76", 0.7621), p("78", 0.7820), p("82", 0.8190), p("79", 0.7859), ),
  ("", "TOTAL not yet", p("12", 0.1184), p("13", 0.1282), p("13", 0.1255), p("10", 0.1036), p("11", 0.1134), ),
  ("", "NET realized", n("67", 0.6672), n("63", 0.6340), n("66", 0.6565), n("72", 0.7154), n("67", 0.6725), ),
  ("Better health care", "TOTAL realized", p("17", 0.1705), p("17", 0.1716), p("18", 0.1754), p("13", 0.1349), p("20", 0.1973), ),
  ("", "TOTAL not yet", p("53", 0.5327), p("58", 0.5807), p("56", 0.5629), p("50", 0.5042), p("47", 0.4718), ),
  ("", "NET realized", n("−36", -0.3622), n("−41", -0.4091), n("−39", -0.3875), n("−37", -0.3693), n("−27", -0.2745), ),
))

#heading(level: 3, "By Ethnicity")
#xtab(("Item", "Metric", ), ("Total", "White", "Black", "Hispanic", "Asian/PI", ), ("2410", "1218", "447", "478", "171", ), (
  ("Saving time", "TOTAL realized", p("49", 0.4927), p("49", 0.4885), p("47", 0.4724), p("48", 0.4777), p("63", 0.6258), ),
  ("", "TOTAL not yet", p("27", 0.2726), p("27", 0.2718), p("22", 0.2211), p("30", 0.2976), p("26", 0.2626), ),
  ("", "NET realized", n("22", 0.2201), n("22", 0.2168), n("25", 0.2513), n("18", 0.1801), n("36", 0.3632), ),
  ("Pressured to do more", "TOTAL realized", p("50", 0.4966), p("49", 0.4920), p("49", 0.4853), p("51", 0.5122), p("59", 0.5901), ),
  ("", "TOTAL not yet", p("27", 0.2700), p("28", 0.2803), p("21", 0.2059), p("26", 0.2647), p("24", 0.2372), ),
  ("", "NET realized", n("23", 0.2266), n("21", 0.2117), n("28", 0.2794), n("25", 0.2474), n("35", 0.3529), ),
  ("Losing connections", "TOTAL realized", p("58", 0.5812), p("59", 0.5914), p("53", 0.5253), p("57", 0.5707), p("64", 0.6392), ),
  ("", "TOTAL not yet", p("25", 0.2503), p("26", 0.2604), p("24", 0.2435), p("26", 0.2552), p("18", 0.1821), ),
  ("", "NET realized", n("33", 0.3309), n("33", 0.3310), n("28", 0.2818), n("32", 0.3155), n("46", 0.4572), ),
  ("Real vs. fake", "TOTAL realized", p("79", 0.7856), p("82", 0.8164), p("69", 0.6863), p("75", 0.7490), p("81", 0.8149), ),
  ("", "TOTAL not yet", p("12", 0.1184), p("11", 0.1103), p("15", 0.1539), p("13", 0.1308), p("11", 0.1112), ),
  ("", "NET realized", n("67", 0.6672), n("71", 0.7061), n("53", 0.5324), n("62", 0.6182), n("70", 0.7037), ),
  ("Better health care", "TOTAL realized", p("17", 0.1705), p("17", 0.1653), p("17", 0.1726), p("20", 0.1955), p("16", 0.1602), ),
  ("", "TOTAL not yet", p("53", 0.5327), p("55", 0.5535), p("44", 0.4422), p("52", 0.5202), p("53", 0.5253), ),
  ("", "NET realized", n("−36", -0.3622), n("−39", -0.3883), n("−27", -0.2697), n("−32", -0.3247), n("−37", -0.3651), ),
))

#heading(level: 3, "By Education")
#xtab(("Item", "Metric", ), ("Total", "HS or less", "Some college", "BA+", ), ("2410", "648", "851", "911", ), (
  ("Saving time", "TOTAL realized", p("49", 0.4927), p("40", 0.4047), p("47", 0.4663), p("60", 0.5984), ),
  ("", "TOTAL not yet", p("27", 0.2726), p("29", 0.2942), p("27", 0.2668), p("26", 0.2554), ),
  ("", "NET realized", n("22", 0.2201), n("11", 0.1105), n("20", 0.1996), n("34", 0.3430), ),
  ("Pressured to do more", "TOTAL realized", p("50", 0.4966), p("45", 0.4531), p("44", 0.4416), p("58", 0.5788), ),
  ("", "TOTAL not yet", p("27", 0.2700), p("27", 0.2665), p("32", 0.3171), p("24", 0.2400), ),
  ("", "NET realized", n("23", 0.2266), n("19", 0.1866), n("12", 0.1244), n("34", 0.3389), ),
  ("Losing connections", "TOTAL realized", p("58", 0.5812), p("51", 0.5129), p("60", 0.6005), p("63", 0.6349), ),
  ("", "TOTAL not yet", p("25", 0.2503), p("28", 0.2753), p("24", 0.2447), p("23", 0.2296), ),
  ("", "NET realized", n("33", 0.3309), n("24", 0.2376), n("36", 0.3557), n("41", 0.4054), ),
  ("Real vs. fake", "TOTAL realized", p("79", 0.7856), p("70", 0.6951), p("80", 0.8017), p("86", 0.8636), ),
  ("", "TOTAL not yet", p("12", 0.1184), p("16", 0.1553), p("11", 0.1074), p("9", 0.0897), ),
  ("", "NET realized", n("67", 0.6672), n("54", 0.5398), n("69", 0.6943), n("77", 0.7739), ),
  ("Better health care", "TOTAL realized", p("17", 0.1705), p("21", 0.2081), p("15", 0.1542), p("14", 0.1449), ),
  ("", "TOTAL not yet", p("53", 0.5327), p("45", 0.4459), p("54", 0.5383), p("61", 0.6146), ),
  ("", "NET realized", n("−36", -0.3622), n("−24", -0.2378), n("−38", -0.3841), n("−47", -0.4697), ),
))

#heading(level: 3, "By Household income")
#xtab(("Item", "Metric", ), ("Total", "<50k", "50k-<100k", "100k+", ), ("2410", "832", "745", "833", ), (
  ("Saving time", "TOTAL realized", p("49", 0.4927), p("40", 0.4041), p("47", 0.4652), p("61", 0.6144), ),
  ("", "TOTAL not yet", p("27", 0.2726), p("29", 0.2894), p("31", 0.3059), p("22", 0.2248), ),
  ("", "NET realized", n("22", 0.2201), n("11", 0.1146), n("16", 0.1594), n("39", 0.3897), ),
  ("Pressured to do more", "TOTAL realized", p("50", 0.4966), p("43", 0.4345), p("51", 0.5129), p("55", 0.5507), ),
  ("", "TOTAL not yet", p("27", 0.2700), p("27", 0.2657), p("27", 0.2715), p("27", 0.2734), ),
  ("", "NET realized", n("23", 0.2266), n("17", 0.1687), n("24", 0.2414), n("28", 0.2773), ),
  ("Losing connections", "TOTAL realized", p("58", 0.5812), p("57", 0.5691), p("57", 0.5682), p("61", 0.6059), ),
  ("", "TOTAL not yet", p("25", 0.2503), p("24", 0.2400), p("26", 0.2642), p("25", 0.2494), ),
  ("", "NET realized", n("33", 0.3309), n("33", 0.3291), n("30", 0.3040), n("36", 0.3565), ),
  ("Real vs. fake", "TOTAL realized", p("79", 0.7856), p("71", 0.7142), p("78", 0.7822), p("87", 0.8672), ),
  ("", "TOTAL not yet", p("12", 0.1184), p("14", 0.1371), p("13", 0.1348), p("8", 0.0834), ),
  ("", "NET realized", n("67", 0.6672), n("58", 0.5770), n("65", 0.6474), n("78", 0.7838), ),
  ("Better health care", "TOTAL realized", p("17", 0.1705), p("19", 0.1934), p("14", 0.1442), p("17", 0.1684), ),
  ("", "TOTAL not yet", p("53", 0.5327), p("47", 0.4741), p("56", 0.5614), p("57", 0.5718), ),
  ("", "NET realized", n("−36", -0.3622), n("−28", -0.2807), n("−42", -0.4172), n("−40", -0.4034), ),
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
#xtab(("Item", "Metric", ), ("Total", "Female", "Male", ), ("2410", "1291", "1119", ), (
  ("Jobs", "TOTAL better", p("12", 0.1156), p("10", 0.1006), p("13", 0.1318), ),
  ("", "TOTAL worse", p("75", 0.7524), p("79", 0.7923), p("71", 0.7094), ),
  ("", "NET worse", n("64", 0.6368), n("69", 0.6917), n("58", 0.5777), ),
  ("Future", "TOTAL better", p("30", 0.3034), p("24", 0.2386), p("37", 0.3730), ),
  ("", "TOTAL worse", p("57", 0.5664), p("64", 0.6407), p("49", 0.4866), ),
  ("", "NET worse", n("26", 0.2630), n("40", 0.4021), n("11", 0.1135), ),
  ("Children", "TOTAL better", p("16", 0.1636), p("13", 0.1330), p("20", 0.1964), ),
  ("", "TOTAL worse", p("66", 0.6636), p("73", 0.7311), p("59", 0.5911), ),
  ("", "NET worse", n("50", 0.5000), n("60", 0.5980), n("39", 0.3947), ),
  ("Finances", "TOTAL better", p("24", 0.2383), p("20", 0.2032), p("28", 0.2760), ),
  ("", "TOTAL worse", p("45", 0.4495), p("50", 0.4985), p("40", 0.3969), ),
  ("", "NET worse", n("21", 0.2112), n("30", 0.2953), n("12", 0.1208), ),
))

#heading(level: 3, "By Party")
#xtab(("Item", "Metric", ), ("Total", "Dem", "Rep", "Ind", ), ("2410", "1263", "695", "450", ), (
  ("Jobs", "TOTAL better", p("12", 0.1156), p("10", 0.0990), p("16", 0.1595), p("8", 0.0803), ),
  ("", "TOTAL worse", p("75", 0.7524), p("82", 0.8222), p("69", 0.6912), p("72", 0.7181), ),
  ("", "NET worse", n("64", 0.6368), n("72", 0.7232), n("53", 0.5317), n("64", 0.6379), ),
  ("Future", "TOTAL better", p("30", 0.3034), p("23", 0.2304), p("42", 0.4198), p("26", 0.2642), ),
  ("", "TOTAL worse", p("57", 0.5664), p("68", 0.6780), p("45", 0.4525), p("53", 0.5333), ),
  ("", "NET worse", n("26", 0.2630), n("45", 0.4476), n("3", 0.0327), n("27", 0.2691), ),
  ("Children", "TOTAL better", p("16", 0.1636), p("14", 0.1446), p("22", 0.2220), p("11", 0.1108), ),
  ("", "TOTAL worse", p("66", 0.6636), p("73", 0.7274), p("60", 0.6039), p("64", 0.6373), ),
  ("", "NET worse", n("50", 0.5000), n("58", 0.5827), n("38", 0.3819), n("53", 0.5265), ),
  ("Finances", "TOTAL better", p("24", 0.2383), p("21", 0.2050), p("31", 0.3113), p("19", 0.1910), ),
  ("", "TOTAL worse", p("45", 0.4495), p("50", 0.5023), p("37", 0.3650), p("48", 0.4789), ),
  ("", "NET worse", n("21", 0.2112), n("30", 0.2973), n("5", 0.0537), n("29", 0.2879), ),
))

#heading(level: 3, "By Age")
#xtab(("Item", "Metric", ), ("Total", "18–34", "35–49", "50–64", "65+", ), ("2410", "555", "654", "579", "622", ), (
  ("Jobs", "TOTAL better", p("12", 0.1156), p("11", 0.1050), p("14", 0.1379), p("10", 0.1023), p("12", 0.1179), ),
  ("", "TOTAL worse", p("75", 0.7524), p("79", 0.7900), p("72", 0.7171), p("78", 0.7831), p("71", 0.7149), ),
  ("", "NET worse", n("64", 0.6368), n("69", 0.6850), n("58", 0.5792), n("68", 0.6808), n("60", 0.5969), ),
  ("Future", "TOTAL better", p("30", 0.3034), p("26", 0.2638), p("29", 0.2881), p("30", 0.2957), p("37", 0.3730), ),
  ("", "TOTAL worse", p("57", 0.5664), p("62", 0.6215), p("57", 0.5657), p("61", 0.6105), p("46", 0.4609), ),
  ("", "NET worse", n("26", 0.2630), n("36", 0.3577), n("28", 0.2776), n("31", 0.3148), n("9", 0.0878), ),
  ("Children", "TOTAL better", p("16", 0.1636), p("13", 0.1337), p("17", 0.1729), p("17", 0.1700), p("18", 0.1835), ),
  ("", "TOTAL worse", p("66", 0.6636), p("73", 0.7339), p("64", 0.6407), p("69", 0.6895), p("58", 0.5793), ),
  ("", "NET worse", n("50", 0.5000), n("60", 0.6002), n("47", 0.4678), n("52", 0.5196), n("40", 0.3958), ),
  ("Finances", "TOTAL better", p("24", 0.2383), p("23", 0.2260), p("24", 0.2438), p("22", 0.2229), p("26", 0.2617), ),
  ("", "TOTAL worse", p("45", 0.4495), p("48", 0.4778), p("44", 0.4386), p("47", 0.4699), p("41", 0.4079), ),
  ("", "NET worse", n("21", 0.2112), n("25", 0.2519), n("19", 0.1948), n("25", 0.2471), n("15", 0.1462), ),
))

#heading(level: 3, "By Ethnicity")
#xtab(("Item", "Metric", ), ("Total", "White", "Black", "Hispanic", "Asian/PI", ), ("2410", "1218", "447", "478", "171", ), (
  ("Jobs", "TOTAL better", p("12", 0.1156), p("9", 0.0927), p("17", 0.1749), p("16", 0.1563), p("13", 0.1333), ),
  ("", "TOTAL worse", p("75", 0.7524), p("78", 0.7780), p("66", 0.6560), p("72", 0.7206), p("80", 0.7962), ),
  ("", "NET worse", n("64", 0.6368), n("69", 0.6853), n("48", 0.4811), n("56", 0.5642), n("66", 0.6629), ),
  ("Future", "TOTAL better", p("30", 0.3034), p("30", 0.2979), p("31", 0.3119), p("30", 0.3043), p("35", 0.3510), ),
  ("", "TOTAL worse", p("57", 0.5664), p("57", 0.5718), p("54", 0.5362), p("58", 0.5781), p("54", 0.5383), ),
  ("", "NET worse", n("26", 0.2630), n("27", 0.2739), n("22", 0.2243), n("27", 0.2738), n("19", 0.1873), ),
  ("Children", "TOTAL better", p("16", 0.1636), p("14", 0.1401), p("22", 0.2207), p("21", 0.2071), p("19", 0.1851), ),
  ("", "TOTAL worse", p("66", 0.6636), p("70", 0.6953), p("59", 0.5949), p("60", 0.6010), p("67", 0.6747), ),
  ("", "NET worse", n("50", 0.5000), n("56", 0.5552), n("37", 0.3742), n("39", 0.3939), n("49", 0.4896), ),
  ("Finances", "TOTAL better", p("24", 0.2383), p("23", 0.2283), p("27", 0.2662), p("26", 0.2593), p("26", 0.2634), ),
  ("", "TOTAL worse", p("45", 0.4495), p("44", 0.4370), p("47", 0.4680), p("46", 0.4577), p("45", 0.4511), ),
  ("", "NET worse", n("21", 0.2112), n("21", 0.2087), n("20", 0.2018), n("20", 0.1984), n("19", 0.1877), ),
))

#heading(level: 3, "By Education")
#xtab(("Item", "Metric", ), ("Total", "HS or less", "Some college", "BA+", ), ("2410", "648", "851", "911", ), (
  ("Jobs", "TOTAL better", p("12", 0.1156), p("15", 0.1521), p("10", 0.1039), p("9", 0.0879), ),
  ("", "TOTAL worse", p("75", 0.7524), p("67", 0.6748), p("76", 0.7567), p("83", 0.8260), ),
  ("", "NET worse", n("64", 0.6368), n("52", 0.5227), n("65", 0.6529), n("74", 0.7381), ),
  ("Future", "TOTAL better", p("30", 0.3034), p("27", 0.2723), p("34", 0.3413), p("31", 0.3071), ),
  ("", "TOTAL worse", p("57", 0.5664), p("55", 0.5486), p("54", 0.5434), p("60", 0.6003), ),
  ("", "NET worse", n("26", 0.2630), n("28", 0.2763), n("20", 0.2022), n("29", 0.2932), ),
  ("Children", "TOTAL better", p("16", 0.1636), p("19", 0.1882), p("17", 0.1672), p("14", 0.1366), ),
  ("", "TOTAL worse", p("66", 0.6636), p("60", 0.5989), p("64", 0.6449), p("74", 0.7409), ),
  ("", "NET worse", n("50", 0.5000), n("41", 0.4107), n("48", 0.4776), n("60", 0.6042), ),
  ("Finances", "TOTAL better", p("24", 0.2383), p("19", 0.1895), p("25", 0.2506), p("28", 0.2778), ),
  ("", "TOTAL worse", p("45", 0.4495), p("48", 0.4809), p("43", 0.4341), p("43", 0.4294), ),
  ("", "NET worse", n("21", 0.2112), n("29", 0.2914), n("18", 0.1835), n("15", 0.1517), ),
))

#heading(level: 3, "By Household income")
#xtab(("Item", "Metric", ), ("Total", "<50k", "50k-<100k", "100k+", ), ("2410", "832", "745", "833", ), (
  ("Jobs", "TOTAL better", p("12", 0.1156), p("13", 0.1340), p("10", 0.1005), p("11", 0.1086), ),
  ("", "TOTAL worse", p("75", 0.7524), p("69", 0.6862), p("79", 0.7860), p("80", 0.7955), ),
  ("", "NET worse", n("64", 0.6368), n("55", 0.5521), n("69", 0.6854), n("69", 0.6870), ),
  ("Future", "TOTAL better", p("30", 0.3034), p("27", 0.2747), p("29", 0.2869), p("35", 0.3495), ),
  ("", "TOTAL worse", p("57", 0.5664), p("56", 0.5636), p("58", 0.5808), p("56", 0.5568), ),
  ("", "NET worse", n("26", 0.2630), n("29", 0.2889), n("29", 0.2939), n("21", 0.2073), ),
  ("Children", "TOTAL better", p("16", 0.1636), p("18", 0.1805), p("15", 0.1472), p("16", 0.1593), ),
  ("", "TOTAL worse", p("66", 0.6636), p("63", 0.6265), p("68", 0.6786), p("69", 0.6912), ),
  ("", "NET worse", n("50", 0.5000), n("45", 0.4460), n("53", 0.5314), n("53", 0.5319), ),
  ("Finances", "TOTAL better", p("24", 0.2383), p("21", 0.2100), p("22", 0.2171), p("29", 0.2881), ),
  ("", "TOTAL worse", p("45", 0.4495), p("47", 0.4686), p("48", 0.4763), p("40", 0.4049), ),
  ("", "NET worse", n("21", 0.2112), n("26", 0.2585), n("26", 0.2592), n("12", 0.1168), ),
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
#xtab(("Item", "Metric", ), ("Total", "Female", "Male", ), ("2410", "1291", "1119", ), (
  ("Children", "TOTAL too much", p("23", 0.2326), p("26", 0.2642), p("20", 0.1987), ),
  ("", "TOTAL too little", p("45", 0.4540), p("46", 0.4576), p("45", 0.4502), ),
  ("", "NET too little", n("22", 0.2214), n("19", 0.1935), n("25", 0.2515), ),
  ("Environment", "TOTAL too much", p("23", 0.2303), p("25", 0.2539), p("20", 0.2049), ),
  ("", "TOTAL too little", p("44", 0.4373), p("44", 0.4437), p("43", 0.4304), ),
  ("", "NET too little", n("21", 0.2070), n("19", 0.1898), n("23", 0.2255), ),
  ("Workers", "TOTAL too much", p("22", 0.2217), p("24", 0.2409), p("20", 0.2012), ),
  ("", "TOTAL too little", p("43", 0.4295), p("45", 0.4450), p("41", 0.4128), ),
  ("", "NET too little", n("21", 0.2078), n("20", 0.2041), n("21", 0.2117), ),
  ("Competitiveness", "TOTAL too much", p("21", 0.2107), p("23", 0.2315), p("19", 0.1883), ),
  ("", "TOTAL too little", p("31", 0.3088), p("31", 0.3140), p("30", 0.3031), ),
  ("", "NET too little", n("10", 0.0981), n("8", 0.0825), n("11", 0.1148), ),
))

#heading(level: 3, "By Party")
#xtab(("Item", "Metric", ), ("Total", "Dem", "Rep", "Ind", ), ("2410", "1263", "695", "450", ), (
  ("Children", "TOTAL too much", p("23", 0.2326), p("24", 0.2380), p("23", 0.2283), p("22", 0.2236), ),
  ("", "TOTAL too little", p("45", 0.4540), p("57", 0.5705), p("39", 0.3928), p("34", 0.3376), ),
  ("", "NET too little", n("22", 0.2214), n("33", 0.3325), n("16", 0.1645), n("11", 0.1140), ),
  ("Environment", "TOTAL too much", p("23", 0.2303), p("22", 0.2229), p("24", 0.2382), p("23", 0.2262), ),
  ("", "TOTAL too little", p("44", 0.4373), p("60", 0.5999), p("31", 0.3108), p("34", 0.3353), ),
  ("", "NET too little", n("21", 0.2070), n("38", 0.3771), n("7", 0.0725), n("11", 0.1091), ),
  ("Workers", "TOTAL too much", p("22", 0.2217), p("23", 0.2280), p("21", 0.2076), p("23", 0.2261), ),
  ("", "TOTAL too little", p("43", 0.4295), p("57", 0.5722), p("32", 0.3245), p("33", 0.3315), ),
  ("", "NET too little", n("21", 0.2078), n("34", 0.3441), n("12", 0.1169), n("11", 0.1054), ),
  ("Competitiveness", "TOTAL too much", p("21", 0.2107), p("24", 0.2350), p("16", 0.1643), p("23", 0.2310), ),
  ("", "TOTAL too little", p("31", 0.3088), p("37", 0.3731), p("28", 0.2783), p("24", 0.2402), ),
  ("", "NET too little", n("10", 0.0981), n("14", 0.1381), n("11", 0.1140), n("1", 0.0092), ),
))

#heading(level: 3, "By Age")
#xtab(("Item", "Metric", ), ("Total", "18–34", "35–49", "50–64", "65+", ), ("2410", "555", "654", "579", "622", ), (
  ("Children", "TOTAL too much", p("23", 0.2326), p("23", 0.2273), p("28", 0.2836), p("22", 0.2188), p("20", 0.2001), ),
  ("", "TOTAL too little", p("45", 0.4540), p("45", 0.4469), p("43", 0.4348), p("50", 0.5015), p("44", 0.4377), ),
  ("", "NET too little", n("22", 0.2214), n("22", 0.2196), n("15", 0.1512), n("28", 0.2827), n("24", 0.2376), ),
  ("Environment", "TOTAL too much", p("23", 0.2303), p("25", 0.2515), p("22", 0.2165), p("22", 0.2182), p("23", 0.2304), ),
  ("", "TOTAL too little", p("44", 0.4373), p("44", 0.4367), p("46", 0.4573), p("45", 0.4454), p("41", 0.4102), ),
  ("", "NET too little", n("21", 0.2070), n("19", 0.1852), n("24", 0.2408), n("23", 0.2272), n("18", 0.1798), ),
  ("Workers", "TOTAL too much", p("22", 0.2217), p("25", 0.2505), p("22", 0.2208), p("21", 0.2064), p("20", 0.2029), ),
  ("", "TOTAL too little", p("43", 0.4295), p("43", 0.4340), p("42", 0.4173), p("48", 0.4849), p("38", 0.3849), ),
  ("", "NET too little", n("21", 0.2078), n("18", 0.1835), n("20", 0.1965), n("28", 0.2786), n("18", 0.1820), ),
  ("Competitiveness", "TOTAL too much", p("21", 0.2107), p("24", 0.2412), p("23", 0.2318), p("20", 0.1968), p("17", 0.1661), ),
  ("", "TOTAL too little", p("31", 0.3088), p("29", 0.2930), p("30", 0.3004), p("35", 0.3549), p("29", 0.2931), ),
  ("", "NET too little", n("10", 0.0981), n("5", 0.0519), n("7", 0.0686), n("16", 0.1581), n("13", 0.1269), ),
))

#heading(level: 3, "By Ethnicity")
#xtab(("Item", "Metric", ), ("Total", "White", "Black", "Hispanic", "Asian/PI", ), ("2410", "1218", "447", "478", "171", ), (
  ("Children", "TOTAL too much", p("23", 0.2326), p("19", 0.1913), p("37", 0.3704), p("26", 0.2554), p("29", 0.2908), ),
  ("", "TOTAL too little", p("45", 0.4540), p("50", 0.5038), p("31", 0.3147), p("39", 0.3937), p("44", 0.4391), ),
  ("", "NET too little", n("22", 0.2214), n("31", 0.3125), n("−6", -0.0558), n("14", 0.1383), n("15", 0.1484), ),
  ("Environment", "TOTAL too much", p("23", 0.2303), p("21", 0.2069), p("32", 0.3180), p("25", 0.2499), p("25", 0.2461), ),
  ("", "TOTAL too little", p("44", 0.4373), p("48", 0.4811), p("33", 0.3305), p("38", 0.3774), p("41", 0.4052), ),
  ("", "NET too little", n("21", 0.2070), n("27", 0.2742), n("1", 0.0126), n("13", 0.1275), n("16", 0.1591), ),
  ("Workers", "TOTAL too much", p("22", 0.2217), p("18", 0.1833), p("32", 0.3248), p("28", 0.2772), p("25", 0.2490), ),
  ("", "TOTAL too little", p("43", 0.4295), p("46", 0.4609), p("29", 0.2852), p("41", 0.4127), p("43", 0.4325), ),
  ("", "NET too little", n("21", 0.2078), n("28", 0.2776), n("−4", -0.0396), n("14", 0.1354), n("18", 0.1835), ),
  ("Competitiveness", "TOTAL too much", p("21", 0.2107), p("19", 0.1866), p("30", 0.3032), p("23", 0.2329), p("23", 0.2279), ),
  ("", "TOTAL too little", p("31", 0.3088), p("33", 0.3255), p("25", 0.2507), p("29", 0.2943), p("28", 0.2812), ),
  ("", "NET too little", n("10", 0.0981), n("14", 0.1389), n("−5", -0.0525), n("6", 0.0614), n("5", 0.0533), ),
))

#heading(level: 3, "By Education")
#xtab(("Item", "Metric", ), ("Total", "HS or less", "Some college", "BA+", ), ("2410", "648", "851", "911", ), (
  ("Children", "TOTAL too much", p("23", 0.2326), p("30", 0.3025), p("22", 0.2209), p("17", 0.1719), ),
  ("", "TOTAL too little", p("45", 0.4540), p("32", 0.3215), p("45", 0.4490), p("59", 0.5887), ),
  ("", "NET too little", n("22", 0.2214), n("2", 0.0190), n("23", 0.2281), n("42", 0.4168), ),
  ("Environment", "TOTAL too much", p("23", 0.2303), p("27", 0.2714), p("23", 0.2259), p("19", 0.1928), ),
  ("", "TOTAL too little", p("44", 0.4373), p("32", 0.3165), p("42", 0.4169), p("57", 0.5712), ),
  ("", "NET too little", n("21", 0.2070), n("5", 0.0451), n("19", 0.1910), n("38", 0.3785), ),
  ("Workers", "TOTAL too much", p("22", 0.2217), p("29", 0.2890), p("22", 0.2170), p("16", 0.1586), ),
  ("", "TOTAL too little", p("43", 0.4295), p("29", 0.2909), p("44", 0.4438), p("56", 0.5563), ),
  ("", "NET too little", n("21", 0.2078), n("0", 0.0019), n("23", 0.2267), n("40", 0.3977), ),
  ("Competitiveness", "TOTAL too much", p("21", 0.2107), p("27", 0.2650), p("19", 0.1927), p("17", 0.1698), ),
  ("", "TOTAL too little", p("31", 0.3088), p("24", 0.2443), p("32", 0.3226), p("36", 0.3627), ),
  ("", "NET too little", n("10", 0.0981), n("−2", -0.0207), n("13", 0.1299), n("19", 0.1930), ),
))

#heading(level: 3, "By Household income")
#xtab(("Item", "Metric", ), ("Total", "<50k", "50k-<100k", "100k+", ), ("2410", "832", "745", "833", ), (
  ("Children", "TOTAL too much", p("23", 0.2326), p("30", 0.3000), p("20", 0.2036), p("18", 0.1841), ),
  ("", "TOTAL too little", p("45", 0.4540), p("34", 0.3393), p("51", 0.5080), p("53", 0.5327), ),
  ("", "NET too little", n("22", 0.2214), n("4", 0.0393), n("30", 0.3044), n("35", 0.3487), ),
  ("Environment", "TOTAL too much", p("23", 0.2303), p("29", 0.2851), p("20", 0.2025), p("19", 0.1945), ),
  ("", "TOTAL too little", p("44", 0.4373), p("35", 0.3508), p("49", 0.4914), p("48", 0.4847), ),
  ("", "NET too little", n("21", 0.2070), n("7", 0.0657), n("29", 0.2888), n("29", 0.2902), ),
  ("Workers", "TOTAL too much", p("22", 0.2217), p("30", 0.2951), p("18", 0.1779), p("18", 0.1797), ),
  ("", "TOTAL too little", p("43", 0.4295), p("33", 0.3323), p("49", 0.4916), p("48", 0.4816), ),
  ("", "NET too little", n("21", 0.2078), n("4", 0.0373), n("31", 0.3137), n("30", 0.3020), ),
  ("Competitiveness", "TOTAL too much", p("21", 0.2107), p("27", 0.2663), p("17", 0.1716), p("18", 0.1840), ),
  ("", "TOTAL too little", p("31", 0.3088), p("23", 0.2311), p("37", 0.3664), p("34", 0.3434), ),
  ("", "NET too little", n("10", 0.0981), n("−4", -0.0352), n("19", 0.1948), n("16", 0.1594), ),
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
#xtab(("Item", "Metric", ), ("Total", "Female", "Male", ), ("2410", "1291", "1119", ), (
  ("Superintelligence", "TOTAL likely", p("71", 0.7120), p("70", 0.7017), p("72", 0.7230), ),
  ("", "TOTAL unlikely", p("15", 0.1458), p("15", 0.1544), p("14", 0.1366), ),
  ("", "NET likely", n("57", 0.5661), n("55", 0.5473), n("59", 0.5864), ),
  ("Loss-of-control", "TOTAL likely", p("79", 0.7851), p("81", 0.8064), p("76", 0.7622), ),
  ("", "TOTAL unlikely", p("7", 0.0747), p("6", 0.0639), p("9", 0.0863), ),
  ("", "NET likely", n("71", 0.7104), n("74", 0.7424), n("68", 0.6760), ),
  ("Breakthroughs", "TOTAL likely", p("66", 0.6630), p("63", 0.6331), p("70", 0.6951), ),
  ("", "TOTAL unlikely", p("15", 0.1519), p("16", 0.1564), p("15", 0.1470), ),
  ("", "NET likely", n("51", 0.5111), n("48", 0.4767), n("55", 0.5482), ),
  ("WMDs", "TOTAL likely", p("69", 0.6882), p("71", 0.7061), p("67", 0.6689), ),
  ("", "TOTAL unlikely", p("11", 0.1149), p("8", 0.0820), p("15", 0.1502), ),
  ("", "NET likely", n("57", 0.5733), n("62", 0.6241), n("52", 0.5187), ),
))

#heading(level: 3, "By Party")
#xtab(("Item", "Metric", ), ("Total", "Dem", "Rep", "Ind", ), ("2410", "1263", "695", "450", ), (
  ("Superintelligence", "TOTAL likely", p("71", 0.7120), p("75", 0.7525), p("75", 0.7471), p("58", 0.5830), ),
  ("", "TOTAL unlikely", p("15", 0.1458), p("15", 0.1459), p("13", 0.1329), p("17", 0.1678), ),
  ("", "NET likely", n("57", 0.5661), n("61", 0.6066), n("61", 0.6142), n("42", 0.4152), ),
  ("Loss-of-control", "TOTAL likely", p("79", 0.7851), p("87", 0.8672), p("78", 0.7790), p("65", 0.6523), ),
  ("", "TOTAL unlikely", p("7", 0.0747), p("6", 0.0571), p("8", 0.0812), p("10", 0.0985), ),
  ("", "NET likely", n("71", 0.7104), n("81", 0.8101), n("70", 0.6978), n("55", 0.5538), ),
  ("Breakthroughs", "TOTAL likely", p("66", 0.6630), p("70", 0.6984), p("69", 0.6914), p("56", 0.5625), ),
  ("", "TOTAL unlikely", p("15", 0.1519), p("15", 0.1459), p("15", 0.1508), p("17", 0.1668), ),
  ("", "NET likely", n("51", 0.5111), n("55", 0.5525), n("54", 0.5405), n("40", 0.3957), ),
  ("WMDs", "TOTAL likely", p("69", 0.6882), p("76", 0.7616), p("67", 0.6701), p("59", 0.5888), ),
  ("", "TOTAL unlikely", p("11", 0.1149), p("10", 0.0976), p("11", 0.1083), p("16", 0.1593), ),
  ("", "NET likely", n("57", 0.5733), n("66", 0.6641), n("56", 0.5619), n("43", 0.4295), ),
))

#heading(level: 3, "By Age")
#xtab(("Item", "Metric", ), ("Total", "18–34", "35–49", "50–64", "65+", ), ("2410", "555", "654", "579", "622", ), (
  ("Superintelligence", "TOTAL likely", p("71", 0.7120), p("62", 0.6234), p("70", 0.7016), p("76", 0.7617), p("78", 0.7811), ),
  ("", "TOTAL unlikely", p("15", 0.1458), p("19", 0.1909), p("15", 0.1510), p("14", 0.1368), p("10", 0.0955), ),
  ("", "NET likely", n("57", 0.5661), n("43", 0.4325), n("55", 0.5506), n("62", 0.6249), n("69", 0.6857), ),
  ("Loss-of-control", "TOTAL likely", p("79", 0.7851), p("73", 0.7349), p("75", 0.7454), p("83", 0.8280), p("84", 0.8448), ),
  ("", "TOTAL unlikely", p("7", 0.0747), p("10", 0.1021), p("10", 0.0984), p("6", 0.0596), p("3", 0.0322), ),
  ("", "NET likely", n("71", 0.7104), n("63", 0.6328), n("65", 0.6470), n("77", 0.7684), n("81", 0.8126), ),
  ("Breakthroughs", "TOTAL likely", p("66", 0.6630), p("61", 0.6143), p("60", 0.5996), p("69", 0.6866), p("76", 0.7629), ),
  ("", "TOTAL unlikely", p("15", 0.1519), p("18", 0.1804), p("19", 0.1942), p("15", 0.1459), p("8", 0.0807), ),
  ("", "NET likely", n("51", 0.5111), n("43", 0.4339), n("41", 0.4054), n("54", 0.5407), n("68", 0.6823), ),
  ("WMDs", "TOTAL likely", p("69", 0.6882), p("62", 0.6162), p("68", 0.6813), p("74", 0.7374), p("73", 0.7346), ),
  ("", "TOTAL unlikely", p("11", 0.1149), p("15", 0.1511), p("12", 0.1238), p("11", 0.1066), p("7", 0.0708), ),
  ("", "NET likely", n("57", 0.5733), n("47", 0.4652), n("56", 0.5575), n("63", 0.6308), n("66", 0.6638), ),
))

#heading(level: 3, "By Ethnicity")
#xtab(("Item", "Metric", ), ("Total", "White", "Black", "Hispanic", "Asian/PI", ), ("2410", "1218", "447", "478", "171", ), (
  ("Superintelligence", "TOTAL likely", p("71", 0.7120), p("73", 0.7313), p("63", 0.6277), p("67", 0.6728), p("78", 0.7822), ),
  ("", "TOTAL unlikely", p("15", 0.1458), p("15", 0.1483), p("15", 0.1535), p("14", 0.1439), p("13", 0.1279), ),
  ("", "NET likely", n("57", 0.5661), n("58", 0.5830), n("47", 0.4742), n("53", 0.5289), n("65", 0.6544), ),
  ("Loss-of-control", "TOTAL likely", p("79", 0.7851), p("81", 0.8135), p("73", 0.7330), p("71", 0.7063), p("85", 0.8472), ),
  ("", "TOTAL unlikely", p("7", 0.0747), p("6", 0.0646), p("7", 0.0740), p("10", 0.1047), p("8", 0.0774), ),
  ("", "NET likely", n("71", 0.7104), n("75", 0.7489), n("66", 0.6590), n("60", 0.6015), n("77", 0.7699), ),
  ("Breakthroughs", "TOTAL likely", p("66", 0.6630), p("68", 0.6816), p("60", 0.5997), p("59", 0.5899), p("75", 0.7544), ),
  ("", "TOTAL unlikely", p("15", 0.1519), p("15", 0.1538), p("16", 0.1555), p("16", 0.1592), p("14", 0.1416), ),
  ("", "NET likely", n("51", 0.5111), n("53", 0.5278), n("44", 0.4442), n("43", 0.4307), n("61", 0.6128), ),
  ("WMDs", "TOTAL likely", p("69", 0.6882), p("69", 0.6852), p("66", 0.6614), p("68", 0.6767), p("76", 0.7642), ),
  ("", "TOTAL unlikely", p("11", 0.1149), p("13", 0.1301), p("9", 0.0904), p("9", 0.0885), p("11", 0.1112), ),
  ("", "NET likely", n("57", 0.5733), n("56", 0.5550), n("57", 0.5709), n("59", 0.5882), n("65", 0.6530), ),
))

#heading(level: 3, "By Education")
#xtab(("Item", "Metric", ), ("Total", "HS or less", "Some college", "BA+", ), ("2410", "648", "851", "911", ), (
  ("Superintelligence", "TOTAL likely", p("71", 0.7120), p("64", 0.6426), p("75", 0.7527), p("75", 0.7516), ),
  ("", "TOTAL unlikely", p("15", 0.1458), p("15", 0.1463), p("12", 0.1204), p("16", 0.1635), ),
  ("", "NET likely", n("57", 0.5661), n("50", 0.4963), n("63", 0.6324), n("59", 0.5881), ),
  ("Loss-of-control", "TOTAL likely", p("79", 0.7851), p("67", 0.6740), p("81", 0.8133), p("87", 0.8748), ),
  ("", "TOTAL unlikely", p("7", 0.0747), p("11", 0.1092), p("7", 0.0657), p("5", 0.0470), ),
  ("", "NET likely", n("71", 0.7104), n("56", 0.5648), n("75", 0.7476), n("83", 0.8279), ),
  ("Breakthroughs", "TOTAL likely", p("66", 0.6630), p("58", 0.5816), p("68", 0.6766), p("73", 0.7339), ),
  ("", "TOTAL unlikely", p("15", 0.1519), p("16", 0.1610), p("14", 0.1411), p("15", 0.1505), ),
  ("", "NET likely", n("51", 0.5111), n("42", 0.4206), n("54", 0.5354), n("58", 0.5833), ),
  ("WMDs", "TOTAL likely", p("69", 0.6882), p("62", 0.6161), p("71", 0.7129), p("74", 0.7419), ),
  ("", "TOTAL unlikely", p("11", 0.1149), p("12", 0.1237), p("12", 0.1186), p("10", 0.1036), ),
  ("", "NET likely", n("57", 0.5733), n("49", 0.4924), n("59", 0.5943), n("64", 0.6383), ),
))

#heading(level: 3, "By Household income")
#xtab(("Item", "Metric", ), ("Total", "<50k", "50k-<100k", "100k+", ), ("2410", "832", "745", "833", ), (
  ("Superintelligence", "TOTAL likely", p("71", 0.7120), p("66", 0.6639), p("74", 0.7368), p("74", 0.7429), ),
  ("", "TOTAL unlikely", p("15", 0.1458), p("15", 0.1475), p("15", 0.1465), p("14", 0.1433), ),
  ("", "NET likely", n("57", 0.5661), n("52", 0.5164), n("59", 0.5903), n("60", 0.5996), ),
  ("Loss-of-control", "TOTAL likely", p("79", 0.7851), p("71", 0.7088), p("82", 0.8163), p("84", 0.8415), ),
  ("", "TOTAL unlikely", p("7", 0.0747), p("8", 0.0843), p("8", 0.0822), p("6", 0.0575), ),
  ("", "NET likely", n("71", 0.7104), n("62", 0.6245), n("73", 0.7341), n("78", 0.7841), ),
  ("Breakthroughs", "TOTAL likely", p("66", 0.6630), p("61", 0.6054), p("69", 0.6935), p("70", 0.6995), ),
  ("", "TOTAL unlikely", p("15", 0.1519), p("17", 0.1699), p("13", 0.1323), p("15", 0.1493), ),
  ("", "NET likely", n("51", 0.5111), n("44", 0.4355), n("56", 0.5612), n("55", 0.5503), ),
  ("WMDs", "TOTAL likely", p("69", 0.6882), p("64", 0.6406), p("71", 0.7102), p("72", 0.7211), ),
  ("", "TOTAL unlikely", p("11", 0.1149), p("13", 0.1259), p("11", 0.1053), p("11", 0.1113), ),
  ("", "NET likely", n("57", 0.5733), n("51", 0.5147), n("61", 0.6050), n("61", 0.6098), ),
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

This is the seventh tracking wave of the *Americans on AI* survey, a
project of Athena Insights.

Respondents were interviewed between September 24 and 28, 2026 as part of NORC's
AmeriSpeak Omnibus. AmeriSpeak is a probability-based household panel
recruited by address-based sampling from the NORC National Frame, designed
to be representative of the US household population. Interviews were
conducted online (98%) and by phone (2%), in English; 2,410 adults
completed the module.

Results are weighted with NORC's vote-choice study weights. NORC first
adjusts the panel base weights for sample selection and nonresponse and
rakes to Current Population Survey benchmarks on age, sex, census
division, race/ethnicity, and education; a second round of raking then
adds 2024 presidential vote choice. The voter shares are benchmarked to
the 2024 election results. This yields a design effect of 1.73 and
an effective sample size of 1,392. The subgroups reported in this
release were oversampled by design: the weights restore population
proportions, while the additional interviews improve the precision of
those subgroup estimates. Standard errors are design-based (Taylor
linearization over NORC's variance strata and units).

The full-sample margin of error is ±2.6 percentage points at 95%
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

Unweighted demographic composition of the achieved sample (n=2,410).

Several subgroups were oversampled by design, so their unweighted shares exceed their population shares; the report's figures are weighted to NORC's Current Population Survey benchmarks (see the methodology), which restores population proportions. *Party* is profiled by NORC, not a weighting dimension of this module's design.

#comp(("Dimension", "Group", "n", "%", ), (
  ("Sex", "Female", "1291", "54", ),
  ("", "Male", "1119", "46", ),
  ("Party", "Dem", "1263", "52", ),
  ("", "Rep", "695", "29", ),
  ("", "Ind", "450", "19", ),
  ("", "Unknown", "2", "0", ),
  ("Age", "18–34", "555", "23", ),
  ("", "35–49", "654", "27", ),
  ("", "50–64", "579", "24", ),
  ("", "65+", "622", "26", ),
  ("Ethnicity", "White", "1218", "51", ),
  ("", "Black", "447", "19", ),
  ("", "Hispanic", "478", "20", ),
  ("", "Asian/PI", "171", "7", ),
  ("", "Two or more", "74", "3", ),
  ("", "Other", "22", "1", ),
  ("Education", "HS or less", "648", "27", ),
  ("", "Some college", "851", "35", ),
  ("", "BA+", "911", "38", ),
  ("Household income", "<50k", "832", "35", ),
  ("", "50k-<100k", "745", "31", ),
  ("", "100k+", "833", "35", ),
))
