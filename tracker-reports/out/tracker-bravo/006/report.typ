#import "/tracker-reports/report.typ": *
#show: report.with(title: "Americans on AI — 14 September 2026")

Athena Insights surveyed 1,083 US adults from September 10-14, 2026, via NORC's AmeriSpeak Panel, a probability-based panel designed to be representative of the US household population.

This release includes the results of that survey as a whole-sample topline, then as crosstabs broken out by subgroup, followed by appendices covering the questionnaire, methodology, and unweighted sample composition.

Results are weighted to US population benchmarks; the full-sample margin of error is ±4.0 percentage points at 95% confidence, accounting for the design effect of weighting. 

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
  ("Jobs", p("48", 0.4778), p("39", 0.3867), p("9", 0.0886), p("2", 0.0175), p("2", 0.0204), ),
  ("Inflation", p("68", 0.6823), p("24", 0.2395), p("4", 0.0363), p("1", 0.0135), p("2", 0.0182), ),
  ("AI harms", p("43", 0.4347), p("37", 0.3675), p("13", 0.1283), p("4", 0.0351), p("3", 0.0274), ),
  ("Immigration", p("36", 0.3593), p("34", 0.3398), p("18", 0.1751), p("8", 0.0827), p("3", 0.0266), ),
  ("Health care", p("70", 0.6977), p("22", 0.2221), p("4", 0.0431), p("1", 0.0073), p("1", 0.0135), ),
  ("Crime", p("51", 0.5109), p("38", 0.3779), p("6", 0.0620), p("2", 0.0196), p("2", 0.0203), ),
  ("Climate change", p("36", 0.3552), p("32", 0.3186), p("17", 0.1651), p("13", 0.1274), p("2", 0.0236), ),
))

#heading(level: 2, "Affect")

#stem("Thinking about AI's growing role in society, which of these options comes closest to how you feel, even if none are exactly right?")

#note[*Response distribution (weighted)* — % of all respondents. "No answer" (2% or less) is not shown.]
#dist(("Response", "%", ), (
  ("Very excited", p("5", 0.0474), ),
  ("Somewhat excited", p("17", 0.1667), ),
  ("Somewhat concerned", p("35", 0.3484), ),
  ("Very concerned", p("34", 0.3394), ),
  ("None of these are close to how I feel", p("9", 0.0910), ),
))

#heading(level: 2, "Agency")

#stem("Again, thinking about AI, which statement comes closer to your view, even if neither is exactly right?")

#note[*Response distribution (weighted)* — % of all respondents. "No answer" (2% or less) is not shown.]
#dist(("Response", "%", ), (
  ("People like me can shape how much AI is part of our lives", p("17", 0.1744), ),
  ("AI is coming into our lives whether we want it or not", p("68", 0.6751), ),
  ("Neither of these are close to how I feel", p("14", 0.1401), ),
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
  ("Saving time", p("20", 0.2003), p("29", 0.2876), p("15", 0.1509), p("15", 0.1459), p("19", 0.1916), ),
  ("Pressured to do more", p("23", 0.2319), p("26", 0.2584), p("22", 0.2168), p("9", 0.0850), p("19", 0.1928), ),
  ("Losing connections", p("33", 0.3310), p("28", 0.2750), p("15", 0.1483), p("9", 0.0850), p("15", 0.1487), ),
  ("Real vs. fake", p("57", 0.5713), p("24", 0.2439), p("9", 0.0867), p("2", 0.0198), p("7", 0.0694), ),
  ("Better health care", p("5", 0.0463), p("14", 0.1382), p("20", 0.2024), p("33", 0.3275), p("28", 0.2751), ),
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
  ("Jobs", p("2", 0.0176), p("12", 0.1229), p("40", 0.4037), p("35", 0.3486), p("9", 0.0871), p("2", 0.0202), ),
  ("Future", p("4", 0.0441), p("26", 0.2589), p("35", 0.3545), p("24", 0.2350), p("8", 0.0848), p("2", 0.0227), ),
  ("Children", p("4", 0.0383), p("17", 0.1747), p("33", 0.3309), p("31", 0.3057), p("12", 0.1219), p("3", 0.0285), ),
  ("Finances", p("4", 0.0391), p("24", 0.2425), p("27", 0.2744), p("14", 0.1425), p("27", 0.2744), p("3", 0.0272), ),
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
  ("Children", p("12", 0.1181), p("13", 0.1301), p("11", 0.1138), p("19", 0.1934), p("30", 0.3030), p("13", 0.1271), ),
  ("Environment", p("13", 0.1279), p("12", 0.1187), p("14", 0.1371), p("16", 0.1573), p("33", 0.3260), p("12", 0.1193), ),
  ("Workers", p("12", 0.1202), p("12", 0.1233), p("17", 0.1685), p("19", 0.1892), p("26", 0.2556), p("13", 0.1295), ),
  ("Competitiveness", p("10", 0.1005), p("14", 0.1385), p("19", 0.1866), p("18", 0.1785), p("17", 0.1686), p("21", 0.2143), ),
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
  ("Superintelligence", p("32", 0.3160), p("40", 0.4013), p("13", 0.1258), p("4", 0.0411), p("10", 0.0956), ),
  ("Loss-of-control", p("39", 0.3854), p("40", 0.3976), p("7", 0.0740), p("2", 0.0226), p("10", 0.1016), ),
  ("Breakthroughs", p("23", 0.2307), p("47", 0.4665), p("11", 0.1100), p("3", 0.0336), p("14", 0.1394), ),
  ("WMDs", p("20", 0.2046), p("51", 0.5069), p("8", 0.0836), p("3", 0.0324), p("15", 0.1542), ),
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
#xtab(("Item", "Metric", ), ("Total", "Female", "Male", ), ("1083", "558", "525", ), (
  ("Jobs", "TOTAL high priority", p("86", 0.8645), p("88", 0.8776), p("85", 0.8504), ),
  ("", "TOTAL lower priority", p("11", 0.1061), p("9", 0.0895), p("12", 0.1240), ),
  ("", "NET priority", n("76", 0.7584), n("79", 0.7882), n("73", 0.7265), ),
  ("Inflation", "TOTAL high priority", p("92", 0.9218), p("95", 0.9476), p("89", 0.8941), ),
  ("", "TOTAL lower priority", p("5", 0.0498), p("3", 0.0340), p("7", 0.0669), ),
  ("", "NET priority", n("87", 0.8720), n("91", 0.9136), n("83", 0.8272), ),
  ("AI harms", "TOTAL high priority", p("80", 0.8022), p("84", 0.8380), p("76", 0.7637), ),
  ("", "TOTAL lower priority", p("16", 0.1634), p("13", 0.1312), p("20", 0.1980), ),
  ("", "NET priority", n("64", 0.6388), n("71", 0.7068), n("57", 0.5657), ),
  ("Immigration", "TOTAL high priority", p("70", 0.6991), p("70", 0.7045), p("69", 0.6933), ),
  ("", "TOTAL lower priority", p("26", 0.2578), p("26", 0.2551), p("26", 0.2607), ),
  ("", "NET priority", n("44", 0.4413), n("45", 0.4494), n("43", 0.4326), ),
  ("Health care", "TOTAL high priority", p("92", 0.9199), p("94", 0.9378), p("90", 0.9006), ),
  ("", "TOTAL lower priority", p("5", 0.0503), p("3", 0.0292), p("7", 0.0730), ),
  ("", "NET priority", n("87", 0.8695), n("91", 0.9086), n("83", 0.8276), ),
  ("Crime", "TOTAL high priority", p("89", 0.8889), p("90", 0.8996), p("88", 0.8773), ),
  ("", "TOTAL lower priority", p("8", 0.0816), p("7", 0.0706), p("9", 0.0934), ),
  ("", "NET priority", n("81", 0.8073), n("83", 0.8290), n("78", 0.7838), ),
  ("Climate change", "TOTAL high priority", p("67", 0.6737), p("73", 0.7326), p("61", 0.6105), ),
  ("", "TOTAL lower priority", p("29", 0.2924), p("23", 0.2267), p("36", 0.3631), ),
  ("", "NET priority", n("38", 0.3813), n("51", 0.5058), n("25", 0.2475), ),
))

#heading(level: 3, "By Party")
#xtab(("Item", "Metric", ), ("Total", "Dem", "Rep", "Ind", ), ("1083", "529", "356", "193", ), (
  ("Jobs", "TOTAL high priority", p("86", 0.8645), p("91", 0.9058), p("84", 0.8377), p("84", 0.8422), ),
  ("", "TOTAL lower priority", p("11", 0.1061), p("8", 0.0815), p("14", 0.1397), p("10", 0.0973), ),
  ("", "NET priority", n("76", 0.7584), n("82", 0.8243), n("70", 0.6980), n("75", 0.7450), ),
  ("Inflation", "TOTAL high priority", p("92", 0.9218), p("95", 0.9468), p("91", 0.9071), p("91", 0.9081), ),
  ("", "TOTAL lower priority", p("5", 0.0498), p("4", 0.0365), p("7", 0.0741), p("3", 0.0340), ),
  ("", "NET priority", n("87", 0.8720), n("91", 0.9103), n("83", 0.8329), n("87", 0.8741), ),
  ("AI harms", "TOTAL high priority", p("80", 0.8022), p("87", 0.8703), p("75", 0.7548), p("76", 0.7553), ),
  ("", "TOTAL lower priority", p("16", 0.1634), p("12", 0.1166), p("22", 0.2207), p("16", 0.1571), ),
  ("", "NET priority", n("64", 0.6388), n("75", 0.7537), n("53", 0.5341), n("60", 0.5982), ),
  ("Immigration", "TOTAL high priority", p("70", 0.6991), p("57", 0.5736), p("85", 0.8528), p("67", 0.6730), ),
  ("", "TOTAL lower priority", p("26", 0.2578), p("41", 0.4120), p("11", 0.1087), p("23", 0.2332), ),
  ("", "NET priority", n("44", 0.4413), n("16", 0.1616), n("74", 0.7441), n("44", 0.4398), ),
  ("Health care", "TOTAL high priority", p("92", 0.9199), p("99", 0.9884), p("89", 0.8882), p("85", 0.8502), ),
  ("", "TOTAL lower priority", p("5", 0.0503), p("<1", 0.0037), p("9", 0.0903), p("6", 0.0622), ),
  ("", "NET priority", n("87", 0.8695), n("98", 0.9847), n("80", 0.7979), n("79", 0.7880), ),
  ("Crime", "TOTAL high priority", p("89", 0.8889), p("90", 0.8952), p("89", 0.8887), p("89", 0.8851), ),
  ("", "TOTAL lower priority", p("8", 0.0816), p("10", 0.0958), p("8", 0.0830), p("6", 0.0553), ),
  ("", "NET priority", n("81", 0.8073), n("80", 0.7995), n("81", 0.8057), n("83", 0.8298), ),
  ("Climate change", "TOTAL high priority", p("67", 0.6737), p("91", 0.9052), p("39", 0.3913), p("73", 0.7307), ),
  ("", "TOTAL lower priority", p("29", 0.2924), p("9", 0.0885), p("57", 0.5688), p("20", 0.2001), ),
  ("", "NET priority", n("38", 0.3813), n("82", 0.8167), n("−18", -0.1775), n("53", 0.5306), ),
))

#heading(level: 3, "By Age")
#xtab(("Item", "Metric", ), ("Total", "18–34", "35–49", "50–64", "65+", ), ("1083", "203", "274", "266", "340", ), (
  ("Jobs", "TOTAL high priority", p("86", 0.8645), p("87", 0.8661), p("83", 0.8339), p("90", 0.8995), p("86", 0.8612), ),
  ("", "TOTAL lower priority", p("11", 0.1061), p("10", 0.0963), p("11", 0.1129), p("9", 0.0868), p("13", 0.1289), ),
  ("", "NET priority", n("76", 0.7584), n("77", 0.7698), n("72", 0.7210), n("81", 0.8127), n("73", 0.7323), ),
  ("Inflation", "TOTAL high priority", p("92", 0.9218), p("85", 0.8477), p("94", 0.9375), p("96", 0.9603), p("96", 0.9579), ),
  ("", "TOTAL lower priority", p("5", 0.0498), p("11", 0.1072), p("1", 0.0131), p("3", 0.0290), p("4", 0.0383), ),
  ("", "NET priority", n("87", 0.8720), n("74", 0.7405), n("92", 0.9244), n("93", 0.9312), n("92", 0.9196), ),
  ("AI harms", "TOTAL high priority", p("80", 0.8022), p("77", 0.7654), p("75", 0.7512), p("86", 0.8646), p("84", 0.8392), ),
  ("", "TOTAL lower priority", p("16", 0.1634), p("20", 0.2002), p("20", 0.2034), p("12", 0.1151), p("12", 0.1243), ),
  ("", "NET priority", n("64", 0.6388), n("57", 0.5653), n("55", 0.5478), n("75", 0.7496), n("71", 0.7149), ),
  ("Immigration", "TOTAL high priority", p("70", 0.6991), p("62", 0.6187), p("63", 0.6267), p("81", 0.8052), p("77", 0.7690), ),
  ("", "TOTAL lower priority", p("26", 0.2578), p("33", 0.3291), p("32", 0.3155), p("18", 0.1775), p("19", 0.1895), ),
  ("", "NET priority", n("44", 0.4413), n("29", 0.2896), n("31", 0.3111), n("63", 0.6277), n("58", 0.5795), ),
  ("Health care", "TOTAL high priority", p("92", 0.9199), p("87", 0.8662), p("89", 0.8948), p("95", 0.9519), p("98", 0.9790), ),
  ("", "TOTAL lower priority", p("5", 0.0503), p("7", 0.0727), p("6", 0.0642), p("4", 0.0434), p("2", 0.0162), ),
  ("", "NET priority", n("87", 0.8695), n("79", 0.7935), n("83", 0.8306), n("91", 0.9085), n("96", 0.9627), ),
  ("Crime", "TOTAL high priority", p("89", 0.8889), p("82", 0.8204), p("85", 0.8465), p("95", 0.9487), p("96", 0.9571), ),
  ("", "TOTAL lower priority", p("8", 0.0816), p("14", 0.1350), p("11", 0.1061), p("4", 0.0385), p("3", 0.0336), ),
  ("", "NET priority", n("81", 0.8073), n("69", 0.6854), n("74", 0.7405), n("91", 0.9102), n("92", 0.9234), ),
  ("Climate change", "TOTAL high priority", p("67", 0.6737), p("72", 0.7169), p("66", 0.6579), p("62", 0.6207), p("69", 0.6881), ),
  ("", "TOTAL lower priority", p("29", 0.2924), p("24", 0.2418), p("29", 0.2854), p("38", 0.3787), p("28", 0.2792), ),
  ("", "NET priority", n("38", 0.3813), n("48", 0.4751), n("37", 0.3725), n("24", 0.2420), n("41", 0.4088), ),
))

#heading(level: 3, "By Ethnicity")
#xtab(("Item", "Metric", ), ("Total", "White", "Black", "Hispanic", ), ("1083", "682", "122", "147", ), (
  ("Jobs", "TOTAL high priority", p("86", 0.8645), p("87", 0.8726), p("85", 0.8549), p("84", 0.8397), ),
  ("", "TOTAL lower priority", p("11", 0.1061), p("11", 0.1054), p("7", 0.0732), p("13", 0.1289), ),
  ("", "NET priority", n("76", 0.7584), n("77", 0.7672), n("78", 0.7817), n("71", 0.7108), ),
  ("Inflation", "TOTAL high priority", p("92", 0.9218), p("94", 0.9359), p("85", 0.8454), p("94", 0.9378), ),
  ("", "TOTAL lower priority", p("5", 0.0498), p("5", 0.0474), p("5", 0.0520), p("6", 0.0567), ),
  ("", "NET priority", n("87", 0.8720), n("89", 0.8885), n("79", 0.7933), n("88", 0.8811), ),
  ("AI harms", "TOTAL high priority", p("80", 0.8022), p("80", 0.7994), p("76", 0.7572), p("84", 0.8433), ),
  ("", "TOTAL lower priority", p("16", 0.1634), p("18", 0.1791), p("13", 0.1319), p("12", 0.1227), ),
  ("", "NET priority", n("64", 0.6388), n("62", 0.6204), n("63", 0.6254), n("72", 0.7206), ),
  ("Immigration", "TOTAL high priority", p("70", 0.6991), p("69", 0.6909), p("63", 0.6324), p("74", 0.7417), ),
  ("", "TOTAL lower priority", p("26", 0.2578), p("28", 0.2846), p("23", 0.2273), p("23", 0.2253), ),
  ("", "NET priority", n("44", 0.4413), n("41", 0.4063), n("41", 0.4051), n("52", 0.5164), ),
  ("Health care", "TOTAL high priority", p("92", 0.9199), p("94", 0.9393), p("86", 0.8641), p("91", 0.9052), ),
  ("", "TOTAL lower priority", p("5", 0.0503), p("5", 0.0500), p("7", 0.0739), p("4", 0.0368), ),
  ("", "NET priority", n("87", 0.8695), n("89", 0.8893), n("79", 0.7902), n("87", 0.8684), ),
  ("Crime", "TOTAL high priority", p("89", 0.8889), p("90", 0.8968), p("87", 0.8728), p("90", 0.8951), ),
  ("", "TOTAL lower priority", p("8", 0.0816), p("8", 0.0802), p("7", 0.0731), p("6", 0.0614), ),
  ("", "NET priority", n("81", 0.8073), n("82", 0.8166), n("80", 0.7997), n("83", 0.8337), ),
  ("Climate change", "TOTAL high priority", p("67", 0.6737), p("63", 0.6306), p("70", 0.7028), p("75", 0.7455), ),
  ("", "TOTAL lower priority", p("29", 0.2924), p("35", 0.3457), p("21", 0.2077), p("23", 0.2263), ),
  ("", "NET priority", n("38", 0.3813), n("28", 0.2849), n("50", 0.4951), n("52", 0.5192), ),
))

#heading(level: 3, "By Education")
#xtab(("Item", "Metric", ), ("Total", "HS or less", "Some college", "BA+", ), ("1083", "235", "394", "454", ), (
  ("Jobs", "TOTAL high priority", p("86", 0.8645), p("88", 0.8792), p("85", 0.8483), p("86", 0.8615), ),
  ("", "TOTAL lower priority", p("11", 0.1061), p("9", 0.0945), p("11", 0.1053), p("12", 0.1182), ),
  ("", "NET priority", n("76", 0.7584), n("78", 0.7848), n("74", 0.7430), n("74", 0.7434), ),
  ("Inflation", "TOTAL high priority", p("92", 0.9218), p("90", 0.9009), p("92", 0.9162), p("95", 0.9464), ),
  ("", "TOTAL lower priority", p("5", 0.0498), p("6", 0.0622), p("5", 0.0453), p("4", 0.0408), ),
  ("", "NET priority", n("87", 0.8720), n("84", 0.8387), n("87", 0.8709), n("91", 0.9056), ),
  ("AI harms", "TOTAL high priority", p("80", 0.8022), p("76", 0.7607), p("83", 0.8265), p("83", 0.8259), ),
  ("", "TOTAL lower priority", p("16", 0.1634), p("21", 0.2128), p("11", 0.1121), p("15", 0.1511), ),
  ("", "NET priority", n("64", 0.6388), n("55", 0.5480), n("71", 0.7143), n("67", 0.6748), ),
  ("Immigration", "TOTAL high priority", p("70", 0.6991), p("70", 0.7022), p("73", 0.7286), p("68", 0.6751), ),
  ("", "TOTAL lower priority", p("26", 0.2578), p("23", 0.2343), p("22", 0.2226), p("31", 0.3061), ),
  ("", "NET priority", n("44", 0.4413), n("47", 0.4679), n("51", 0.5060), n("37", 0.3690), ),
  ("Health care", "TOTAL high priority", p("92", 0.9199), p("90", 0.9033), p("93", 0.9255), p("93", 0.9322), ),
  ("", "TOTAL lower priority", p("5", 0.0503), p("5", 0.0541), p("4", 0.0355), p("6", 0.0572), ),
  ("", "NET priority", n("87", 0.8695), n("85", 0.8492), n("89", 0.8900), n("88", 0.8751), ),
  ("Crime", "TOTAL high priority", p("89", 0.8889), p("87", 0.8723), p("91", 0.9097), p("89", 0.8904), ),
  ("", "TOTAL lower priority", p("8", 0.0816), p("10", 0.0998), p("4", 0.0411), p("9", 0.0925), ),
  ("", "NET priority", n("81", 0.8073), n("77", 0.7726), n("87", 0.8686), n("80", 0.7979), ),
  ("Climate change", "TOTAL high priority", p("67", 0.6737), p("63", 0.6295), p("63", 0.6309), p("75", 0.7479), ),
  ("", "TOTAL lower priority", p("29", 0.2924), p("33", 0.3328), p("32", 0.3168), p("24", 0.2352), ),
  ("", "NET priority", n("38", 0.3813), n("30", 0.2967), n("31", 0.3141), n("51", 0.5127), ),
))

#heading(level: 3, "By Household income")
#xtab(("Item", "Metric", ), ("Total", "<50k", "50k-<100k", "100k+", ), ("1083", "345", "339", "399", ), (
  ("Jobs", "TOTAL high priority", p("86", 0.8645), p("86", 0.8562), p("88", 0.8775), p("86", 0.8629), ),
  ("", "TOTAL lower priority", p("11", 0.1061), p("10", 0.1048), p("9", 0.0911), p("12", 0.1195), ),
  ("", "NET priority", n("76", 0.7584), n("75", 0.7515), n("79", 0.7864), n("74", 0.7434), ),
  ("Inflation", "TOTAL high priority", p("92", 0.9218), p("91", 0.9144), p("92", 0.9221), p("93", 0.9293), ),
  ("", "TOTAL lower priority", p("5", 0.0498), p("5", 0.0505), p("6", 0.0566), p("4", 0.0436), ),
  ("", "NET priority", n("87", 0.8720), n("86", 0.8639), n("87", 0.8655), n("89", 0.8857), ),
  ("AI harms", "TOTAL high priority", p("80", 0.8022), p("78", 0.7784), p("83", 0.8337), p("80", 0.8022), ),
  ("", "TOTAL lower priority", p("16", 0.1634), p("18", 0.1787), p("14", 0.1419), p("16", 0.1644), ),
  ("", "NET priority", n("64", 0.6388), n("60", 0.5997), n("69", 0.6919), n("64", 0.6378), ),
  ("Immigration", "TOTAL high priority", p("70", 0.6991), p("71", 0.7085), p("70", 0.6991), p("69", 0.6892), ),
  ("", "TOTAL lower priority", p("26", 0.2578), p("24", 0.2369), p("26", 0.2610), p("28", 0.2772), ),
  ("", "NET priority", n("44", 0.4413), n("47", 0.4715), n("44", 0.4381), n("41", 0.4120), ),
  ("Health care", "TOTAL high priority", p("92", 0.9199), p("93", 0.9277), p("92", 0.9164), p("91", 0.9143), ),
  ("", "TOTAL lower priority", p("5", 0.0503), p("4", 0.0406), p("7", 0.0684), p("5", 0.0462), ),
  ("", "NET priority", n("87", 0.8695), n("89", 0.8871), n("85", 0.8481), n("87", 0.8681), ),
  ("Crime", "TOTAL high priority", p("89", 0.8889), p("89", 0.8939), p("91", 0.9091), p("87", 0.8675), ),
  ("", "TOTAL lower priority", p("8", 0.0816), p("7", 0.0670), p("6", 0.0568), p("12", 0.1168), ),
  ("", "NET priority", n("81", 0.8073), n("83", 0.8268), n("85", 0.8523), n("75", 0.7507), ),
  ("Climate change", "TOTAL high priority", p("67", 0.6737), p("67", 0.6728), p("69", 0.6916), p("66", 0.6605), ),
  ("", "TOTAL lower priority", p("29", 0.2924), p("29", 0.2874), p("27", 0.2738), p("31", 0.3126), ),
  ("", "NET priority", n("38", 0.3813), n("39", 0.3854), n("42", 0.4178), n("35", 0.3479), ),
))

#heading(level: 2, "Affect")

#stem("Thinking about AI's growing role in society, which of these options comes closest to how you feel, even if none are exactly right?")

#defs("Each total combines multiple responses:", ("Total", "Responses", ), (
  ("TOTAL excited", "\"Very excited\" or \"Somewhat excited\"", ),
  ("TOTAL concerned", "\"Somewhat concerned\" or \"Very concerned\"", ),
))

#note[Cells (weighted): totals (%) and net (percentage points).]
#heading(level: 3, "By Sex")
#xtab(("Metric", ), ("Total", "Female", "Male", ), ("1083", "558", "525", ), (
  ("TOTAL excited", p("21", 0.2141), p("14", 0.1360), p("30", 0.2981), ),
  ("TOTAL concerned", p("69", 0.6878), p("76", 0.7555), p("62", 0.6150), ),
  ("None of these", p("9", 0.0910), p("11", 0.1084), p("7", 0.0722), ),
  ("No answer", p("1", 0.0071), p("0", 0.0000), p("1", 0.0147), ),
  ("NET concerned", n("47", 0.4737), n("62", 0.6195), n("32", 0.3169), ),
))

#heading(level: 3, "By Party")
#xtab(("Metric", ), ("Total", "Dem", "Rep", "Ind", ), ("1083", "529", "356", "193", ), (
  ("TOTAL excited", p("21", 0.2141), p("13", 0.1308), p("29", 0.2938), p("22", 0.2226), ),
  ("TOTAL concerned", p("69", 0.6878), p("80", 0.8038), p("63", 0.6317), p("57", 0.5713), ),
  ("None of these", p("9", 0.0910), p("6", 0.0611), p("7", 0.0653), p("20", 0.1973), ),
  ("No answer", p("1", 0.0071), p("<1", 0.0043), p("1", 0.0092), p("1", 0.0088), ),
  ("NET concerned", n("47", 0.4737), n("67", 0.6730), n("34", 0.3378), n("35", 0.3487), ),
))

#heading(level: 3, "By Age")
#xtab(("Metric", ), ("Total", "18–34", "35–49", "50–64", "65+", ), ("1083", "203", "274", "266", "340", ), (
  ("TOTAL excited", p("21", 0.2141), p("25", 0.2526), p("26", 0.2630), p("17", 0.1673), p("16", 0.1627), ),
  ("TOTAL concerned", p("69", 0.6878), p("61", 0.6064), p("66", 0.6565), p("74", 0.7439), p("76", 0.7638), ),
  ("None of these", p("9", 0.0910), p("12", 0.1231), p("7", 0.0730), p("9", 0.0888), p("7", 0.0731), ),
  ("No answer", p("1", 0.0071), p("2", 0.0178), p("1", 0.0076), p("0", 0.0000), p("<1", 0.0004), ),
  ("NET concerned", n("47", 0.4737), n("35", 0.3538), n("39", 0.3935), n("58", 0.5766), n("60", 0.6011), ),
))

#heading(level: 3, "By Ethnicity")
#xtab(("Metric", ), ("Total", "White", "Black", "Hispanic", ), ("1083", "682", "122", "147", ), (
  ("TOTAL excited", p("21", 0.2141), p("18", 0.1763), p("28", 0.2782), p("22", 0.2236), ),
  ("TOTAL concerned", p("69", 0.6878), p("74", 0.7373), p("62", 0.6207), p("64", 0.6360), ),
  ("None of these", p("9", 0.0910), p("9", 0.0863), p("8", 0.0839), p("14", 0.1404), ),
  ("No answer", p("1", 0.0071), p("0", 0.0000), p("2", 0.0172), p("0", 0.0000), ),
  ("NET concerned", n("47", 0.4737), n("56", 0.5610), n("34", 0.3425), n("41", 0.4125), ),
))

#heading(level: 3, "By Education")
#xtab(("Metric", ), ("Total", "HS or less", "Some college", "BA+", ), ("1083", "235", "394", "454", ), (
  ("TOTAL excited", p("21", 0.2141), p("20", 0.2048), p("20", 0.1956), p("24", 0.2366), ),
  ("TOTAL concerned", p("69", 0.6878), p("63", 0.6282), p("71", 0.7088), p("73", 0.7318), ),
  ("None of these", p("9", 0.0910), p("15", 0.1527), p("10", 0.0952), p("3", 0.0269), ),
  ("No answer", p("1", 0.0071), p("1", 0.0143), p("<1", 0.0003), p("<1", 0.0047), ),
  ("NET concerned", n("47", 0.4737), n("42", 0.4235), n("51", 0.5131), n("50", 0.4952), ),
))

#heading(level: 3, "By Household income")
#xtab(("Metric", ), ("Total", "<50k", "50k-<100k", "100k+", ), ("1083", "345", "339", "399", ), (
  ("TOTAL excited", p("21", 0.2141), p("20", 0.1969), p("20", 0.2019), p("24", 0.2422), ),
  ("TOTAL concerned", p("69", 0.6878), p("65", 0.6527), p("72", 0.7248), p("70", 0.6954), ),
  ("None of these", p("9", 0.0910), p("15", 0.1454), p("7", 0.0733), p("5", 0.0475), ),
  ("No answer", p("1", 0.0071), p("1", 0.0050), p("0", 0.0000), p("1", 0.0149), ),
  ("NET concerned", n("47", 0.4737), n("46", 0.4558), n("52", 0.5229), n("45", 0.4533), ),
))

#heading(level: 2, "Agency")

#stem("Again, thinking about AI, which statement comes closer to your view, even if neither is exactly right?")

#note[Cells (weighted): totals (%) and net (percentage points).]
#heading(level: 3, "By Sex")
#xtab(("Metric", ), ("Total", "Female", "Male", ), ("1083", "558", "525", ), (
  ("TOTAL can shape", p("17", 0.1744), p("16", 0.1572), p("19", 0.1929), ),
  ("TOTAL inevitable", p("68", 0.6751), p("69", 0.6879), p("66", 0.6613), ),
  ("Neither of these", p("14", 0.1401), p("15", 0.1484), p("13", 0.1311), ),
  ("No answer", p("1", 0.0104), p("1", 0.0064), p("1", 0.0147), ),
  ("NET inevitable", n("50", 0.5007), n("53", 0.5307), n("47", 0.4684), ),
))

#heading(level: 3, "By Party")
#xtab(("Metric", ), ("Total", "Dem", "Rep", "Ind", ), ("1083", "529", "356", "193", ), (
  ("TOTAL can shape", p("17", 0.1744), p("17", 0.1713), p("18", 0.1812), p("17", 0.1724), ),
  ("TOTAL inevitable", p("68", 0.6751), p("70", 0.7026), p("69", 0.6899), p("61", 0.6068), ),
  ("Neither of these", p("14", 0.1401), p("12", 0.1184), p("12", 0.1189), p("21", 0.2120), ),
  ("No answer", p("1", 0.0104), p("1", 0.0077), p("1", 0.0100), p("1", 0.0088), ),
  ("NET inevitable", n("50", 0.5007), n("53", 0.5314), n("51", 0.5087), n("43", 0.4345), ),
))

#heading(level: 3, "By Age")
#xtab(("Metric", ), ("Total", "18–34", "35–49", "50–64", "65+", ), ("1083", "203", "274", "266", "340", ), (
  ("TOTAL can shape", p("17", 0.1744), p("27", 0.2666), p("23", 0.2252), p("10", 0.1019), p("8", 0.0813), ),
  ("TOTAL inevitable", p("68", 0.6751), p("58", 0.5841), p("63", 0.6298), p("77", 0.7747), p("74", 0.7360), ),
  ("Neither of these", p("14", 0.1401), p("13", 0.1257), p("13", 0.1305), p("12", 0.1234), p("18", 0.1823), ),
  ("No answer", p("1", 0.0104), p("2", 0.0236), p("1", 0.0145), p("0", 0.0000), p("<1", 0.0004), ),
  ("NET inevitable", n("50", 0.5007), n("32", 0.3175), n("40", 0.4047), n("67", 0.6727), n("65", 0.6547), ),
))

#heading(level: 3, "By Ethnicity")
#xtab(("Metric", ), ("Total", "White", "Black", "Hispanic", ), ("1083", "682", "122", "147", ), (
  ("TOTAL can shape", p("17", 0.1744), p("15", 0.1536), p("24", 0.2358), p("18", 0.1767), ),
  ("TOTAL inevitable", p("68", 0.6751), p("71", 0.7060), p("52", 0.5190), p("69", 0.6919), ),
  ("Neither of these", p("14", 0.1401), p("14", 0.1380), p("21", 0.2135), p("13", 0.1314), ),
  ("No answer", p("1", 0.0104), p("<1", 0.0023), p("3", 0.0316), p("0", 0.0000), ),
  ("NET inevitable", n("50", 0.5007), n("55", 0.5525), n("28", 0.2832), n("52", 0.5153), ),
))

#heading(level: 3, "By Education")
#xtab(("Metric", ), ("Total", "HS or less", "Some college", "BA+", ), ("1083", "235", "394", "454", ), (
  ("TOTAL can shape", p("17", 0.1744), p("20", 0.1966), p("12", 0.1228), p("19", 0.1892), ),
  ("TOTAL inevitable", p("68", 0.6751), p("56", 0.5641), p("73", 0.7312), p("75", 0.7450), ),
  ("Neither of these", p("14", 0.1401), p("22", 0.2196), p("14", 0.1405), p("6", 0.0611), ),
  ("No answer", p("1", 0.0104), p("2", 0.0197), p("1", 0.0055), p("<1", 0.0047), ),
  ("NET inevitable", n("50", 0.5007), n("37", 0.3674), n("61", 0.6084), n("56", 0.5558), ),
))

#heading(level: 3, "By Household income")
#xtab(("Metric", ), ("Total", "<50k", "50k-<100k", "100k+", ), ("1083", "345", "339", "399", ), (
  ("TOTAL can shape", p("17", 0.1744), p("15", 0.1499), p("16", 0.1611), p("21", 0.2110), ),
  ("TOTAL inevitable", p("68", 0.6751), p("65", 0.6536), p("66", 0.6644), p("71", 0.7064), ),
  ("Neither of these", p("14", 0.1401), p("19", 0.1862), p("17", 0.1745), p("6", 0.0638), ),
  ("No answer", p("1", 0.0104), p("1", 0.0103), p("0", 0.0000), p("2", 0.0188), ),
  ("NET inevitable", n("50", 0.5007), n("50", 0.5037), n("50", 0.5032), n("50", 0.4955), ),
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
#xtab(("Item", "Metric", ), ("Total", "Female", "Male", ), ("1083", "558", "525", ), (
  ("Saving time", "TOTAL realized", p("49", 0.4879), p("46", 0.4559), p("52", 0.5224), ),
  ("", "TOTAL not yet", p("30", 0.2969), p("29", 0.2927), p("30", 0.3014), ),
  ("", "NET realized", n("19", 0.1911), n("16", 0.1632), n("22", 0.2210), ),
  ("Pressured to do more", "TOTAL realized", p("49", 0.4903), p("53", 0.5311), p("45", 0.4464), ),
  ("", "TOTAL not yet", p("30", 0.3017), p("26", 0.2605), p("35", 0.3461), ),
  ("", "NET realized", n("19", 0.1886), n("27", 0.2706), n("10", 0.1004), ),
  ("Losing connections", "TOTAL realized", p("61", 0.6060), p("66", 0.6627), p("55", 0.5451), ),
  ("", "TOTAL not yet", p("23", 0.2333), p("19", 0.1931), p("28", 0.2765), ),
  ("", "NET realized", n("37", 0.3727), n("47", 0.4696), n("27", 0.2686), ),
  ("Real vs. fake", "TOTAL realized", p("82", 0.8152), p("84", 0.8382), p("79", 0.7904), ),
  ("", "TOTAL not yet", p("11", 0.1065), p("9", 0.0903), p("12", 0.1239), ),
  ("", "NET realized", n("71", 0.7087), n("75", 0.7479), n("67", 0.6665), ),
  ("Better health care", "TOTAL realized", p("18", 0.1846), p("19", 0.1901), p("18", 0.1787), ),
  ("", "TOTAL not yet", p("53", 0.5300), p("51", 0.5057), p("56", 0.5560), ),
  ("", "NET realized", n("−35", -0.3454), n("−32", -0.3157), n("−38", -0.3774), ),
))

#heading(level: 3, "By Party")
#xtab(("Item", "Metric", ), ("Total", "Dem", "Rep", "Ind", ), ("1083", "529", "356", "193", ), (
  ("Saving time", "TOTAL realized", p("49", 0.4879), p("50", 0.4980), p("49", 0.4878), p("49", 0.4852), ),
  ("", "TOTAL not yet", p("30", 0.2969), p("31", 0.3086), p("30", 0.3011), p("26", 0.2624), ),
  ("", "NET realized", n("19", 0.1911), n("19", 0.1894), n("19", 0.1867), n("22", 0.2228), ),
  ("Pressured to do more", "TOTAL realized", p("49", 0.4903), p("56", 0.5639), p("46", 0.4575), p("42", 0.4249), ),
  ("", "TOTAL not yet", p("30", 0.3017), p("28", 0.2751), p("34", 0.3351), p("30", 0.2985), ),
  ("", "NET realized", n("19", 0.1886), n("29", 0.2888), n("12", 0.1224), n("13", 0.1264), ),
  ("Losing connections", "TOTAL realized", p("61", 0.6060), p("62", 0.6248), p("59", 0.5938), p("59", 0.5933), ),
  ("", "TOTAL not yet", p("23", 0.2333), p("24", 0.2366), p("27", 0.2714), p("17", 0.1654), ),
  ("", "NET realized", n("37", 0.3727), n("39", 0.3882), n("32", 0.3225), n("43", 0.4280), ),
  ("Real vs. fake", "TOTAL realized", p("82", 0.8152), p("87", 0.8680), p("82", 0.8244), p("70", 0.7045), ),
  ("", "TOTAL not yet", p("11", 0.1065), p("11", 0.1097), p("10", 0.0951), p("13", 0.1251), ),
  ("", "NET realized", n("71", 0.7087), n("76", 0.7584), n("73", 0.7294), n("58", 0.5795), ),
  ("Better health care", "TOTAL realized", p("18", 0.1846), p("18", 0.1782), p("23", 0.2325), p("12", 0.1157), ),
  ("", "TOTAL not yet", p("53", 0.5300), p("58", 0.5759), p("52", 0.5222), p("47", 0.4709), ),
  ("", "NET realized", n("−35", -0.3454), n("−40", -0.3976), n("−29", -0.2897), n("−36", -0.3552), ),
))

#heading(level: 3, "By Age")
#xtab(("Item", "Metric", ), ("Total", "18–34", "35–49", "50–64", "65+", ), ("1083", "203", "274", "266", "340", ), (
  ("Saving time", "TOTAL realized", p("49", 0.4879), p("59", 0.5889), p("51", 0.5090), p("49", 0.4916), p("34", 0.3435), ),
  ("", "TOTAL not yet", p("30", 0.2969), p("26", 0.2592), p("30", 0.2957), p("27", 0.2665), p("37", 0.3708), ),
  ("", "NET realized", n("19", 0.1911), n("33", 0.3297), n("21", 0.2133), n("23", 0.2251), n("−3", -0.0274), ),
  ("Pressured to do more", "TOTAL realized", p("49", 0.4903), p("52", 0.5187), p("55", 0.5469), p("45", 0.4538), p("43", 0.4333), ),
  ("", "TOTAL not yet", p("30", 0.3017), p("31", 0.3143), p("31", 0.3096), p("27", 0.2693), p("31", 0.3090), ),
  ("", "NET realized", n("19", 0.1886), n("20", 0.2044), n("24", 0.2373), n("18", 0.1845), n("12", 0.1242), ),
  ("Losing connections", "TOTAL realized", p("61", 0.6060), p("62", 0.6209), p("63", 0.6348), p("60", 0.6037), p("56", 0.5614), ),
  ("", "TOTAL not yet", p("23", 0.2333), p("24", 0.2352), p("22", 0.2186), p("20", 0.2023), p("27", 0.2746), ),
  ("", "NET realized", n("37", 0.3727), n("39", 0.3857), n("42", 0.4162), n("40", 0.4013), n("29", 0.2868), ),
  ("Real vs. fake", "TOTAL realized", p("82", 0.8152), p("82", 0.8193), p("79", 0.7915), p("84", 0.8412), p("81", 0.8099), ),
  ("", "TOTAL not yet", p("11", 0.1065), p("12", 0.1177), p("12", 0.1220), p("7", 0.0662), p("12", 0.1150), ),
  ("", "NET realized", n("71", 0.7087), n("70", 0.7016), n("67", 0.6695), n("78", 0.7751), n("69", 0.6949), ),
  ("Better health care", "TOTAL realized", p("18", 0.1846), p("18", 0.1785), p("17", 0.1745), p("19", 0.1883), p("20", 0.1984), ),
  ("", "TOTAL not yet", p("53", 0.5300), p("58", 0.5847), p("58", 0.5799), p("47", 0.4697), p("47", 0.4707), ),
  ("", "NET realized", n("−35", -0.3454), n("−41", -0.4062), n("−41", -0.4054), n("−28", -0.2814), n("−27", -0.2722), ),
))

#heading(level: 3, "By Ethnicity")
#xtab(("Item", "Metric", ), ("Total", "White", "Black", "Hispanic", ), ("1083", "682", "122", "147", ), (
  ("Saving time", "TOTAL realized", p("49", 0.4879), p("46", 0.4628), p("45", 0.4475), p("49", 0.4914), ),
  ("", "TOTAL not yet", p("30", 0.2969), p("32", 0.3201), p("33", 0.3261), p("26", 0.2627), ),
  ("", "NET realized", n("19", 0.1911), n("14", 0.1427), n("12", 0.1214), n("23", 0.2287), ),
  ("Pressured to do more", "TOTAL realized", p("49", 0.4903), p("47", 0.4697), p("44", 0.4391), p("56", 0.5560), ),
  ("", "TOTAL not yet", p("30", 0.3017), p("32", 0.3153), p("25", 0.2516), p("28", 0.2779), ),
  ("", "NET realized", n("19", 0.1886), n("15", 0.1545), n("19", 0.1875), n("28", 0.2780), ),
  ("Losing connections", "TOTAL realized", p("61", 0.6060), p("61", 0.6132), p("47", 0.4745), p("65", 0.6491), ),
  ("", "TOTAL not yet", p("23", 0.2333), p("23", 0.2314), p("26", 0.2633), p("22", 0.2186), ),
  ("", "NET realized", n("37", 0.3727), n("38", 0.3818), n("21", 0.2112), n("43", 0.4305), ),
  ("Real vs. fake", "TOTAL realized", p("82", 0.8152), p("85", 0.8520), p("65", 0.6540), p("81", 0.8139), ),
  ("", "TOTAL not yet", p("11", 0.1065), p("9", 0.0858), p("18", 0.1827), p("11", 0.1135), ),
  ("", "NET realized", n("71", 0.7087), n("77", 0.7662), n("47", 0.4712), n("70", 0.7005), ),
  ("Better health care", "TOTAL realized", p("18", 0.1846), p("17", 0.1743), p("27", 0.2737), p("17", 0.1729), ),
  ("", "TOTAL not yet", p("53", 0.5300), p("54", 0.5396), p("42", 0.4174), p("58", 0.5755), ),
  ("", "NET realized", n("−35", -0.3454), n("−37", -0.3653), n("−14", -0.1437), n("−40", -0.4027), ),
))

#heading(level: 3, "By Education")
#xtab(("Item", "Metric", ), ("Total", "HS or less", "Some college", "BA+", ), ("1083", "235", "394", "454", ), (
  ("Saving time", "TOTAL realized", p("49", 0.4879), p("42", 0.4180), p("41", 0.4114), p("61", 0.6115), ),
  ("", "TOTAL not yet", p("30", 0.2969), p("30", 0.2994), p("30", 0.3031), p("29", 0.2900), ),
  ("", "NET realized", n("19", 0.1911), n("12", 0.1186), n("11", 0.1083), n("32", 0.3216), ),
  ("Pressured to do more", "TOTAL realized", p("49", 0.4903), p("45", 0.4485), p("44", 0.4416), p("57", 0.5663), ),
  ("", "TOTAL not yet", p("30", 0.3017), p("33", 0.3275), p("30", 0.3023), p("28", 0.2759), ),
  ("", "NET realized", n("19", 0.1886), n("12", 0.1210), n("14", 0.1392), n("29", 0.2904), ),
  ("Losing connections", "TOTAL realized", p("61", 0.6060), p("55", 0.5521), p("62", 0.6216), p("65", 0.6482), ),
  ("", "TOTAL not yet", p("23", 0.2333), p("28", 0.2824), p("17", 0.1742), p("23", 0.2268), ),
  ("", "NET realized", n("37", 0.3727), n("27", 0.2697), n("45", 0.4475), n("42", 0.4214), ),
  ("Real vs. fake", "TOTAL realized", p("82", 0.8152), p("73", 0.7327), p("81", 0.8050), p("90", 0.9039), ),
  ("", "TOTAL not yet", p("11", 0.1065), p("16", 0.1627), p("9", 0.0947), p("6", 0.0593), ),
  ("", "NET realized", n("71", 0.7087), n("57", 0.5700), n("71", 0.7103), n("84", 0.8446), ),
  ("Better health care", "TOTAL realized", p("18", 0.1846), p("19", 0.1863), p("18", 0.1849), p("18", 0.1826), ),
  ("", "TOTAL not yet", p("53", 0.5300), p("50", 0.5031), p("53", 0.5253), p("56", 0.5599), ),
  ("", "NET realized", n("−35", -0.3454), n("−32", -0.3168), n("−34", -0.3404), n("−38", -0.3772), ),
))

#heading(level: 3, "By Household income")
#xtab(("Item", "Metric", ), ("Total", "<50k", "50k-<100k", "100k+", ), ("1083", "345", "339", "399", ), (
  ("Saving time", "TOTAL realized", p("49", 0.4879), p("37", 0.3685), p("49", 0.4934), p("61", 0.6098), ),
  ("", "TOTAL not yet", p("30", 0.2969), p("33", 0.3260), p("31", 0.3110), p("25", 0.2548), ),
  ("", "NET realized", n("19", 0.1911), n("4", 0.0425), n("18", 0.1824), n("36", 0.3550), ),
  ("Pressured to do more", "TOTAL realized", p("49", 0.4903), p("41", 0.4109), p("51", 0.5077), p("56", 0.5603), ),
  ("", "TOTAL not yet", p("30", 0.3017), p("30", 0.2966), p("34", 0.3411), p("28", 0.2758), ),
  ("", "NET realized", n("19", 0.1886), n("11", 0.1143), n("17", 0.1666), n("28", 0.2845), ),
  ("Losing connections", "TOTAL realized", p("61", 0.6060), p("55", 0.5540), p("62", 0.6163), p("65", 0.6528), ),
  ("", "TOTAL not yet", p("23", 0.2333), p("24", 0.2431), p("25", 0.2474), p("21", 0.2116), ),
  ("", "NET realized", n("37", 0.3727), n("31", 0.3109), n("37", 0.3689), n("44", 0.4412), ),
  ("Real vs. fake", "TOTAL realized", p("82", 0.8152), p("73", 0.7308), p("83", 0.8288), p("89", 0.8934), ),
  ("", "TOTAL not yet", p("11", 0.1065), p("14", 0.1445), p("11", 0.1117), p("6", 0.0622), ),
  ("", "NET realized", n("71", 0.7087), n("59", 0.5863), n("72", 0.7171), n("83", 0.8312), ),
  ("Better health care", "TOTAL realized", p("18", 0.1846), p("19", 0.1947), p("16", 0.1565), p("20", 0.1963), ),
  ("", "TOTAL not yet", p("53", 0.5300), p("47", 0.4669), p("56", 0.5604), p("57", 0.5724), ),
  ("", "NET realized", n("−35", -0.3454), n("−27", -0.2722), n("−40", -0.4039), n("−38", -0.3761), ),
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
#xtab(("Item", "Metric", ), ("Total", "Female", "Male", ), ("1083", "558", "525", ), (
  ("Jobs", "TOTAL better", p("14", 0.1405), p("11", 0.1136), p("17", 0.1693), ),
  ("", "TOTAL worse", p("75", 0.7523), p("80", 0.7959), p("71", 0.7053), ),
  ("", "NET worse", n("61", 0.6118), n("68", 0.6823), n("54", 0.5360), ),
  ("Future", "TOTAL better", p("30", 0.3031), p("24", 0.2416), p("37", 0.3691), ),
  ("", "TOTAL worse", p("59", 0.5895), p("67", 0.6692), p("50", 0.5038), ),
  ("", "NET worse", n("29", 0.2864), n("43", 0.4276), n("13", 0.1347), ),
  ("Children", "TOTAL better", p("21", 0.2129), p("17", 0.1683), p("26", 0.2609), ),
  ("", "TOTAL worse", p("64", 0.6367), p("68", 0.6831), p("59", 0.5868), ),
  ("", "NET worse", n("42", 0.4237), n("51", 0.5148), n("33", 0.3259), ),
  ("Finances", "TOTAL better", p("28", 0.2816), p("24", 0.2367), p("33", 0.3298), ),
  ("", "TOTAL worse", p("42", 0.4169), p("47", 0.4700), p("36", 0.3598), ),
  ("", "NET worse", n("14", 0.1353), n("23", 0.2333), n("3", 0.0299), ),
))

#heading(level: 3, "By Party")
#xtab(("Item", "Metric", ), ("Total", "Dem", "Rep", "Ind", ), ("1083", "529", "356", "193", ), (
  ("Jobs", "TOTAL better", p("14", 0.1405), p("10", 0.1034), p("18", 0.1806), p("14", 0.1422), ),
  ("", "TOTAL worse", p("75", 0.7523), p("85", 0.8487), p("69", 0.6903), p("69", 0.6859), ),
  ("", "NET worse", n("61", 0.6118), n("75", 0.7453), n("51", 0.5097), n("54", 0.5436), ),
  ("Future", "TOTAL better", p("30", 0.3031), p("28", 0.2808), p("38", 0.3793), p("22", 0.2186), ),
  ("", "TOTAL worse", p("59", 0.5895), p("66", 0.6637), p("53", 0.5257), p("56", 0.5624), ),
  ("", "NET worse", n("29", 0.2864), n("38", 0.3828), n("15", 0.1464), n("34", 0.3438), ),
  ("Children", "TOTAL better", p("21", 0.2129), p("20", 0.1967), p("25", 0.2510), p("18", 0.1814), ),
  ("", "TOTAL worse", p("64", 0.6367), p("72", 0.7193), p("59", 0.5859), p("57", 0.5721), ),
  ("", "NET worse", n("42", 0.4237), n("52", 0.5225), n("33", 0.3349), n("39", 0.3907), ),
  ("Finances", "TOTAL better", p("28", 0.2816), p("29", 0.2871), p("32", 0.3183), p("21", 0.2137), ),
  ("", "TOTAL worse", p("42", 0.4169), p("45", 0.4474), p("36", 0.3649), p("45", 0.4451), ),
  ("", "NET worse", n("14", 0.1353), n("16", 0.1603), n("5", 0.0466), n("23", 0.2313), ),
))

#heading(level: 3, "By Age")
#xtab(("Item", "Metric", ), ("Total", "18–34", "35–49", "50–64", "65+", ), ("1083", "203", "274", "266", "340", ), (
  ("Jobs", "TOTAL better", p("14", 0.1405), p("12", 0.1169), p("17", 0.1658), p("12", 0.1199), p("16", 0.1618), ),
  ("", "TOTAL worse", p("75", 0.7523), p("73", 0.7262), p("72", 0.7222), p("80", 0.8009), p("77", 0.7683), ),
  ("", "NET worse", n("61", 0.6118), n("61", 0.6093), n("56", 0.5564), n("68", 0.6810), n("61", 0.6065), ),
  ("Future", "TOTAL better", p("30", 0.3031), p("23", 0.2254), p("30", 0.3000), p("35", 0.3489), p("36", 0.3555), ),
  ("", "TOTAL worse", p("59", 0.5895), p("64", 0.6400), p("57", 0.5742), p("56", 0.5624), p("57", 0.5702), ),
  ("", "NET worse", n("29", 0.2864), n("41", 0.4147), n("27", 0.2742), n("21", 0.2135), n("21", 0.2147), ),
  ("Children", "TOTAL better", p("21", 0.2129), p("17", 0.1692), p("18", 0.1796), p("24", 0.2395), p("27", 0.2738), ),
  ("", "TOTAL worse", p("64", 0.6367), p("64", 0.6419), p("65", 0.6500), p("66", 0.6558), p("60", 0.5991), ),
  ("", "NET worse", n("42", 0.4237), n("47", 0.4727), n("47", 0.4703), n("42", 0.4164), n("33", 0.3254), ),
  ("Finances", "TOTAL better", p("28", 0.2816), p("24", 0.2413), p("26", 0.2641), p("35", 0.3503), p("28", 0.2831), ),
  ("", "TOTAL worse", p("42", 0.4169), p("44", 0.4441), p("41", 0.4114), p("34", 0.3400), p("46", 0.4617), ),
  ("", "NET worse", n("14", 0.1353), n("20", 0.2028), n("15", 0.1473), n("−1", -0.0104), n("18", 0.1786), ),
))

#heading(level: 3, "By Ethnicity")
#xtab(("Item", "Metric", ), ("Total", "White", "Black", "Hispanic", ), ("1083", "682", "122", "147", ), (
  ("Jobs", "TOTAL better", p("14", 0.1405), p("12", 0.1225), p("28", 0.2765), p("14", 0.1419), ),
  ("", "TOTAL worse", p("75", 0.7523), p("78", 0.7788), p("52", 0.5165), p("76", 0.7590), ),
  ("", "NET worse", n("61", 0.6118), n("66", 0.6563), n("24", 0.2401), n("62", 0.6170), ),
  ("Future", "TOTAL better", p("30", 0.3031), p("29", 0.2928), p("32", 0.3207), p("28", 0.2760), ),
  ("", "TOTAL worse", p("59", 0.5895), p("61", 0.6056), p("49", 0.4890), p("64", 0.6392), ),
  ("", "NET worse", n("29", 0.2864), n("31", 0.3128), n("17", 0.1683), n("36", 0.3632), ),
  ("Children", "TOTAL better", p("21", 0.2129), p("20", 0.2007), p("32", 0.3230), p("21", 0.2139), ),
  ("", "TOTAL worse", p("64", 0.6367), p("66", 0.6628), p("50", 0.5021), p("60", 0.6024), ),
  ("", "NET worse", n("42", 0.4237), n("46", 0.4621), n("18", 0.1791), n("39", 0.3885), ),
  ("Finances", "TOTAL better", p("28", 0.2816), p("27", 0.2708), p("30", 0.2972), p("25", 0.2457), ),
  ("", "TOTAL worse", p("42", 0.4169), p("43", 0.4281), p("41", 0.4098), p("42", 0.4186), ),
  ("", "NET worse", n("14", 0.1353), n("16", 0.1572), n("11", 0.1126), n("17", 0.1729), ),
))

#heading(level: 3, "By Education")
#xtab(("Item", "Metric", ), ("Total", "HS or less", "Some college", "BA+", ), ("1083", "235", "394", "454", ), (
  ("Jobs", "TOTAL better", p("14", 0.1405), p("20", 0.1990), p("11", 0.1075), p("11", 0.1060), ),
  ("", "TOTAL worse", p("75", 0.7523), p("66", 0.6578), p("76", 0.7643), p("84", 0.8370), ),
  ("", "NET worse", n("61", 0.6118), n("46", 0.4588), n("66", 0.6568), n("73", 0.7310), ),
  ("Future", "TOTAL better", p("30", 0.3031), p("31", 0.3115), p("28", 0.2758), p("31", 0.3141), ),
  ("", "TOTAL worse", p("59", 0.5895), p("56", 0.5565), p("61", 0.6118), p("61", 0.6062), ),
  ("", "NET worse", n("29", 0.2864), n("24", 0.2449), n("34", 0.3361), n("29", 0.2921), ),
  ("Children", "TOTAL better", p("21", 0.2129), p("27", 0.2738), p("17", 0.1692), p("18", 0.1839), ),
  ("", "TOTAL worse", p("64", 0.6367), p("56", 0.5631), p("66", 0.6638), p("69", 0.6901), ),
  ("", "NET worse", n("42", 0.4237), n("29", 0.2893), n("49", 0.4946), n("51", 0.5062), ),
  ("Finances", "TOTAL better", p("28", 0.2816), p("27", 0.2671), p("22", 0.2222), p("34", 0.3382), ),
  ("", "TOTAL worse", p("42", 0.4169), p("46", 0.4551), p("43", 0.4283), p("37", 0.3709), ),
  ("", "NET worse", n("14", 0.1353), n("19", 0.1880), n("21", 0.2061), n("3", 0.0327), ),
))

#heading(level: 3, "By Household income")
#xtab(("Item", "Metric", ), ("Total", "<50k", "50k-<100k", "100k+", ), ("1083", "345", "339", "399", ), (
  ("Jobs", "TOTAL better", p("14", 0.1405), p("22", 0.2170), p("7", 0.0740), p("11", 0.1125), ),
  ("", "TOTAL worse", p("75", 0.7523), p("63", 0.6283), p("85", 0.8541), p("80", 0.8021), ),
  ("", "NET worse", n("61", 0.6118), n("41", 0.4112), n("78", 0.7801), n("69", 0.6897), ),
  ("Future", "TOTAL better", p("30", 0.3031), p("30", 0.2963), p("23", 0.2348), p("36", 0.3646), ),
  ("", "TOTAL worse", p("59", 0.5895), p("56", 0.5582), p("68", 0.6825), p("55", 0.5483), ),
  ("", "NET worse", n("29", 0.2864), n("26", 0.2620), n("45", 0.4477), n("18", 0.1837), ),
  ("Children", "TOTAL better", p("21", 0.2129), p("24", 0.2401), p("15", 0.1511), p("23", 0.2335), ),
  ("", "TOTAL worse", p("64", 0.6367), p("57", 0.5738), p("71", 0.7124), p("64", 0.6427), ),
  ("", "NET worse", n("42", 0.4237), n("33", 0.3337), n("56", 0.5613), n("41", 0.4092), ),
  ("Finances", "TOTAL better", p("28", 0.2816), p("26", 0.2568), p("20", 0.2015), p("37", 0.3716), ),
  ("", "TOTAL worse", p("42", 0.4169), p("48", 0.4782), p("44", 0.4443), p("33", 0.3302), ),
  ("", "NET worse", n("14", 0.1353), n("22", 0.2214), n("24", 0.2428), n("−4", -0.0414), ),
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
#xtab(("Item", "Metric", ), ("Total", "Female", "Male", ), ("1083", "558", "525", ), (
  ("Children", "TOTAL too much", p("25", 0.2482), p("27", 0.2733), p("22", 0.2213), ),
  ("", "TOTAL too little", p("50", 0.4964), p("50", 0.5046), p("49", 0.4875), ),
  ("", "NET too little", n("25", 0.2481), n("23", 0.2313), n("27", 0.2662), ),
  ("Environment", "TOTAL too much", p("25", 0.2466), p("28", 0.2789), p("21", 0.2119), ),
  ("", "TOTAL too little", p("48", 0.4833), p("49", 0.4856), p("48", 0.4808), ),
  ("", "NET too little", n("24", 0.2367), n("21", 0.2067), n("27", 0.2689), ),
  ("Workers", "TOTAL too much", p("24", 0.2435), p("27", 0.2680), p("22", 0.2172), ),
  ("", "TOTAL too little", p("44", 0.4448), p("47", 0.4702), p("42", 0.4175), ),
  ("", "NET too little", n("20", 0.2013), n("20", 0.2022), n("20", 0.2002), ),
  ("Competitiveness", "TOTAL too much", p("24", 0.2390), p("28", 0.2780), p("20", 0.1971), ),
  ("", "TOTAL too little", p("35", 0.3471), p("33", 0.3304), p("37", 0.3650), ),
  ("", "NET too little", n("11", 0.1081), n("5", 0.0525), n("17", 0.1680), ),
))

#heading(level: 3, "By Party")
#xtab(("Item", "Metric", ), ("Total", "Dem", "Rep", "Ind", ), ("1083", "529", "356", "193", ), (
  ("Children", "TOTAL too much", p("25", 0.2482), p("24", 0.2358), p("25", 0.2531), p("27", 0.2702), ),
  ("", "TOTAL too little", p("50", 0.4964), p("61", 0.6131), p("42", 0.4178), p("41", 0.4111), ),
  ("", "NET too little", n("25", 0.2481), n("38", 0.3773), n("16", 0.1647), n("14", 0.1409), ),
  ("Environment", "TOTAL too much", p("25", 0.2466), p("24", 0.2447), p("27", 0.2727), p("21", 0.2107), ),
  ("", "TOTAL too little", p("48", 0.4833), p("63", 0.6262), p("38", 0.3755), p("40", 0.3997), ),
  ("", "NET too little", n("24", 0.2367), n("38", 0.3815), n("10", 0.1028), n("19", 0.1890), ),
  ("Workers", "TOTAL too much", p("24", 0.2435), p("25", 0.2461), p("26", 0.2569), p("22", 0.2213), ),
  ("", "TOTAL too little", p("44", 0.4448), p("58", 0.5761), p("35", 0.3505), p("36", 0.3573), ),
  ("", "NET too little", n("20", 0.2013), n("33", 0.3300), n("9", 0.0936), n("14", 0.1360), ),
  ("Competitiveness", "TOTAL too much", p("24", 0.2390), p("26", 0.2581), p("23", 0.2331), p("22", 0.2195), ),
  ("", "TOTAL too little", p("35", 0.3471), p("46", 0.4568), p("27", 0.2742), p("28", 0.2752), ),
  ("", "NET too little", n("11", 0.1081), n("20", 0.1987), n("4", 0.0411), n("6", 0.0557), ),
))

#heading(level: 3, "By Age")
#xtab(("Item", "Metric", ), ("Total", "18–34", "35–49", "50–64", "65+", ), ("1083", "203", "274", "266", "340", ), (
  ("Children", "TOTAL too much", p("25", 0.2482), p("29", 0.2946), p("26", 0.2605), p("19", 0.1891), p("24", 0.2360), ),
  ("", "TOTAL too little", p("50", 0.4964), p("52", 0.5158), p("45", 0.4455), p("50", 0.5022), p("52", 0.5195), ),
  ("", "NET too little", n("25", 0.2481), n("22", 0.2212), n("19", 0.1850), n("31", 0.3131), n("28", 0.2836), ),
  ("Environment", "TOTAL too much", p("25", 0.2466), p("28", 0.2802), p("22", 0.2218), p("20", 0.1985), p("28", 0.2767), ),
  ("", "TOTAL too little", p("48", 0.4833), p("47", 0.4740), p("47", 0.4712), p("52", 0.5167), p("48", 0.4756), ),
  ("", "NET too little", n("24", 0.2367), n("19", 0.1937), n("25", 0.2494), n("32", 0.3182), n("20", 0.1988), ),
  ("Workers", "TOTAL too much", p("24", 0.2435), p("29", 0.2889), p("26", 0.2596), p("18", 0.1830), p("23", 0.2297), ),
  ("", "TOTAL too little", p("44", 0.4448), p("37", 0.3705), p("43", 0.4266), p("49", 0.4891), p("51", 0.5099), ),
  ("", "NET too little", n("20", 0.2013), n("8", 0.0816), n("17", 0.1670), n("31", 0.3062), n("28", 0.2802), ),
  ("Competitiveness", "TOTAL too much", p("24", 0.2390), p("29", 0.2940), p("27", 0.2694), p("19", 0.1860), p("19", 0.1922), ),
  ("", "TOTAL too little", p("35", 0.3471), p("31", 0.3088), p("27", 0.2664), p("40", 0.4042), p("42", 0.4211), ),
  ("", "NET too little", n("11", 0.1081), n("1", 0.0148), n("0", -0.0030), n("22", 0.2182), n("23", 0.2289), ),
))

#heading(level: 3, "By Ethnicity")
#xtab(("Item", "Metric", ), ("Total", "White", "Black", "Hispanic", ), ("1083", "682", "122", "147", ), (
  ("Children", "TOTAL too much", p("25", 0.2482), p("22", 0.2240), p("35", 0.3486), p("30", 0.3023), ),
  ("", "TOTAL too little", p("50", 0.4964), p("52", 0.5240), p("30", 0.3002), p("49", 0.4879), ),
  ("", "NET too little", n("25", 0.2481), n("30", 0.3000), n("−5", -0.0484), n("19", 0.1856), ),
  ("Environment", "TOTAL too much", p("25", 0.2466), p("23", 0.2290), p("28", 0.2787), p("32", 0.3245), ),
  ("", "TOTAL too little", p("48", 0.4833), p("54", 0.5400), p("24", 0.2431), p("43", 0.4250), ),
  ("", "NET too little", n("24", 0.2367), n("31", 0.3109), n("−4", -0.0357), n("10", 0.1004), ),
  ("Workers", "TOTAL too much", p("24", 0.2435), p("21", 0.2087), p("36", 0.3562), p("29", 0.2933), ),
  ("", "TOTAL too little", p("44", 0.4448), p("50", 0.5005), p("22", 0.2236), p("40", 0.3983), ),
  ("", "NET too little", n("20", 0.2013), n("29", 0.2917), n("−13", -0.1327), n("11", 0.1050), ),
  ("Competitiveness", "TOTAL too much", p("24", 0.2390), p("22", 0.2247), p("28", 0.2788), p("27", 0.2684), ),
  ("", "TOTAL too little", p("35", 0.3471), p("36", 0.3552), p("28", 0.2830), p("36", 0.3588), ),
  ("", "NET too little", n("11", 0.1081), n("13", 0.1306), n("0", 0.0043), n("9", 0.0905), ),
))

#heading(level: 3, "By Education")
#xtab(("Item", "Metric", ), ("Total", "HS or less", "Some college", "BA+", ), ("1083", "235", "394", "454", ), (
  ("Children", "TOTAL too much", p("25", 0.2482), p("29", 0.2897), p("27", 0.2704), p("19", 0.1915), ),
  ("", "TOTAL too little", p("50", 0.4964), p("42", 0.4162), p("44", 0.4375), p("62", 0.6175), ),
  ("", "NET too little", n("25", 0.2481), n("13", 0.1265), n("17", 0.1671), n("43", 0.4260), ),
  ("Environment", "TOTAL too much", p("25", 0.2466), p("28", 0.2794), p("28", 0.2763), p("19", 0.1931), ),
  ("", "TOTAL too little", p("48", 0.4833), p("41", 0.4073), p("42", 0.4164), p("61", 0.6061), ),
  ("", "NET too little", n("24", 0.2367), n("13", 0.1278), n("14", 0.1401), n("41", 0.4130), ),
  ("Workers", "TOTAL too much", p("24", 0.2435), p("30", 0.3018), p("27", 0.2681), p("17", 0.1684), ),
  ("", "TOTAL too little", p("44", 0.4448), p("36", 0.3572), p("42", 0.4204), p("55", 0.5486), ),
  ("", "NET too little", n("20", 0.2013), n("6", 0.0555), n("15", 0.1523), n("38", 0.3803), ),
  ("Competitiveness", "TOTAL too much", p("24", 0.2390), p("28", 0.2753), p("26", 0.2567), p("19", 0.1905), ),
  ("", "TOTAL too little", p("35", 0.3471), p("32", 0.3156), p("32", 0.3151), p("40", 0.4009), ),
  ("", "NET too little", n("11", 0.1081), n("4", 0.0403), n("6", 0.0585), n("21", 0.2105), ),
))

#heading(level: 3, "By Household income")
#xtab(("Item", "Metric", ), ("Total", "<50k", "50k-<100k", "100k+", ), ("1083", "345", "339", "399", ), (
  ("Children", "TOTAL too much", p("25", 0.2482), p("33", 0.3280), p("22", 0.2214), p("19", 0.1854), ),
  ("", "TOTAL too little", p("50", 0.4964), p("36", 0.3647), p("57", 0.5676), p("58", 0.5788), ),
  ("", "NET too little", n("25", 0.2481), n("4", 0.0367), n("35", 0.3462), n("39", 0.3935), ),
  ("Environment", "TOTAL too much", p("25", 0.2466), p("31", 0.3050), p("23", 0.2313), p("20", 0.1971), ),
  ("", "TOTAL too little", p("48", 0.4833), p("37", 0.3677), p("52", 0.5242), p("57", 0.5728), ),
  ("", "NET too little", n("24", 0.2367), n("6", 0.0628), n("29", 0.2929), n("38", 0.3757), ),
  ("Workers", "TOTAL too much", p("24", 0.2435), p("31", 0.3129), p("25", 0.2519), p("16", 0.1634), ),
  ("", "TOTAL too little", p("44", 0.4448), p("36", 0.3588), p("49", 0.4865), p("50", 0.5023), ),
  ("", "NET too little", n("20", 0.2013), n("5", 0.0459), n("23", 0.2346), n("34", 0.3389), ),
  ("Competitiveness", "TOTAL too much", p("24", 0.2390), p("30", 0.3009), p("22", 0.2180), p("19", 0.1903), ),
  ("", "TOTAL too little", p("35", 0.3471), p("28", 0.2785), p("40", 0.4014), p("38", 0.3763), ),
  ("", "NET too little", n("11", 0.1081), n("−2", -0.0223), n("18", 0.1835), n("19", 0.1860), ),
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
#xtab(("Item", "Metric", ), ("Total", "Female", "Male", ), ("1083", "558", "525", ), (
  ("Superintelligence", "TOTAL likely", p("72", 0.7173), p("70", 0.6995), p("74", 0.7364), ),
  ("", "TOTAL unlikely", p("17", 0.1669), p("17", 0.1661), p("17", 0.1678), ),
  ("", "NET likely", n("55", 0.5504), n("53", 0.5334), n("57", 0.5686), ),
  ("Loss-of-control", "TOTAL likely", p("78", 0.7830), p("79", 0.7880), p("78", 0.7777), ),
  ("", "TOTAL unlikely", p("10", 0.0966), p("9", 0.0904), p("10", 0.1033), ),
  ("", "NET likely", n("69", 0.6864), n("70", 0.6976), n("67", 0.6744), ),
  ("Breakthroughs", "TOTAL likely", p("70", 0.6972), p("63", 0.6323), p("77", 0.7668), ),
  ("", "TOTAL unlikely", p("14", 0.1436), p("17", 0.1720), p("11", 0.1130), ),
  ("", "NET likely", n("55", 0.5536), n("46", 0.4603), n("65", 0.6538), ),
  ("WMDs", "TOTAL likely", p("71", 0.7114), p("72", 0.7187), p("70", 0.7036), ),
  ("", "TOTAL unlikely", p("12", 0.1160), p("10", 0.0970), p("14", 0.1365), ),
  ("", "NET likely", n("60", 0.5954), n("62", 0.6217), n("57", 0.5671), ),
))

#heading(level: 3, "By Party")
#xtab(("Item", "Metric", ), ("Total", "Dem", "Rep", "Ind", ), ("1083", "529", "356", "193", ), (
  ("Superintelligence", "TOTAL likely", p("72", 0.7173), p("75", 0.7496), p("78", 0.7755), p("57", 0.5738), ),
  ("", "TOTAL unlikely", p("17", 0.1669), p("18", 0.1849), p("13", 0.1308), p("20", 0.2007), ),
  ("", "NET likely", n("55", 0.5504), n("56", 0.5647), n("64", 0.6447), n("37", 0.3731), ),
  ("Loss-of-control", "TOTAL likely", p("78", 0.7830), p("87", 0.8743), p("76", 0.7588), p("66", 0.6576), ),
  ("", "TOTAL unlikely", p("10", 0.0966), p("7", 0.0676), p("11", 0.1101), p("13", 0.1317), ),
  ("", "NET likely", n("69", 0.6864), n("81", 0.8067), n("65", 0.6487), n("53", 0.5260), ),
  ("Breakthroughs", "TOTAL likely", p("70", 0.6972), p("75", 0.7451), p("74", 0.7426), p("53", 0.5268), ),
  ("", "TOTAL unlikely", p("14", 0.1436), p("11", 0.1142), p("14", 0.1380), p("22", 0.2153), ),
  ("", "NET likely", n("55", 0.5536), n("63", 0.6309), n("60", 0.6046), n("31", 0.3116), ),
  ("WMDs", "TOTAL likely", p("71", 0.7114), p("78", 0.7773), p("74", 0.7395), p("54", 0.5384), ),
  ("", "TOTAL unlikely", p("12", 0.1160), p("9", 0.0948), p("12", 0.1194), p("16", 0.1551), ),
  ("", "NET likely", n("60", 0.5954), n("68", 0.6825), n("62", 0.6200), n("38", 0.3834), ),
))

#heading(level: 3, "By Age")
#xtab(("Item", "Metric", ), ("Total", "18–34", "35–49", "50–64", "65+", ), ("1083", "203", "274", "266", "340", ), (
  ("Superintelligence", "TOTAL likely", p("72", 0.7173), p("59", 0.5871), p("70", 0.7002), p("79", 0.7853), p("83", 0.8255), ),
  ("", "TOTAL unlikely", p("17", 0.1669), p("27", 0.2659), p("17", 0.1668), p("10", 0.1018), p("11", 0.1103), ),
  ("", "NET likely", n("55", 0.5504), n("32", 0.3212), n("53", 0.5334), n("68", 0.6835), n("72", 0.7152), ),
  ("Loss-of-control", "TOTAL likely", p("78", 0.7830), p("68", 0.6805), p("78", 0.7756), p("84", 0.8422), p("86", 0.8569), ),
  ("", "TOTAL unlikely", p("10", 0.0966), p("17", 0.1737), p("9", 0.0897), p("7", 0.0674), p("4", 0.0394), ),
  ("", "NET likely", n("69", 0.6864), n("51", 0.5068), n("69", 0.6859), n("77", 0.7748), n("82", 0.8176), ),
  ("Breakthroughs", "TOTAL likely", p("70", 0.6972), p("60", 0.6023), p("65", 0.6546), p("80", 0.7972), p("76", 0.7595), ),
  ("", "TOTAL unlikely", p("14", 0.1436), p("21", 0.2093), p("14", 0.1434), p("10", 0.0986), p("11", 0.1078), ),
  ("", "NET likely", n("55", 0.5536), n("39", 0.3930), n("51", 0.5113), n("70", 0.6986), n("65", 0.6517), ),
  ("WMDs", "TOTAL likely", p("71", 0.7114), p("60", 0.6042), p("70", 0.7022), p("77", 0.7681), p("80", 0.7951), ),
  ("", "TOTAL unlikely", p("12", 0.1160), p("19", 0.1913), p("13", 0.1301), p("8", 0.0786), p("5", 0.0476), ),
  ("", "NET likely", n("60", 0.5954), n("41", 0.4130), n("57", 0.5721), n("69", 0.6895), n("75", 0.7475), ),
))

#heading(level: 3, "By Ethnicity")
#xtab(("Item", "Metric", ), ("Total", "White", "Black", "Hispanic", ), ("1083", "682", "122", "147", ), (
  ("Superintelligence", "TOTAL likely", p("72", 0.7173), p("74", 0.7357), p("60", 0.6020), p("72", 0.7187), ),
  ("", "TOTAL unlikely", p("17", 0.1669), p("17", 0.1673), p("17", 0.1742), p("17", 0.1664), ),
  ("", "NET likely", n("55", 0.5504), n("57", 0.5684), n("43", 0.4277), n("55", 0.5523), ),
  ("Loss-of-control", "TOTAL likely", p("78", 0.7830), p("83", 0.8282), p("55", 0.5492), p("77", 0.7699), ),
  ("", "TOTAL unlikely", p("10", 0.0966), p("7", 0.0727), p("18", 0.1834), p("12", 0.1176), ),
  ("", "NET likely", n("69", 0.6864), n("76", 0.7555), n("37", 0.3658), n("65", 0.6523), ),
  ("Breakthroughs", "TOTAL likely", p("70", 0.6972), p("71", 0.7061), p("62", 0.6216), p("67", 0.6654), ),
  ("", "TOTAL unlikely", p("14", 0.1436), p("16", 0.1553), p("12", 0.1154), p("16", 0.1550), ),
  ("", "NET likely", n("55", 0.5536), n("55", 0.5508), n("51", 0.5062), n("51", 0.5104), ),
  ("WMDs", "TOTAL likely", p("71", 0.7114), p("74", 0.7359), p("60", 0.6020), p("68", 0.6819), ),
  ("", "TOTAL unlikely", p("12", 0.1160), p("11", 0.1127), p("9", 0.0907), p("15", 0.1523), ),
  ("", "NET likely", n("60", 0.5954), n("62", 0.6232), n("51", 0.5113), n("53", 0.5296), ),
))

#heading(level: 3, "By Education")
#xtab(("Item", "Metric", ), ("Total", "HS or less", "Some college", "BA+", ), ("1083", "235", "394", "454", ), (
  ("Superintelligence", "TOTAL likely", p("72", 0.7173), p("66", 0.6634), p("75", 0.7528), p("75", 0.7452), ),
  ("", "TOTAL unlikely", p("17", 0.1669), p("20", 0.2011), p("10", 0.1026), p("18", 0.1789), ),
  ("", "NET likely", n("55", 0.5504), n("46", 0.4624), n("65", 0.6503), n("57", 0.5663), ),
  ("Loss-of-control", "TOTAL likely", p("78", 0.7830), p("71", 0.7144), p("79", 0.7935), p("84", 0.8433), ),
  ("", "TOTAL unlikely", p("10", 0.0966), p("15", 0.1496), p("6", 0.0565), p("7", 0.0727), ),
  ("", "NET likely", n("69", 0.6864), n("56", 0.5648), n("74", 0.7370), n("77", 0.7707), ),
  ("Breakthroughs", "TOTAL likely", p("70", 0.6972), p("65", 0.6450), p("67", 0.6718), p("77", 0.7668), ),
  ("", "TOTAL unlikely", p("14", 0.1436), p("17", 0.1659), p("12", 0.1244), p("14", 0.1351), ),
  ("", "NET likely", n("55", 0.5536), n("48", 0.4790), n("55", 0.5474), n("63", 0.6316), ),
  ("WMDs", "TOTAL likely", p("71", 0.7114), p("65", 0.6513), p("74", 0.7377), p("75", 0.7522), ),
  ("", "TOTAL unlikely", p("12", 0.1160), p("16", 0.1553), p("8", 0.0803), p("10", 0.1027), ),
  ("", "NET likely", n("60", 0.5954), n("50", 0.4960), n("66", 0.6574), n("65", 0.6495), ),
))

#heading(level: 3, "By Household income")
#xtab(("Item", "Metric", ), ("Total", "<50k", "50k-<100k", "100k+", ), ("1083", "345", "339", "399", ), (
  ("Superintelligence", "TOTAL likely", p("72", 0.7173), p("69", 0.6897), p("71", 0.7131), p("75", 0.7497), ),
  ("", "TOTAL unlikely", p("17", 0.1669), p("13", 0.1327), p("21", 0.2053), p("17", 0.1725), ),
  ("", "NET likely", n("55", 0.5504), n("56", 0.5570), n("51", 0.5079), n("58", 0.5772), ),
  ("Loss-of-control", "TOTAL likely", p("78", 0.7830), p("76", 0.7558), p("78", 0.7768), p("82", 0.8168), ),
  ("", "TOTAL unlikely", p("10", 0.0966), p("9", 0.0878), p("12", 0.1181), p("9", 0.0887), ),
  ("", "NET likely", n("69", 0.6864), n("67", 0.6680), n("66", 0.6587), n("73", 0.7280), ),
  ("Breakthroughs", "TOTAL likely", p("70", 0.6972), p("67", 0.6713), p("66", 0.6551), p("76", 0.7580), ),
  ("", "TOTAL unlikely", p("14", 0.1436), p("12", 0.1167), p("18", 0.1778), p("14", 0.1447), ),
  ("", "NET likely", n("55", 0.5536), n("55", 0.5546), n("48", 0.4773), n("61", 0.6133), ),
  ("WMDs", "TOTAL likely", p("71", 0.7114), p("69", 0.6901), p("73", 0.7270), p("72", 0.7215), ),
  ("", "TOTAL unlikely", p("12", 0.1160), p("11", 0.1127), p("10", 0.1020), p("13", 0.1308), ),
  ("", "NET likely", n("60", 0.5954), n("58", 0.5775), n("63", 0.6250), n("59", 0.5907), ),
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

This is the sixth tracking wave of the *Americans on AI* survey, a
project of Athena Insights.

Respondents were interviewed between September 10 and 14, 2026 as part of NORC's
AmeriSpeak Omnibus. AmeriSpeak is a probability-based household panel
recruited by address-based sampling from the NORC National Frame, designed
to be representative of the US household population. Interviews were
conducted online (95%) and by phone (5%), in English; 1,083 adults
completed the module.

Results are weighted with NORC's vote-choice study weights. NORC first
adjusts the panel base weights for sample selection and nonresponse and
rakes to Current Population Survey benchmarks on age, sex, census
division, race/ethnicity, and education; a second round of raking then
adds 2024 presidential vote choice. The voter shares are benchmarked to
the 2024 election results. This yields a design effect of 1.85 and
an effective sample size of 585. This wave fields no oversamples:
the achieved sample follows population shares. Standard errors are
design-based (Taylor linearization over NORC's variance strata and
units).

The full-sample margin of error is ±4.0 percentage points at 95%
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

Unweighted demographic composition of the achieved sample (n=1,083).

This wave fields no oversamples, so unweighted shares approximate population shares; the report's figures are weighted to NORC's Current Population Survey benchmarks (see the methodology). *Party* is profiled by NORC, not a weighting dimension of this module's design.

#comp(("Dimension", "Group", "n", "%", ), (
  ("Sex", "Female", "558", "52", ),
  ("", "Male", "525", "48", ),
  ("Party", "Dem", "529", "49", ),
  ("", "Rep", "356", "33", ),
  ("", "Ind", "193", "18", ),
  ("", "Unknown", "5", "0", ),
  ("Age", "18–34", "203", "19", ),
  ("", "35–49", "274", "25", ),
  ("", "50–64", "266", "25", ),
  ("", "65+", "340", "31", ),
  ("Ethnicity", "White", "682", "63", ),
  ("", "Black", "122", "11", ),
  ("", "Hispanic", "147", "14", ),
  ("", "Asian/PI", "94", "9", ),
  ("", "Two or more", "29", "3", ),
  ("", "Other", "9", "1", ),
  ("Education", "HS or less", "235", "22", ),
  ("", "Some college", "394", "36", ),
  ("", "BA+", "454", "42", ),
  ("Household income", "<50k", "345", "32", ),
  ("", "50k-<100k", "339", "31", ),
  ("", "100k+", "399", "37", ),
))
