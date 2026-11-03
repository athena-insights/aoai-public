#import "/tracker-reports/report.typ": *
#show: report.with(title: "Americans on AI — 30 June 2026")

Athena Insights surveyed 1,814 US adults from June 25-30, 2026, via NORC's AmeriSpeak Panel, a probability-based panel designed to be representative of the US household population.

This release includes the results of that survey as a whole-sample topline, then as crosstabs broken out by subgroup, followed by appendices covering the questionnaire, methodology, and unweighted sample composition.

Results are weighted to US population benchmarks; the full-sample margin of error is ±3.4 percentage points at 95% confidence, accounting for the design effect of weighting. 

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
  ("Jobs", p("49", 0.4913), p("38", 0.3751), p("7", 0.0698), p("1", 0.0124), p("3", 0.0321), ),
  ("Inflation", p("64", 0.6436), p("27", 0.2665), p("3", 0.0341), p("1", 0.0087), p("3", 0.0287), ),
  ("AI harms", p("38", 0.3762), p("40", 0.3986), p("14", 0.1398), p("4", 0.0351), p("4", 0.0359), ),
  ("Immigration", p("34", 0.3432), p("37", 0.3686), p("17", 0.1694), p("7", 0.0722), p("3", 0.0263), ),
  ("Health care", p("68", 0.6813), p("24", 0.2358), p("3", 0.0324), p("1", 0.0144), p("2", 0.0183), ),
  ("Crime", p("52", 0.5187), p("35", 0.3544), p("8", 0.0750), p("2", 0.0150), p("2", 0.0220), ),
  ("Climate change", p("38", 0.3824), p("32", 0.3236), p("14", 0.1392), p("11", 0.1091), p("3", 0.0320), ),
))

#heading(level: 2, "Affect")

#stem("Thinking about AI's growing role in society, which of these options comes closest to how you feel, even if none are exactly right?")

#note[*Response distribution (weighted)* — % of all respondents. "No answer" (2% or less) is not shown.]
#dist(("Response", "%", ), (
  ("Very excited", p("6", 0.0643), ),
  ("Somewhat excited", p("18", 0.1786), ),
  ("Somewhat concerned", p("37", 0.3745), ),
  ("Very concerned", p("28", 0.2813), ),
  ("None of these are close to how I feel", p("9", 0.0904), ),
))

#heading(level: 2, "Agency")

#stem("Again, thinking about AI, which statement comes closer to your view, even if neither is exactly right?")

#note[*Response distribution (weighted)* — % of all respondents. "No answer" (2% or less) is not shown.]
#dist(("Response", "%", ), (
  ("People like me can shape how much AI is part of our lives", p("15", 0.1455), ),
  ("AI is coming into our lives whether we want it or not", p("70", 0.6985), ),
  ("Neither of these are close to how I feel", p("14", 0.1385), ),
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
  ("Saving time", p("18", 0.1819), p("29", 0.2921), p("15", 0.1473), p("16", 0.1630), p("20", 0.1998), ),
  ("Pressured to do more", p("23", 0.2310), p("28", 0.2827), p("19", 0.1935), p("9", 0.0855), p("20", 0.1950), ),
  ("Losing connections", p("32", 0.3175), p("28", 0.2767), p("17", 0.1701), p("9", 0.0940), p("13", 0.1275), ),
  ("Real vs. fake", p("54", 0.5354), p("28", 0.2798), p("8", 0.0809), p("3", 0.0314), p("6", 0.0607), ),
  ("Better health care", p("5", 0.0490), p("12", 0.1203), p("20", 0.2044), p("35", 0.3523), p("26", 0.2607), ),
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
  ("Jobs", p("3", 0.0272), p("11", 0.1117), p("43", 0.4293), p("32", 0.3156), p("9", 0.0883), p("3", 0.0279), ),
  ("Future", p("4", 0.0393), p("29", 0.2912), p("34", 0.3380), p("20", 0.2014), p("9", 0.0939), p("4", 0.0362), ),
  ("Children", p("3", 0.0302), p("15", 0.1532), p("35", 0.3543), p("29", 0.2908), p("14", 0.1423), p("3", 0.0292), ),
  ("Finances", p("4", 0.0419), p("21", 0.2124), p("29", 0.2927), p("15", 0.1527), p("26", 0.2619), p("4", 0.0384), ),
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
  ("Children", p("13", 0.1273), p("13", 0.1339), p("13", 0.1274), p("18", 0.1806), p("28", 0.2846), p("13", 0.1280), ),
  ("Environment", p("12", 0.1192), p("13", 0.1298), p("13", 0.1335), p("14", 0.1430), p("31", 0.3148), p("15", 0.1453), ),
  ("Workers", p("10", 0.1045), p("14", 0.1358), p("16", 0.1592), p("19", 0.1930), p("25", 0.2451), p("14", 0.1415), ),
  ("Competitiveness", p("9", 0.0930), p("11", 0.1093), p("22", 0.2208), p("16", 0.1625), p("16", 0.1572), p("24", 0.2374), ),
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
  ("Superintelligence", p("27", 0.2703), p("44", 0.4363), p("12", 0.1248), p("6", 0.0556), p("10", 0.0958), ),
  ("Loss-of-control", p("28", 0.2781), p("49", 0.4873), p("9", 0.0864), p("2", 0.0234), p("11", 0.1069), ),
  ("Breakthroughs", p("18", 0.1775), p("49", 0.4944), p("13", 0.1303), p("5", 0.0456), p("13", 0.1349), ),
  ("WMDs", p("18", 0.1768), p("53", 0.5335), p("11", 0.1074), p("3", 0.0287), p("14", 0.1387), ),
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
#xtab(("Item", "Metric", ), ("Total", "Female", "Male", ), ("1814", "967", "847", ), (
  ("Jobs", "TOTAL high priority", p("87", 0.8664), p("89", 0.8864), p("84", 0.8449), ),
  ("", "TOTAL lower priority", p("8", 0.0821), p("7", 0.0684), p("10", 0.0969), ),
  ("", "NET priority", n("78", 0.7843), n("82", 0.8180), n("75", 0.7480), ),
  ("Inflation", "TOTAL high priority", p("91", 0.9101), p("92", 0.9162), p("90", 0.9036), ),
  ("", "TOTAL lower priority", p("4", 0.0428), p("4", 0.0350), p("5", 0.0512), ),
  ("", "NET priority", n("87", 0.8673), n("88", 0.8812), n("85", 0.8524), ),
  ("AI harms", "TOTAL high priority", p("77", 0.7748), p("82", 0.8227), p("72", 0.7234), ),
  ("", "TOTAL lower priority", p("17", 0.1749), p("12", 0.1230), p("23", 0.2308), ),
  ("", "NET priority", n("60", 0.5999), n("70", 0.6997), n("49", 0.4926), ),
  ("Immigration", "TOTAL high priority", p("71", 0.7117), p("74", 0.7366), p("69", 0.6850), ),
  ("", "TOTAL lower priority", p("24", 0.2416), p("22", 0.2245), p("26", 0.2600), ),
  ("", "NET priority", n("47", 0.4702), n("51", 0.5121), n("43", 0.4250), ),
  ("Health care", "TOTAL high priority", p("92", 0.9171), p("94", 0.9365), p("90", 0.8962), ),
  ("", "TOTAL lower priority", p("5", 0.0468), p("4", 0.0390), p("6", 0.0551), ),
  ("", "NET priority", n("87", 0.8704), n("90", 0.8975), n("84", 0.8411), ),
  ("Crime", "TOTAL high priority", p("87", 0.8731), p("90", 0.8961), p("85", 0.8483), ),
  ("", "TOTAL lower priority", p("9", 0.0900), p("7", 0.0707), p("11", 0.1109), ),
  ("", "NET priority", n("78", 0.7830), n("83", 0.8254), n("74", 0.7374), ),
  ("Climate change", "TOTAL high priority", p("71", 0.7060), p("76", 0.7636), p("64", 0.6441), ),
  ("", "TOTAL lower priority", p("25", 0.2483), p("19", 0.1885), p("31", 0.3126), ),
  ("", "NET priority", n("46", 0.4577), n("58", 0.5751), n("33", 0.3315), ),
))

#heading(level: 3, "By Party")
#xtab(("Item", "Metric", ), ("Total", "Dem", "Rep", "Ind", ), ("1814", "916", "519", "371", ), (
  ("Jobs", "TOTAL high priority", p("87", 0.8664), p("93", 0.9266), p("83", 0.8296), p("83", 0.8257), ),
  ("", "TOTAL lower priority", p("8", 0.0821), p("5", 0.0542), p("11", 0.1118), p("8", 0.0829), ),
  ("", "NET priority", n("78", 0.7843), n("87", 0.8724), n("72", 0.7178), n("74", 0.7428), ),
  ("Inflation", "TOTAL high priority", p("91", 0.9101), p("95", 0.9538), p("91", 0.9118), p("84", 0.8374), ),
  ("", "TOTAL lower priority", p("4", 0.0428), p("3", 0.0273), p("5", 0.0530), p("5", 0.0530), ),
  ("", "NET priority", n("87", 0.8673), n("93", 0.9265), n("86", 0.8589), n("78", 0.7844), ),
  ("AI harms", "TOTAL high priority", p("77", 0.7748), p("84", 0.8387), p("76", 0.7608), p("69", 0.6909), ),
  ("", "TOTAL lower priority", p("17", 0.1749), p("13", 0.1342), p("20", 0.1995), p("21", 0.2063), ),
  ("", "NET priority", n("60", 0.5999), n("70", 0.7045), n("56", 0.5614), n("48", 0.4846), ),
  ("Immigration", "TOTAL high priority", p("71", 0.7117), p("62", 0.6192), p("86", 0.8575), p("63", 0.6323), ),
  ("", "TOTAL lower priority", p("24", 0.2416), p("35", 0.3534), p("10", 0.0998), p("29", 0.2852), ),
  ("", "NET priority", n("47", 0.4702), n("27", 0.2659), n("76", 0.7577), n("35", 0.3471), ),
  ("Health care", "TOTAL high priority", p("92", 0.9171), p("96", 0.9649), p("89", 0.8908), p("88", 0.8814), ),
  ("", "TOTAL lower priority", p("5", 0.0468), p("2", 0.0199), p("7", 0.0666), p("6", 0.0604), ),
  ("", "NET priority", n("87", 0.8704), n("95", 0.9450), n("82", 0.8242), n("82", 0.8210), ),
  ("Crime", "TOTAL high priority", p("87", 0.8731), p("88", 0.8784), p("92", 0.9170), p("80", 0.7959), ),
  ("", "TOTAL lower priority", p("9", 0.0900), p("11", 0.1079), p("5", 0.0534), p("12", 0.1201), ),
  ("", "NET priority", n("78", 0.7830), n("77", 0.7705), n("86", 0.8637), n("68", 0.6758), ),
  ("Climate change", "TOTAL high priority", p("71", 0.7060), p("92", 0.9217), p("49", 0.4930), p("69", 0.6851), ),
  ("", "TOTAL lower priority", p("25", 0.2483), p("5", 0.0540), p("47", 0.4669), p("23", 0.2281), ),
  ("", "NET priority", n("46", 0.4577), n("87", 0.8677), n("3", 0.0261), n("46", 0.4570), ),
))

#heading(level: 3, "By Age")
#xtab(("Item", "Metric", ), ("Total", "18–34", "35–49", "50–64", "65+", ), ("1814", "411", "458", "478", "467", ), (
  ("Jobs", "TOTAL high priority", p("87", 0.8664), p("83", 0.8338), p("87", 0.8708), p("91", 0.9098), p("86", 0.8602), ),
  ("", "TOTAL lower priority", p("8", 0.0821), p("11", 0.1119), p("7", 0.0738), p("5", 0.0511), p("8", 0.0841), ),
  ("", "NET priority", n("78", 0.7843), n("72", 0.7219), n("80", 0.7969), n("86", 0.8587), n("78", 0.7761), ),
  ("Inflation", "TOTAL high priority", p("91", 0.9101), p("86", 0.8632), p("89", 0.8949), p("97", 0.9677), p("93", 0.9276), ),
  ("", "TOTAL lower priority", p("4", 0.0428), p("8", 0.0827), p("5", 0.0457), p("1", 0.0088), p("2", 0.0243), ),
  ("", "NET priority", n("87", 0.8673), n("78", 0.7805), n("85", 0.8492), n("96", 0.9589), n("90", 0.9033), ),
  ("AI harms", "TOTAL high priority", p("77", 0.7748), p("70", 0.6973), p("74", 0.7416), p("84", 0.8434), p("84", 0.8366), ),
  ("", "TOTAL lower priority", p("17", 0.1749), p("26", 0.2605), p("20", 0.1981), p("11", 0.1092), p("11", 0.1111), ),
  ("", "NET priority", n("60", 0.5999), n("44", 0.4368), n("54", 0.5434), n("73", 0.7343), n("73", 0.7255), ),
  ("Immigration", "TOTAL high priority", p("71", 0.7117), p("59", 0.5930), p("65", 0.6542), p("83", 0.8273), p("80", 0.8032), ),
  ("", "TOTAL lower priority", p("24", 0.2416), p("35", 0.3511), p("31", 0.3085), p("13", 0.1320), p("15", 0.1460), ),
  ("", "NET priority", n("47", 0.4702), n("24", 0.2418), n("35", 0.3457), n("70", 0.6954), n("66", 0.6572), ),
  ("Health care", "TOTAL high priority", p("92", 0.9171), p("86", 0.8588), p("94", 0.9418), p("96", 0.9609), p("92", 0.9205), ),
  ("", "TOTAL lower priority", p("5", 0.0468), p("10", 0.0977), p("3", 0.0270), p("2", 0.0209), p("3", 0.0304), ),
  ("", "NET priority", n("87", 0.8704), n("76", 0.7610), n("91", 0.9148), n("94", 0.9400), n("89", 0.8901), ),
  ("Crime", "TOTAL high priority", p("87", 0.8731), p("79", 0.7945), p("86", 0.8554), p("94", 0.9400), p("92", 0.9218), ),
  ("", "TOTAL lower priority", p("9", 0.0900), p("15", 0.1512), p("11", 0.1111), p("5", 0.0451), p("4", 0.0381), ),
  ("", "NET priority", n("78", 0.7830), n("64", 0.6432), n("74", 0.7443), n("89", 0.8949), n("88", 0.8837), ),
  ("Climate change", "TOTAL high priority", p("71", 0.7060), p("70", 0.7005), p("69", 0.6908), p("72", 0.7204), p("71", 0.7146), ),
  ("", "TOTAL lower priority", p("25", 0.2483), p("23", 0.2348), p("26", 0.2551), p("26", 0.2575), p("25", 0.2488), ),
  ("", "NET priority", n("46", 0.4577), n("47", 0.4657), n("44", 0.4356), n("46", 0.4629), n("47", 0.4658), ),
))

#heading(level: 3, "By Ethnicity")
#xtab(("Item", "Metric", ), ("Total", "White", "Black", "Hispanic", "Asian/PI", ), ("1814", "693", "479", "488", "112", ), (
  ("Jobs", "TOTAL high priority", p("87", 0.8664), p("86", 0.8589), p("92", 0.9198), p("87", 0.8724), p("86", 0.8609), ),
  ("", "TOTAL lower priority", p("8", 0.0821), p("9", 0.0858), p("6", 0.0602), p("7", 0.0652), p("8", 0.0825), ),
  ("", "NET priority", n("78", 0.7843), n("77", 0.7730), n("86", 0.8596), n("81", 0.8072), n("78", 0.7784), ),
  ("Inflation", "TOTAL high priority", p("91", 0.9101), p("92", 0.9187), p("91", 0.9112), p("90", 0.9022), p("88", 0.8829), ),
  ("", "TOTAL lower priority", p("4", 0.0428), p("3", 0.0288), p("7", 0.0700), p("6", 0.0588), p("6", 0.0605), ),
  ("", "NET priority", n("87", 0.8673), n("89", 0.8899), n("84", 0.8412), n("84", 0.8434), n("82", 0.8224), ),
  ("AI harms", "TOTAL high priority", p("77", 0.7748), p("78", 0.7846), p("77", 0.7741), p("74", 0.7441), p("78", 0.7789), ),
  ("", "TOTAL lower priority", p("17", 0.1749), p("17", 0.1698), p("18", 0.1770), p("19", 0.1865), p("16", 0.1645), ),
  ("", "NET priority", n("60", 0.5999), n("61", 0.6148), n("60", 0.5971), n("56", 0.5575), n("61", 0.6144), ),
  ("Immigration", "TOTAL high priority", p("71", 0.7117), p("74", 0.7362), p("72", 0.7220), p("64", 0.6440), p("71", 0.7075), ),
  ("", "TOTAL lower priority", p("24", 0.2416), p("22", 0.2156), p("24", 0.2431), p("31", 0.3103), p("23", 0.2348), ),
  ("", "NET priority", n("47", 0.4702), n("52", 0.5205), n("48", 0.4789), n("33", 0.3337), n("47", 0.4727), ),
  ("Health care", "TOTAL high priority", p("92", 0.9171), p("92", 0.9216), p("93", 0.9343), p("91", 0.9115), p("89", 0.8908), ),
  ("", "TOTAL lower priority", p("5", 0.0468), p("4", 0.0438), p("4", 0.0444), p("4", 0.0408), p("6", 0.0600), ),
  ("", "NET priority", n("87", 0.8704), n("88", 0.8779), n("89", 0.8899), n("87", 0.8706), n("83", 0.8308), ),
  ("Crime", "TOTAL high priority", p("87", 0.8731), p("87", 0.8709), p("90", 0.8982), p("87", 0.8681), p("86", 0.8640), ),
  ("", "TOTAL lower priority", p("9", 0.0900), p("9", 0.0925), p("7", 0.0748), p("9", 0.0913), p("8", 0.0828), ),
  ("", "NET priority", n("78", 0.7830), n("78", 0.7784), n("82", 0.8234), n("78", 0.7768), n("78", 0.7812), ),
  ("Climate change", "TOTAL high priority", p("71", 0.7060), p("68", 0.6819), p("79", 0.7871), p("71", 0.7122), p("74", 0.7401), ),
  ("", "TOTAL lower priority", p("25", 0.2483), p("28", 0.2793), p("17", 0.1699), p("22", 0.2228), p("19", 0.1931), ),
  ("", "NET priority", n("46", 0.4577), n("40", 0.4026), n("62", 0.6172), n("49", 0.4893), n("55", 0.5470), ),
))

#heading(level: 3, "By Education")
#xtab(("Item", "Metric", ), ("Total", "HS or less", "Some college", "BA+", ), ("1814", "483", "691", "640", ), (
  ("Jobs", "TOTAL high priority", p("87", 0.8664), p("84", 0.8440), p("90", 0.8958), p("87", 0.8676), ),
  ("", "TOTAL lower priority", p("8", 0.0821), p("9", 0.0910), p("5", 0.0534), p("9", 0.0938), ),
  ("", "NET priority", n("78", 0.7843), n("75", 0.7530), n("84", 0.8424), n("77", 0.7738), ),
  ("Inflation", "TOTAL high priority", p("91", 0.9101), p("86", 0.8621), p("93", 0.9325), p("94", 0.9416), ),
  ("", "TOTAL lower priority", p("4", 0.0428), p("7", 0.0707), p("3", 0.0250), p("3", 0.0279), ),
  ("", "NET priority", n("87", 0.8673), n("79", 0.7914), n("91", 0.9074), n("91", 0.9138), ),
  ("AI harms", "TOTAL high priority", p("77", 0.7748), p("72", 0.7212), p("80", 0.8024), p("81", 0.8082), ),
  ("", "TOTAL lower priority", p("17", 0.1749), p("21", 0.2121), p("14", 0.1376), p("16", 0.1647), ),
  ("", "NET priority", n("60", 0.5999), n("51", 0.5091), n("66", 0.6648), n("64", 0.6435), ),
  ("Immigration", "TOTAL high priority", p("71", 0.7117), p("69", 0.6883), p("78", 0.7763), p("69", 0.6890), ),
  ("", "TOTAL lower priority", p("24", 0.2416), p("25", 0.2464), p("18", 0.1847), p("28", 0.2773), ),
  ("", "NET priority", n("47", 0.4702), n("44", 0.4419), n("59", 0.5916), n("41", 0.4117), ),
  ("Health care", "TOTAL high priority", p("92", 0.9171), p("90", 0.8986), p("92", 0.9212), p("93", 0.9325), ),
  ("", "TOTAL lower priority", p("5", 0.0468), p("6", 0.0634), p("3", 0.0289), p("4", 0.0431), ),
  ("", "NET priority", n("87", 0.8704), n("84", 0.8352), n("89", 0.8922), n("89", 0.8895), ),
  ("Crime", "TOTAL high priority", p("87", 0.8731), p("86", 0.8575), p("90", 0.9009), p("87", 0.8686), ),
  ("", "TOTAL lower priority", p("9", 0.0900), p("10", 0.0953), p("6", 0.0590), p("11", 0.1070), ),
  ("", "NET priority", n("78", 0.7830), n("76", 0.7623), n("84", 0.8419), n("76", 0.7616), ),
  ("Climate change", "TOTAL high priority", p("71", 0.7060), p("69", 0.6886), p("70", 0.7008), p("73", 0.7269), ),
  ("", "TOTAL lower priority", p("25", 0.2483), p("25", 0.2524), p("25", 0.2515), p("24", 0.2420), ),
  ("", "NET priority", n("46", 0.4577), n("44", 0.4362), n("45", 0.4493), n("49", 0.4850), ),
))

#heading(level: 3, "By Household income")
#xtab(("Item", "Metric", ), ("Total", "<50k", "50k-<100k", "100k+", ), ("1814", "673", "607", "534", ), (
  ("Jobs", "TOTAL high priority", p("87", 0.8664), p("83", 0.8340), p("89", 0.8886), p("88", 0.8838), ),
  ("", "TOTAL lower priority", p("8", 0.0821), p("9", 0.0936), p("7", 0.0733), p("8", 0.0770), ),
  ("", "NET priority", n("78", 0.7843), n("74", 0.7405), n("82", 0.8153), n("81", 0.8068), ),
  ("Inflation", "TOTAL high priority", p("91", 0.9101), p("86", 0.8640), p("94", 0.9410), p("94", 0.9358), ),
  ("", "TOTAL lower priority", p("4", 0.0428), p("6", 0.0624), p("2", 0.0245), p("4", 0.0376), ),
  ("", "NET priority", n("87", 0.8673), n("80", 0.8017), n("92", 0.9164), n("90", 0.8983), ),
  ("AI harms", "TOTAL high priority", p("77", 0.7748), p("71", 0.7071), p("81", 0.8106), p("82", 0.8231), ),
  ("", "TOTAL lower priority", p("17", 0.1749), p("22", 0.2220), p("14", 0.1422), p("15", 0.1500), ),
  ("", "NET priority", n("60", 0.5999), n("49", 0.4851), n("67", 0.6684), n("67", 0.6731), ),
  ("Immigration", "TOTAL high priority", p("71", 0.7117), p("66", 0.6631), p("76", 0.7602), p("72", 0.7214), ),
  ("", "TOTAL lower priority", p("24", 0.2416), p("26", 0.2578), p("21", 0.2070), p("26", 0.2585), ),
  ("", "NET priority", n("47", 0.4702), n("41", 0.4053), n("55", 0.5532), n("46", 0.4629), ),
  ("Health care", "TOTAL high priority", p("92", 0.9171), p("88", 0.8764), p("95", 0.9465), p("94", 0.9375), ),
  ("", "TOTAL lower priority", p("5", 0.0468), p("7", 0.0681), p("3", 0.0262), p("4", 0.0417), ),
  ("", "NET priority", n("87", 0.8704), n("81", 0.8083), n("92", 0.9202), n("90", 0.8957), ),
  ("Crime", "TOTAL high priority", p("87", 0.8731), p("84", 0.8388), p("90", 0.8988), p("89", 0.8891), ),
  ("", "TOTAL lower priority", p("9", 0.0900), p("11", 0.1069), p("7", 0.0679), p("9", 0.0926), ),
  ("", "NET priority", n("78", 0.7830), n("73", 0.7319), n("83", 0.8309), n("80", 0.7965), ),
  ("Climate change", "TOTAL high priority", p("71", 0.7060), p("68", 0.6779), p("75", 0.7466), p("70", 0.6979), ),
  ("", "TOTAL lower priority", p("25", 0.2483), p("26", 0.2582), p("21", 0.2144), p("27", 0.2727), ),
  ("", "NET priority", n("46", 0.4577), n("42", 0.4197), n("53", 0.5321), n("43", 0.4252), ),
))

#heading(level: 2, "Affect")

#stem("Thinking about AI's growing role in society, which of these options comes closest to how you feel, even if none are exactly right?")

#defs("Each total combines multiple responses:", ("Total", "Responses", ), (
  ("TOTAL excited", "\"Very excited\" or \"Somewhat excited\"", ),
  ("TOTAL concerned", "\"Somewhat concerned\" or \"Very concerned\"", ),
))

#note[Cells (weighted): totals (%) and net (percentage points).]
#heading(level: 3, "By Sex")
#xtab(("Metric", ), ("Total", "Female", "Male", ), ("1814", "967", "847", ), (
  ("TOTAL excited", p("24", 0.2429), p("19", 0.1873), p("30", 0.3027), ),
  ("TOTAL concerned", p("66", 0.6558), p("72", 0.7166), p("59", 0.5904), ),
  ("None of these", p("9", 0.0904), p("9", 0.0903), p("9", 0.0905), ),
  ("No answer", p("1", 0.0109), p("1", 0.0058), p("2", 0.0163), ),
  ("NET concerned", n("41", 0.4129), n("53", 0.5293), n("29", 0.2878), ),
))

#heading(level: 3, "By Party")
#xtab(("Metric", ), ("Total", "Dem", "Rep", "Ind", ), ("1814", "916", "519", "371", ), (
  ("TOTAL excited", p("24", 0.2429), p("24", 0.2402), p("28", 0.2768), p("20", 0.1964), ),
  ("TOTAL concerned", p("66", 0.6558), p("66", 0.6649), p("65", 0.6503), p("65", 0.6490), ),
  ("None of these", p("9", 0.0904), p("9", 0.0881), p("6", 0.0619), p("14", 0.1397), ),
  ("No answer", p("1", 0.0109), p("1", 0.0069), p("1", 0.0110), p("2", 0.0150), ),
  ("NET concerned", n("41", 0.4129), n("42", 0.4247), n("37", 0.3735), n("45", 0.4526), ),
))

#heading(level: 3, "By Age")
#xtab(("Metric", ), ("Total", "18–34", "35–49", "50–64", "65+", ), ("1814", "411", "458", "478", "467", ), (
  ("TOTAL excited", p("24", 0.2429), p("24", 0.2376), p("30", 0.3024), p("25", 0.2521), p("18", 0.1803), ),
  ("TOTAL concerned", p("66", 0.6558), p("64", 0.6371), p("61", 0.6082), p("64", 0.6378), p("74", 0.7429), ),
  ("None of these", p("9", 0.0904), p("11", 0.1106), p("8", 0.0766), p("10", 0.0961), p("8", 0.0752), ),
  ("No answer", p("1", 0.0109), p("1", 0.0148), p("1", 0.0127), p("1", 0.0139), p("<1", 0.0016), ),
  ("NET concerned", n("41", 0.4129), n("40", 0.3995), n("31", 0.3058), n("39", 0.3857), n("56", 0.5626), ),
))

#heading(level: 3, "By Ethnicity")
#xtab(("Metric", ), ("Total", "White", "Black", "Hispanic", "Asian/PI", ), ("1814", "693", "479", "488", "112", ), (
  ("TOTAL excited", p("24", 0.2429), p("22", 0.2231), p("31", 0.3131), p("23", 0.2344), p("35", 0.3462), ),
  ("TOTAL concerned", p("66", 0.6558), p("69", 0.6876), p("55", 0.5481), p("69", 0.6875), p("51", 0.5101), ),
  ("None of these", p("9", 0.0904), p("8", 0.0768), p("13", 0.1285), p("7", 0.0745), p("12", 0.1203), ),
  ("No answer", p("1", 0.0109), p("1", 0.0124), p("1", 0.0104), p("<1", 0.0036), p("2", 0.0233), ),
  ("NET concerned", n("41", 0.4129), n("46", 0.4645), n("24", 0.2350), n("45", 0.4531), n("16", 0.1639), ),
))

#heading(level: 3, "By Education")
#xtab(("Metric", ), ("Total", "HS or less", "Some college", "BA+", ), ("1814", "483", "691", "640", ), (
  ("TOTAL excited", p("24", 0.2429), p("21", 0.2146), p("22", 0.2230), p("29", 0.2850), ),
  ("TOTAL concerned", p("66", 0.6558), p("64", 0.6388), p("68", 0.6803), p("66", 0.6552), ),
  ("None of these", p("9", 0.0904), p("14", 0.1389), p("8", 0.0790), p("5", 0.0507), ),
  ("No answer", p("1", 0.0109), p("1", 0.0077), p("2", 0.0177), p("1", 0.0091), ),
  ("NET concerned", n("41", 0.4129), n("42", 0.4242), n("46", 0.4573), n("37", 0.3702), ),
))

#heading(level: 3, "By Household income")
#xtab(("Metric", ), ("Total", "<50k", "50k-<100k", "100k+", ), ("1814", "673", "607", "534", ), (
  ("TOTAL excited", p("24", 0.2429), p("21", 0.2105), p("21", 0.2132), p("32", 0.3172), ),
  ("TOTAL concerned", p("66", 0.6558), p("64", 0.6363), p("69", 0.6948), p("64", 0.6383), ),
  ("None of these", p("9", 0.0904), p("14", 0.1433), p("8", 0.0818), p("3", 0.0316), ),
  ("No answer", p("1", 0.0109), p("1", 0.0099), p("1", 0.0102), p("1", 0.0129), ),
  ("NET concerned", n("41", 0.4129), n("43", 0.4257), n("48", 0.4817), n("32", 0.3211), ),
))

#heading(level: 2, "Agency")

#stem("Again, thinking about AI, which statement comes closer to your view, even if neither is exactly right?")

#note[Cells (weighted): totals (%) and net (percentage points).]
#heading(level: 3, "By Sex")
#xtab(("Metric", ), ("Total", "Female", "Male", ), ("1814", "967", "847", ), (
  ("TOTAL can shape", p("15", 0.1455), p("12", 0.1204), p("17", 0.1726), ),
  ("TOTAL inevitable", p("70", 0.6985), p("73", 0.7281), p("67", 0.6666), ),
  ("Neither of these", p("14", 0.1385), p("13", 0.1329), p("14", 0.1445), ),
  ("No answer", p("2", 0.0175), p("2", 0.0186), p("2", 0.0163), ),
  ("NET inevitable", n("55", 0.5529), n("61", 0.6078), n("49", 0.4939), ),
))

#heading(level: 3, "By Party")
#xtab(("Metric", ), ("Total", "Dem", "Rep", "Ind", ), ("1814", "916", "519", "371", ), (
  ("TOTAL can shape", p("15", 0.1455), p("16", 0.1550), p("15", 0.1497), p("13", 0.1269), ),
  ("TOTAL inevitable", p("70", 0.6985), p("70", 0.6983), p("74", 0.7380), p("64", 0.6350), ),
  ("Neither of these", p("14", 0.1385), p("14", 0.1372), p("10", 0.0963), p("21", 0.2091), ),
  ("No answer", p("2", 0.0175), p("1", 0.0095), p("2", 0.0160), p("3", 0.0289), ),
  ("NET inevitable", n("55", 0.5529), n("54", 0.5433), n("59", 0.5883), n("51", 0.5081), ),
))

#heading(level: 3, "By Age")
#xtab(("Metric", ), ("Total", "18–34", "35–49", "50–64", "65+", ), ("1814", "411", "458", "478", "467", ), (
  ("TOTAL can shape", p("15", 0.1455), p("20", 0.2029), p("19", 0.1901), p("11", 0.1071), p("7", 0.0682), ),
  ("TOTAL inevitable", p("70", 0.6985), p("58", 0.5779), p("66", 0.6610), p("75", 0.7480), p("83", 0.8332), ),
  ("Neither of these", p("14", 0.1385), p("19", 0.1930), p("14", 0.1356), p("13", 0.1275), p("9", 0.0871), ),
  ("No answer", p("2", 0.0175), p("3", 0.0262), p("1", 0.0133), p("2", 0.0174), p("1", 0.0115), ),
  ("NET inevitable", n("55", 0.5529), n("37", 0.3749), n("47", 0.4709), n("64", 0.6409), n("77", 0.7650), ),
))

#heading(level: 3, "By Ethnicity")
#xtab(("Metric", ), ("Total", "White", "Black", "Hispanic", "Asian/PI", ), ("1814", "693", "479", "488", "112", ), (
  ("TOTAL can shape", p("15", 0.1455), p("12", 0.1220), p("17", 0.1739), p("22", 0.2229), p("12", 0.1162), ),
  ("TOTAL inevitable", p("70", 0.6985), p("72", 0.7207), p("64", 0.6439), p("62", 0.6171), p("80", 0.8020), ),
  ("Neither of these", p("14", 0.1385), p("14", 0.1370), p("17", 0.1654), p("15", 0.1493), p("6", 0.0585), ),
  ("No answer", p("2", 0.0175), p("2", 0.0202), p("2", 0.0168), p("1", 0.0107), p("2", 0.0233), ),
  ("NET inevitable", n("55", 0.5529), n("60", 0.5987), n("47", 0.4701), n("39", 0.3942), n("69", 0.6858), ),
))

#heading(level: 3, "By Education")
#xtab(("Metric", ), ("Total", "HS or less", "Some college", "BA+", ), ("1814", "483", "691", "640", ), (
  ("TOTAL can shape", p("15", 0.1455), p("14", 0.1400), p("15", 0.1476), p("15", 0.1496), ),
  ("TOTAL inevitable", p("70", 0.6985), p("63", 0.6260), p("72", 0.7244), p("75", 0.7516), ),
  ("Neither of these", p("14", 0.1385), p("22", 0.2212), p("11", 0.1097), p("8", 0.0773), ),
  ("No answer", p("2", 0.0175), p("1", 0.0129), p("2", 0.0183), p("2", 0.0215), ),
  ("NET inevitable", n("55", 0.5529), n("49", 0.4860), n("58", 0.5768), n("60", 0.6020), ),
))

#heading(level: 3, "By Household income")
#xtab(("Metric", ), ("Total", "<50k", "50k-<100k", "100k+", ), ("1814", "673", "607", "534", ), (
  ("TOTAL can shape", p("15", 0.1455), p("14", 0.1357), p("15", 0.1483), p("16", 0.1551), ),
  ("TOTAL inevitable", p("70", 0.6985), p("63", 0.6320), p("73", 0.7259), p("75", 0.7542), ),
  ("Neither of these", p("14", 0.1385), p("21", 0.2071), p("12", 0.1200), p("7", 0.0703), ),
  ("No answer", p("2", 0.0175), p("3", 0.0252), p("1", 0.0058), p("2", 0.0204), ),
  ("NET inevitable", n("55", 0.5529), n("50", 0.4963), n("58", 0.5775), n("60", 0.5990), ),
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
#xtab(("Item", "Metric", ), ("Total", "Female", "Male", ), ("1814", "967", "847", ), (
  ("Saving time", "TOTAL realized", p("47", 0.4740), p("43", 0.4295), p("52", 0.5218), ),
  ("", "TOTAL not yet", p("31", 0.3103), p("31", 0.3115), p("31", 0.3090), ),
  ("", "NET realized", n("16", 0.1637), n("12", 0.1180), n("21", 0.2129), ),
  ("Pressured to do more", "TOTAL realized", p("51", 0.5137), p("52", 0.5235), p("50", 0.5031), ),
  ("", "TOTAL not yet", p("28", 0.2791), p("27", 0.2721), p("29", 0.2866), ),
  ("", "NET realized", n("23", 0.2346), n("25", 0.2514), n("22", 0.2166), ),
  ("Losing connections", "TOTAL realized", p("59", 0.5942), p("63", 0.6298), p("56", 0.5559), ),
  ("", "TOTAL not yet", p("26", 0.2641), p("23", 0.2312), p("30", 0.2995), ),
  ("", "NET realized", n("33", 0.3301), n("40", 0.3986), n("26", 0.2564), ),
  ("Real vs. fake", "TOTAL realized", p("82", 0.8152), p("85", 0.8469), p("78", 0.7811), ),
  ("", "TOTAL not yet", p("11", 0.1123), p("10", 0.0997), p("13", 0.1258), ),
  ("", "NET realized", n("70", 0.7030), n("75", 0.7473), n("66", 0.6553), ),
  ("Better health care", "TOTAL realized", p("17", 0.1692), p("15", 0.1529), p("19", 0.1868), ),
  ("", "TOTAL not yet", p("56", 0.5567), p("55", 0.5480), p("57", 0.5661), ),
  ("", "NET realized", n("−39", -0.3875), n("−40", -0.3950), n("−38", -0.3793), ),
))

#heading(level: 3, "By Party")
#xtab(("Item", "Metric", ), ("Total", "Dem", "Rep", "Ind", ), ("1814", "916", "519", "371", ), (
  ("Saving time", "TOTAL realized", p("47", 0.4740), p("51", 0.5077), p("48", 0.4831), p("41", 0.4132), ),
  ("", "TOTAL not yet", p("31", 0.3103), p("29", 0.2947), p("32", 0.3151), p("33", 0.3347), ),
  ("", "NET realized", n("16", 0.1637), n("21", 0.2129), n("17", 0.1680), n("8", 0.0785), ),
  ("Pressured to do more", "TOTAL realized", p("51", 0.5137), p("54", 0.5407), p("47", 0.4722), p("54", 0.5370), ),
  ("", "TOTAL not yet", p("28", 0.2791), p("27", 0.2696), p("32", 0.3167), p("24", 0.2418), ),
  ("", "NET realized", n("23", 0.2346), n("27", 0.2711), n("16", 0.1554), n("30", 0.2952), ),
  ("Losing connections", "TOTAL realized", p("59", 0.5942), p("61", 0.6058), p("60", 0.6005), p("57", 0.5703), ),
  ("", "TOTAL not yet", p("26", 0.2641), p("26", 0.2633), p("28", 0.2799), p("25", 0.2462), ),
  ("", "NET realized", n("33", 0.3301), n("34", 0.3425), n("32", 0.3205), n("32", 0.3241), ),
  ("Real vs. fake", "TOTAL realized", p("82", 0.8152), p("85", 0.8514), p("83", 0.8260), p("74", 0.7411), ),
  ("", "TOTAL not yet", p("11", 0.1123), p("8", 0.0849), p("12", 0.1199), p("15", 0.1457), ),
  ("", "NET realized", n("70", 0.7030), n("77", 0.7665), n("71", 0.7061), n("60", 0.5954), ),
  ("Better health care", "TOTAL realized", p("17", 0.1692), p("14", 0.1382), p("20", 0.1965), p("18", 0.1783), ),
  ("", "TOTAL not yet", p("56", 0.5567), p("58", 0.5808), p("54", 0.5412), p("55", 0.5532), ),
  ("", "NET realized", n("−39", -0.3875), n("−44", -0.4426), n("−34", -0.3447), n("−37", -0.3749), ),
))

#heading(level: 3, "By Age")
#xtab(("Item", "Metric", ), ("Total", "18–34", "35–49", "50–64", "65+", ), ("1814", "411", "458", "478", "467", ), (
  ("Saving time", "TOTAL realized", p("47", 0.4740), p("52", 0.5196), p("55", 0.5500), p("44", 0.4371), p("38", 0.3772), ),
  ("", "TOTAL not yet", p("31", 0.3103), p("33", 0.3320), p("24", 0.2379), p("29", 0.2917), p("38", 0.3753), ),
  ("", "NET realized", n("16", 0.1637), n("19", 0.1877), n("31", 0.3122), n("15", 0.1455), n("0", 0.0019), ),
  ("Pressured to do more", "TOTAL realized", p("51", 0.5137), p("64", 0.6359), p("44", 0.4448), p("52", 0.5211), p("43", 0.4317), ),
  ("", "TOTAL not yet", p("28", 0.2791), p("23", 0.2293), p("34", 0.3405), p("24", 0.2439), p("31", 0.3085), ),
  ("", "NET realized", n("23", 0.2346), n("41", 0.4066), n("10", 0.1043), n("28", 0.2772), n("12", 0.1232), ),
  ("Losing connections", "TOTAL realized", p("59", 0.5942), p("59", 0.5891), p("61", 0.6090), p("61", 0.6078), p("57", 0.5725), ),
  ("", "TOTAL not yet", p("26", 0.2641), p("29", 0.2949), p("24", 0.2357), p("25", 0.2481), p("27", 0.2714), ),
  ("", "NET realized", n("33", 0.3301), n("29", 0.2943), n("37", 0.3734), n("36", 0.3597), n("30", 0.3012), ),
  ("Real vs. fake", "TOTAL realized", p("82", 0.8152), p("76", 0.7550), p("85", 0.8465), p("85", 0.8472), p("83", 0.8251), ),
  ("", "TOTAL not yet", p("11", 0.1123), p("17", 0.1738), p("6", 0.0633), p("10", 0.0971), p("10", 0.1031), ),
  ("", "NET realized", n("70", 0.7030), n("58", 0.5812), n("78", 0.7833), n("75", 0.7501), n("72", 0.7220), ),
  ("Better health care", "TOTAL realized", p("17", 0.1692), p("18", 0.1758), p("12", 0.1225), p("15", 0.1516), p("23", 0.2252), ),
  ("", "TOTAL not yet", p("56", 0.5567), p("63", 0.6282), p("55", 0.5503), p("57", 0.5665), p("47", 0.4693), ),
  ("", "NET realized", n("−39", -0.3875), n("−45", -0.4524), n("−43", -0.4278), n("−41", -0.4149), n("−24", -0.2441), ),
))

#heading(level: 3, "By Ethnicity")
#xtab(("Item", "Metric", ), ("Total", "White", "Black", "Hispanic", "Asian/PI", ), ("1814", "693", "479", "488", "112", ), (
  ("Saving time", "TOTAL realized", p("47", 0.4740), p("45", 0.4508), p("47", 0.4676), p("47", 0.4715), p("67", 0.6695), ),
  ("", "TOTAL not yet", p("31", 0.3103), p("32", 0.3205), p("27", 0.2719), p("34", 0.3372), p("20", 0.2034), ),
  ("", "NET realized", n("16", 0.1637), n("13", 0.1303), n("20", 0.1956), n("13", 0.1343), n("47", 0.4661), ),
  ("Pressured to do more", "TOTAL realized", p("51", 0.5137), p("50", 0.4990), p("53", 0.5294), p("50", 0.4972), p("57", 0.5702), ),
  ("", "TOTAL not yet", p("28", 0.2791), p("28", 0.2773), p("25", 0.2460), p("31", 0.3095), p("29", 0.2850), ),
  ("", "NET realized", n("23", 0.2346), n("22", 0.2216), n("28", 0.2834), n("19", 0.1876), n("29", 0.2852), ),
  ("Losing connections", "TOTAL realized", p("59", 0.5942), p("61", 0.6055), p("61", 0.6122), p("55", 0.5506), p("58", 0.5750), ),
  ("", "TOTAL not yet", p("26", 0.2641), p("26", 0.2573), p("18", 0.1836), p("30", 0.3012), p("30", 0.3021), ),
  ("", "NET realized", n("33", 0.3301), n("35", 0.3482), n("43", 0.4286), n("25", 0.2493), n("27", 0.2729), ),
  ("Real vs. fake", "TOTAL realized", p("82", 0.8152), p("84", 0.8388), p("75", 0.7452), p("81", 0.8063), p("75", 0.7518), ),
  ("", "TOTAL not yet", p("11", 0.1123), p("9", 0.0946), p("13", 0.1271), p("12", 0.1232), p("18", 0.1826), ),
  ("", "NET realized", n("70", 0.7030), n("74", 0.7442), n("62", 0.6181), n("68", 0.6831), n("57", 0.5692), ),
  ("Better health care", "TOTAL realized", p("17", 0.1692), p("15", 0.1482), p("26", 0.2619), p("19", 0.1851), p("20", 0.2017), ),
  ("", "TOTAL not yet", p("56", 0.5567), p("59", 0.5861), p("46", 0.4597), p("52", 0.5224), p("54", 0.5430), ),
  ("", "NET realized", n("−39", -0.3875), n("−44", -0.4378), n("−20", -0.1978), n("−34", -0.3373), n("−34", -0.3413), ),
))

#heading(level: 3, "By Education")
#xtab(("Item", "Metric", ), ("Total", "HS or less", "Some college", "BA+", ), ("1814", "483", "691", "640", ), (
  ("Saving time", "TOTAL realized", p("47", 0.4740), p("37", 0.3712), p("49", 0.4941), p("56", 0.5612), ),
  ("", "TOTAL not yet", p("31", 0.3103), p("37", 0.3706), p("28", 0.2787), p("27", 0.2732), ),
  ("", "NET realized", n("16", 0.1637), n("0", 0.0006), n("22", 0.2154), n("29", 0.2880), ),
  ("Pressured to do more", "TOTAL realized", p("51", 0.5137), p("49", 0.4907), p("48", 0.4750), p("56", 0.5640), ),
  ("", "TOTAL not yet", p("28", 0.2791), p("28", 0.2803), p("29", 0.2896), p("27", 0.2703), ),
  ("", "NET realized", n("23", 0.2346), n("21", 0.2104), n("19", 0.1854), n("29", 0.2937), ),
  ("Losing connections", "TOTAL realized", p("59", 0.5942), p("54", 0.5373), p("59", 0.5894), p("65", 0.6538), ),
  ("", "TOTAL not yet", p("26", 0.2641), p("31", 0.3072), p("25", 0.2548), p("23", 0.2282), ),
  ("", "NET realized", n("33", 0.3301), n("23", 0.2301), n("33", 0.3346), n("43", 0.4256), ),
  ("Real vs. fake", "TOTAL realized", p("82", 0.8152), p("75", 0.7458), p("84", 0.8402), p("87", 0.8660), ),
  ("", "TOTAL not yet", p("11", 0.1123), p("15", 0.1498), p("9", 0.0881), p("9", 0.0924), ),
  ("", "NET realized", n("70", 0.7030), n("60", 0.5960), n("75", 0.7522), n("77", 0.7736), ),
  ("Better health care", "TOTAL realized", p("17", 0.1692), p("17", 0.1701), p("18", 0.1772), p("16", 0.1627), ),
  ("", "TOTAL not yet", p("56", 0.5567), p("56", 0.5571), p("53", 0.5296), p("58", 0.5755), ),
  ("", "NET realized", n("−39", -0.3875), n("−39", -0.3870), n("−35", -0.3524), n("−41", -0.4129), ),
))

#heading(level: 3, "By Household income")
#xtab(("Item", "Metric", ), ("Total", "<50k", "50k-<100k", "100k+", ), ("1814", "673", "607", "534", ), (
  ("Saving time", "TOTAL realized", p("47", 0.4740), p("35", 0.3525), p("49", 0.4857), p("62", 0.6178), ),
  ("", "TOTAL not yet", p("31", 0.3103), p("36", 0.3623), p("29", 0.2933), p("26", 0.2618), ),
  ("", "NET realized", n("16", 0.1637), n("−1", -0.0098), n("19", 0.1924), n("36", 0.3560), ),
  ("Pressured to do more", "TOTAL realized", p("51", 0.5137), p("47", 0.4733), p("52", 0.5187), p("56", 0.5603), ),
  ("", "TOTAL not yet", p("28", 0.2791), p("28", 0.2755), p("28", 0.2795), p("28", 0.2831), ),
  ("", "NET realized", n("23", 0.2346), n("20", 0.1978), n("24", 0.2392), n("28", 0.2772), ),
  ("Losing connections", "TOTAL realized", p("59", 0.5942), p("52", 0.5161), p("63", 0.6281), p("66", 0.6578), ),
  ("", "TOTAL not yet", p("26", 0.2641), p("29", 0.2940), p("24", 0.2410), p("25", 0.2508), ),
  ("", "NET realized", n("33", 0.3301), n("22", 0.2221), n("39", 0.3871), n("41", 0.4070), ),
  ("Real vs. fake", "TOTAL realized", p("82", 0.8152), p("73", 0.7267), p("84", 0.8420), p("90", 0.9001), ),
  ("", "TOTAL not yet", p("11", 0.1123), p("15", 0.1493), p("11", 0.1096), p("7", 0.0674), ),
  ("", "NET realized", n("70", 0.7030), n("58", 0.5775), n("73", 0.7324), n("83", 0.8326), ),
  ("Better health care", "TOTAL realized", p("17", 0.1692), p("16", 0.1580), p("17", 0.1729), p("18", 0.1796), ),
  ("", "TOTAL not yet", p("56", 0.5567), p("55", 0.5466), p("56", 0.5609), p("57", 0.5651), ),
  ("", "NET realized", n("−39", -0.3875), n("−39", -0.3885), n("−39", -0.3880), n("−39", -0.3855), ),
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
#xtab(("Item", "Metric", ), ("Total", "Female", "Male", ), ("1814", "967", "847", ), (
  ("Jobs", "TOTAL better", p("14", 0.1389), p("11", 0.1112), p("17", 0.1687), ),
  ("", "TOTAL worse", p("74", 0.7449), p("78", 0.7804), p("71", 0.7068), ),
  ("", "NET worse", n("61", 0.6061), n("67", 0.6693), n("54", 0.5381), ),
  ("Future", "TOTAL better", p("33", 0.3305), p("27", 0.2665), p("40", 0.3994), ),
  ("", "TOTAL worse", p("54", 0.5394), p("61", 0.6067), p("47", 0.4670), ),
  ("", "NET worse", n("21", 0.2089), n("34", 0.3402), n("7", 0.0675), ),
  ("Children", "TOTAL better", p("18", 0.1834), p("13", 0.1348), p("24", 0.2356), ),
  ("", "TOTAL worse", p("65", 0.6452), p("71", 0.7114), p("57", 0.5739), ),
  ("", "NET worse", n("46", 0.4618), n("58", 0.5766), n("34", 0.3383), ),
  ("Finances", "TOTAL better", p("25", 0.2544), p("22", 0.2229), p("29", 0.2882), ),
  ("", "TOTAL worse", p("45", 0.4454), p("49", 0.4883), p("40", 0.3992), ),
  ("", "NET worse", n("19", 0.1910), n("27", 0.2654), n("11", 0.1109), ),
))

#heading(level: 3, "By Party")
#xtab(("Item", "Metric", ), ("Total", "Dem", "Rep", "Ind", ), ("1814", "916", "519", "371", ), (
  ("Jobs", "TOTAL better", p("14", 0.1389), p("11", 0.1099), p("17", 0.1706), p("14", 0.1374), ),
  ("", "TOTAL worse", p("74", 0.7449), p("80", 0.8025), p("72", 0.7226), p("69", 0.6867), ),
  ("", "NET worse", n("61", 0.6061), n("69", 0.6925), n("55", 0.5520), n("55", 0.5493), ),
  ("Future", "TOTAL better", p("33", 0.3305), p("32", 0.3186), p("37", 0.3734), p("29", 0.2879), ),
  ("", "TOTAL worse", p("54", 0.5394), p("56", 0.5623), p("50", 0.5020), p("56", 0.5570), ),
  ("", "NET worse", n("21", 0.2089), n("24", 0.2437), n("13", 0.1286), n("27", 0.2690), ),
  ("Children", "TOTAL better", p("18", 0.1834), p("15", 0.1470), p("22", 0.2172), p("19", 0.1911), ),
  ("", "TOTAL worse", p("65", 0.6452), p("69", 0.6922), p("62", 0.6235), p("60", 0.6014), ),
  ("", "NET worse", n("46", 0.4618), n("55", 0.5453), n("41", 0.4063), n("41", 0.4103), ),
  ("Finances", "TOTAL better", p("25", 0.2544), p("22", 0.2153), p("30", 0.2996), p("25", 0.2503), ),
  ("", "TOTAL worse", p("45", 0.4454), p("49", 0.4922), p("36", 0.3610), p("50", 0.4950), ),
  ("", "NET worse", n("19", 0.1910), n("28", 0.2769), n("6", 0.0614), n("24", 0.2448), ),
))

#heading(level: 3, "By Age")
#xtab(("Item", "Metric", ), ("Total", "18–34", "35–49", "50–64", "65+", ), ("1814", "411", "458", "478", "467", ), (
  ("Jobs", "TOTAL better", p("14", 0.1389), p("19", 0.1927), p("12", 0.1232), p("11", 0.1072), p("12", 0.1204), ),
  ("", "TOTAL worse", p("74", 0.7449), p("71", 0.7127), p("73", 0.7344), p("80", 0.7972), p("75", 0.7452), ),
  ("", "NET worse", n("61", 0.6061), n("52", 0.5200), n("61", 0.6112), n("69", 0.6900), n("62", 0.6248), ),
  ("Future", "TOTAL better", p("33", 0.3305), p("32", 0.3157), p("30", 0.2987), p("29", 0.2919), p("42", 0.4163), ),
  ("", "TOTAL worse", p("54", 0.5394), p("59", 0.5916), p("52", 0.5161), p("59", 0.5873), p("46", 0.4565), ),
  ("", "NET worse", n("21", 0.2089), n("28", 0.2759), n("22", 0.2174), n("30", 0.2954), n("4", 0.0402), ),
  ("Children", "TOTAL better", p("18", 0.1834), p("18", 0.1766), p("19", 0.1947), p("15", 0.1484), p("21", 0.2124), ),
  ("", "TOTAL worse", p("65", 0.6452), p("70", 0.6965), p("59", 0.5922), p("71", 0.7129), p("57", 0.5749), ),
  ("", "NET worse", n("46", 0.4618), n("52", 0.5198), n("40", 0.3975), n("56", 0.5645), n("36", 0.3625), ),
  ("Finances", "TOTAL better", p("25", 0.2544), p("29", 0.2947), p("24", 0.2429), p("23", 0.2263), p("24", 0.2443), ),
  ("", "TOTAL worse", p("45", 0.4454), p("45", 0.4468), p("41", 0.4055), p("50", 0.5033), p("43", 0.4300), ),
  ("", "NET worse", n("19", 0.1910), n("15", 0.1521), n("16", 0.1626), n("28", 0.2770), n("19", 0.1858), ),
))

#heading(level: 3, "By Ethnicity")
#xtab(("Item", "Metric", ), ("Total", "White", "Black", "Hispanic", "Asian/PI", ), ("1814", "693", "479", "488", "112", ), (
  ("Jobs", "TOTAL better", p("14", 0.1389), p("8", 0.0845), p("28", 0.2820), p("23", 0.2265), p("13", 0.1284), ),
  ("", "TOTAL worse", p("74", 0.7449), p("78", 0.7820), p("61", 0.6061), p("68", 0.6788), p("78", 0.7810), ),
  ("", "NET worse", n("61", 0.6061), n("70", 0.6975), n("32", 0.3241), n("45", 0.4523), n("65", 0.6527), ),
  ("Future", "TOTAL better", p("33", 0.3305), p("30", 0.2973), p("41", 0.4055), p("33", 0.3285), p("48", 0.4802), ),
  ("", "TOTAL worse", p("54", 0.5394), p("56", 0.5559), p("48", 0.4816), p("56", 0.5622), p("40", 0.4035), ),
  ("", "NET worse", n("21", 0.2089), n("26", 0.2586), n("8", 0.0762), n("23", 0.2336), n("−8", -0.0768), ),
  ("Children", "TOTAL better", p("18", 0.1834), p("14", 0.1439), p("31", 0.3081), p("22", 0.2178), p("23", 0.2313), ),
  ("", "TOTAL worse", p("65", 0.6452), p("66", 0.6649), p("54", 0.5438), p("65", 0.6526), p("58", 0.5832), ),
  ("", "NET worse", n("46", 0.4618), n("52", 0.5210), n("24", 0.2358), n("43", 0.4347), n("35", 0.3518), ),
  ("Finances", "TOTAL better", p("25", 0.2544), p("22", 0.2245), p("31", 0.3055), p("28", 0.2777), p("36", 0.3589), ),
  ("", "TOTAL worse", p("45", 0.4454), p("44", 0.4376), p("46", 0.4596), p("47", 0.4650), p("37", 0.3715), ),
  ("", "NET worse", n("19", 0.1910), n("21", 0.2131), n("15", 0.1542), n("19", 0.1874), n("1", 0.0126), ),
))

#heading(level: 3, "By Education")
#xtab(("Item", "Metric", ), ("Total", "HS or less", "Some college", "BA+", ), ("1814", "483", "691", "640", ), (
  ("Jobs", "TOTAL better", p("14", 0.1389), p("19", 0.1887), p("15", 0.1515), p("8", 0.0807), ),
  ("", "TOTAL worse", p("74", 0.7449), p("67", 0.6742), p("73", 0.7258), p("83", 0.8284), ),
  ("", "NET worse", n("61", 0.6061), n("49", 0.4855), n("57", 0.5744), n("75", 0.7477), ),
  ("Future", "TOTAL better", p("33", 0.3305), p("28", 0.2843), p("37", 0.3739), p("35", 0.3453), ),
  ("", "TOTAL worse", p("54", 0.5394), p("54", 0.5381), p("52", 0.5196), p("55", 0.5547), ),
  ("", "NET worse", n("21", 0.2089), n("25", 0.2538), n("15", 0.1458), n("21", 0.2094), ),
  ("Children", "TOTAL better", p("18", 0.1834), p("22", 0.2176), p("18", 0.1842), p("15", 0.1490), ),
  ("", "TOTAL worse", p("65", 0.6452), p("62", 0.6190), p("61", 0.6091), p("70", 0.6966), ),
  ("", "NET worse", n("46", 0.4618), n("40", 0.4014), n("42", 0.4249), n("55", 0.5477), ),
  ("Finances", "TOTAL better", p("25", 0.2544), p("23", 0.2267), p("28", 0.2750), p("27", 0.2670), ),
  ("", "TOTAL worse", p("45", 0.4454), p("48", 0.4834), p("39", 0.3930), p("45", 0.4450), ),
  ("", "NET worse", n("19", 0.1910), n("26", 0.2567), n("12", 0.1180), n("18", 0.1781), ),
))

#heading(level: 3, "By Household income")
#xtab(("Item", "Metric", ), ("Total", "<50k", "50k-<100k", "100k+", ), ("1814", "673", "607", "534", ), (
  ("Jobs", "TOTAL better", p("14", 0.1389), p("17", 0.1714), p("13", 0.1301), p("11", 0.1065), ),
  ("", "TOTAL worse", p("74", 0.7449), p("66", 0.6565), p("81", 0.8073), p("79", 0.7907), ),
  ("", "NET worse", n("61", 0.6061), n("49", 0.4852), n("68", 0.6771), n("68", 0.6842), ),
  ("Future", "TOTAL better", p("33", 0.3305), p("30", 0.3019), p("31", 0.3073), p("39", 0.3929), ),
  ("", "TOTAL worse", p("54", 0.5394), p("52", 0.5188), p("60", 0.6011), p("50", 0.4984), ),
  ("", "NET worse", n("21", 0.2089), n("22", 0.2169), n("29", 0.2938), n("11", 0.1055), ),
  ("Children", "TOTAL better", p("18", 0.1834), p("20", 0.1997), p("18", 0.1809), p("17", 0.1650), ),
  ("", "TOTAL worse", p("65", 0.6452), p("56", 0.5618), p("71", 0.7143), p("68", 0.6769), ),
  ("", "NET worse", n("46", 0.4618), n("36", 0.3621), n("53", 0.5335), n("51", 0.5119), ),
  ("Finances", "TOTAL better", p("25", 0.2544), p("23", 0.2319), p("24", 0.2377), p("30", 0.3015), ),
  ("", "TOTAL worse", p("45", 0.4454), p("44", 0.4409), p("49", 0.4934), p("40", 0.3985), ),
  ("", "NET worse", n("19", 0.1910), n("21", 0.2090), n("26", 0.2557), n("10", 0.0970), ),
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
#xtab(("Item", "Metric", ), ("Total", "Female", "Male", ), ("1814", "967", "847", ), (
  ("Children", "TOTAL too much", p("26", 0.2612), p("29", 0.2895), p("23", 0.2308), ),
  ("", "TOTAL too little", p("47", 0.4652), p("49", 0.4878), p("44", 0.4410), ),
  ("", "NET too little", n("20", 0.2040), n("20", 0.1982), n("21", 0.2102), ),
  ("Environment", "TOTAL too much", p("25", 0.2490), p("25", 0.2452), p("25", 0.2531), ),
  ("", "TOTAL too little", p("46", 0.4578), p("47", 0.4708), p("44", 0.4438), ),
  ("", "NET too little", n("21", 0.2088), n("23", 0.2256), n("19", 0.1906), ),
  ("Workers", "TOTAL too much", p("24", 0.2403), p("25", 0.2462), p("23", 0.2340), ),
  ("", "TOTAL too little", p("44", 0.4381), p("46", 0.4633), p("41", 0.4110), ),
  ("", "NET too little", n("20", 0.1978), n("22", 0.2170), n("18", 0.1770), ),
  ("Competitiveness", "TOTAL too much", p("20", 0.2022), p("20", 0.2015), p("20", 0.2030), ),
  ("", "TOTAL too little", p("32", 0.3197), p("36", 0.3610), p("28", 0.2753), ),
  ("", "NET too little", n("12", 0.1175), n("16", 0.1595), n("7", 0.0723), ),
))

#heading(level: 3, "By Party")
#xtab(("Item", "Metric", ), ("Total", "Dem", "Rep", "Ind", ), ("1814", "916", "519", "371", ), (
  ("Children", "TOTAL too much", p("26", 0.2612), p("23", 0.2294), p("31", 0.3053), p("25", 0.2483), ),
  ("", "TOTAL too little", p("47", 0.4652), p("54", 0.5431), p("42", 0.4247), p("41", 0.4054), ),
  ("", "NET too little", n("20", 0.2040), n("31", 0.3137), n("12", 0.1194), n("16", 0.1571), ),
  ("Environment", "TOTAL too much", p("25", 0.2490), p("22", 0.2234), p("27", 0.2662), p("27", 0.2677), ),
  ("", "TOTAL too little", p("46", 0.4578), p("57", 0.5745), p("38", 0.3784), p("39", 0.3940), ),
  ("", "NET too little", n("21", 0.2088), n("35", 0.3511), n("11", 0.1121), n("13", 0.1263), ),
  ("Workers", "TOTAL too much", p("24", 0.2403), p("21", 0.2059), p("27", 0.2695), p("25", 0.2545), ),
  ("", "TOTAL too little", p("44", 0.4381), p("56", 0.5551), p("35", 0.3455), p("39", 0.3943), ),
  ("", "NET too little", n("20", 0.1978), n("35", 0.3492), n("8", 0.0760), n("14", 0.1398), ),
  ("Competitiveness", "TOTAL too much", p("20", 0.2022), p("19", 0.1924), p("22", 0.2225), p("19", 0.1896), ),
  ("", "TOTAL too little", p("32", 0.3197), p("39", 0.3945), p("28", 0.2754), p("27", 0.2666), ),
  ("", "NET too little", n("12", 0.1175), n("20", 0.2021), n("5", 0.0529), n("8", 0.0770), ),
))

#heading(level: 3, "By Age")
#xtab(("Item", "Metric", ), ("Total", "18–34", "35–49", "50–64", "65+", ), ("1814", "411", "458", "478", "467", ), (
  ("Children", "TOTAL too much", p("26", 0.2612), p("31", 0.3102), p("21", 0.2077), p("31", 0.3108), p("21", 0.2112), ),
  ("", "TOTAL too little", p("47", 0.4652), p("41", 0.4113), p("42", 0.4206), p("51", 0.5081), p("53", 0.5344), ),
  ("", "NET too little", n("20", 0.2040), n("10", 0.1011), n("21", 0.2129), n("20", 0.1973), n("32", 0.3232), ),
  ("Environment", "TOTAL too much", p("25", 0.2490), p("26", 0.2554), p("24", 0.2441), p("26", 0.2635), p("23", 0.2330), ),
  ("", "TOTAL too little", p("46", 0.4578), p("44", 0.4449), p("43", 0.4349), p("47", 0.4678), p("49", 0.4870), ),
  ("", "NET too little", n("21", 0.2088), n("19", 0.1895), n("19", 0.1907), n("20", 0.2043), n("25", 0.2540), ),
  ("Workers", "TOTAL too much", p("24", 0.2403), p("26", 0.2568), p("22", 0.2179), p("27", 0.2654), p("22", 0.2203), ),
  ("", "TOTAL too little", p("44", 0.4381), p("42", 0.4223), p("42", 0.4220), p("44", 0.4392), p("47", 0.4721), ),
  ("", "NET too little", n("20", 0.1978), n("17", 0.1656), n("20", 0.2041), n("17", 0.1737), n("25", 0.2518), ),
  ("Competitiveness", "TOTAL too much", p("20", 0.2022), p("21", 0.2092), p("22", 0.2163), p("22", 0.2155), p("17", 0.1674), ),
  ("", "TOTAL too little", p("32", 0.3197), p("31", 0.3052), p("28", 0.2817), p("34", 0.3431), p("35", 0.3537), ),
  ("", "NET too little", n("12", 0.1175), n("10", 0.0960), n("7", 0.0654), n("13", 0.1276), n("19", 0.1864), ),
))

#heading(level: 3, "By Ethnicity")
#xtab(("Item", "Metric", ), ("Total", "White", "Black", "Hispanic", "Asian/PI", ), ("1814", "693", "479", "488", "112", ), (
  ("Children", "TOTAL too much", p("26", 0.2612), p("23", 0.2343), p("34", 0.3395), p("30", 0.2990), p("26", 0.2641), ),
  ("", "TOTAL too little", p("47", 0.4652), p("52", 0.5204), p("34", 0.3405), p("39", 0.3863), p("45", 0.4485), ),
  ("", "NET too little", n("20", 0.2040), n("29", 0.2861), n("0", 0.0010), n("9", 0.0873), n("18", 0.1844), ),
  ("Environment", "TOTAL too much", p("25", 0.2490), p("22", 0.2229), p("32", 0.3200), p("29", 0.2900), p("23", 0.2262), ),
  ("", "TOTAL too little", p("46", 0.4578), p("51", 0.5144), p("32", 0.3153), p("38", 0.3801), p("45", 0.4548), ),
  ("", "NET too little", n("21", 0.2088), n("29", 0.2915), n("0", -0.0047), n("9", 0.0902), n("23", 0.2285), ),
  ("Workers", "TOTAL too much", p("24", 0.2403), p("21", 0.2064), p("35", 0.3472), p("29", 0.2943), p("19", 0.1881), ),
  ("", "TOTAL too little", p("44", 0.4381), p("48", 0.4770), p("34", 0.3390), p("38", 0.3827), p("46", 0.4580), ),
  ("", "NET too little", n("20", 0.1978), n("27", 0.2706), n("−1", -0.0082), n("9", 0.0885), n("27", 0.2699), ),
  ("Competitiveness", "TOTAL too much", p("20", 0.2022), p("17", 0.1666), p("31", 0.3099), p("25", 0.2542), p("19", 0.1903), ),
  ("", "TOTAL too little", p("32", 0.3197), p("34", 0.3399), p("27", 0.2687), p("27", 0.2689), p("28", 0.2826), ),
  ("", "NET too little", n("12", 0.1175), n("17", 0.1733), n("−4", -0.0412), n("1", 0.0148), n("9", 0.0923), ),
))

#heading(level: 3, "By Education")
#xtab(("Item", "Metric", ), ("Total", "HS or less", "Some college", "BA+", ), ("1814", "483", "691", "640", ), (
  ("Children", "TOTAL too much", p("26", 0.2612), p("33", 0.3342), p("27", 0.2743), p("18", 0.1798), ),
  ("", "TOTAL too little", p("47", 0.4652), p("33", 0.3320), p("46", 0.4612), p("60", 0.5997), ),
  ("", "NET too little", n("20", 0.2040), n("0", -0.0022), n("19", 0.1869), n("42", 0.4198), ),
  ("Environment", "TOTAL too much", p("25", 0.2490), p("33", 0.3296), p("25", 0.2519), p("17", 0.1674), ),
  ("", "TOTAL too little", p("46", 0.4578), p("36", 0.3562), p("44", 0.4405), p("57", 0.5704), ),
  ("", "NET too little", n("21", 0.2088), n("3", 0.0266), n("19", 0.1886), n("40", 0.4030), ),
  ("Workers", "TOTAL too much", p("24", 0.2403), p("31", 0.3075), p("27", 0.2675), p("15", 0.1548), ),
  ("", "TOTAL too little", p("44", 0.4381), p("33", 0.3281), p("41", 0.4142), p("56", 0.5637), ),
  ("", "NET too little", n("20", 0.1978), n("2", 0.0206), n("15", 0.1468), n("41", 0.4089), ),
  ("Competitiveness", "TOTAL too much", p("20", 0.2022), p("26", 0.2553), p("22", 0.2169), p("14", 0.1394), ),
  ("", "TOTAL too little", p("32", 0.3197), p("24", 0.2418), p("32", 0.3178), p("40", 0.3980), ),
  ("", "NET too little", n("12", 0.1175), n("−1", -0.0134), n("10", 0.1010), n("26", 0.2586), ),
))

#heading(level: 3, "By Household income")
#xtab(("Item", "Metric", ), ("Total", "<50k", "50k-<100k", "100k+", ), ("1814", "673", "607", "534", ), (
  ("Children", "TOTAL too much", p("26", 0.2612), p("28", 0.2848), p("26", 0.2643), p("23", 0.2274), ),
  ("", "TOTAL too little", p("47", 0.4652), p("37", 0.3741), p("52", 0.5191), p("52", 0.5238), ),
  ("", "NET too little", n("20", 0.2040), n("9", 0.0893), n("25", 0.2548), n("30", 0.2964), ),
  ("Environment", "TOTAL too much", p("25", 0.2490), p("28", 0.2771), p("24", 0.2371), p("23", 0.2259), ),
  ("", "TOTAL too little", p("46", 0.4578), p("38", 0.3831), p("51", 0.5130), p("49", 0.4938), ),
  ("", "NET too little", n("21", 0.2088), n("11", 0.1060), n("28", 0.2758), n("27", 0.2679), ),
  ("Workers", "TOTAL too much", p("24", 0.2403), p("28", 0.2779), p("23", 0.2305), p("20", 0.2027), ),
  ("", "TOTAL too little", p("44", 0.4381), p("38", 0.3780), p("46", 0.4614), p("49", 0.4901), ),
  ("", "NET too little", n("20", 0.1978), n("10", 0.1001), n("23", 0.2309), n("29", 0.2874), ),
  ("Competitiveness", "TOTAL too much", p("20", 0.2022), p("22", 0.2237), p("20", 0.1952), p("18", 0.1822), ),
  ("", "TOTAL too little", p("32", 0.3197), p("26", 0.2583), p("35", 0.3468), p("37", 0.3695), ),
  ("", "NET too little", n("12", 0.1175), n("3", 0.0345), n("15", 0.1516), n("19", 0.1872), ),
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
#xtab(("Item", "Metric", ), ("Total", "Female", "Male", ), ("1814", "967", "847", ), (
  ("Superintelligence", "TOTAL likely", p("71", 0.7066), p("71", 0.7140), p("70", 0.6986), ),
  ("", "TOTAL unlikely", p("18", 0.1805), p("17", 0.1696), p("19", 0.1922), ),
  ("", "NET likely", n("53", 0.5261), n("54", 0.5445), n("51", 0.5064), ),
  ("Loss-of-control", "TOTAL likely", p("77", 0.7654), p("78", 0.7761), p("75", 0.7539), ),
  ("", "TOTAL unlikely", p("11", 0.1098), p("9", 0.0947), p("13", 0.1259), ),
  ("", "NET likely", n("66", 0.6557), n("68", 0.6814), n("63", 0.6280), ),
  ("Breakthroughs", "TOTAL likely", p("67", 0.6719), p("64", 0.6405), p("71", 0.7057), ),
  ("", "TOTAL unlikely", p("18", 0.1759), p("19", 0.1874), p("16", 0.1634), ),
  ("", "NET likely", n("50", 0.4961), n("45", 0.4530), n("54", 0.5423), ),
  ("WMDs", "TOTAL likely", p("71", 0.7103), p("71", 0.7087), p("71", 0.7121), ),
  ("", "TOTAL unlikely", p("14", 0.1361), p("11", 0.1137), p("16", 0.1603), ),
  ("", "NET likely", n("57", 0.5742), n("60", 0.5950), n("55", 0.5519), ),
))

#heading(level: 3, "By Party")
#xtab(("Item", "Metric", ), ("Total", "Dem", "Rep", "Ind", ), ("1814", "916", "519", "371", ), (
  ("Superintelligence", "TOTAL likely", p("71", 0.7066), p("72", 0.7154), p("73", 0.7285), p("66", 0.6621), ),
  ("", "TOTAL unlikely", p("18", 0.1805), p("17", 0.1716), p("17", 0.1676), p("22", 0.2186), ),
  ("", "NET likely", n("53", 0.5261), n("54", 0.5438), n("56", 0.5609), n("44", 0.4435), ),
  ("Loss-of-control", "TOTAL likely", p("77", 0.7654), p("79", 0.7932), p("78", 0.7779), p("70", 0.7008), ),
  ("", "TOTAL unlikely", p("11", 0.1098), p("11", 0.1058), p("11", 0.1066), p("12", 0.1233), ),
  ("", "NET likely", n("66", 0.6557), n("69", 0.6873), n("67", 0.6713), n("58", 0.5774), ),
  ("Breakthroughs", "TOTAL likely", p("67", 0.6719), p("69", 0.6897), p("71", 0.7093), p("59", 0.5885), ),
  ("", "TOTAL unlikely", p("18", 0.1759), p("16", 0.1613), p("18", 0.1809), p("20", 0.1954), ),
  ("", "NET likely", n("50", 0.4961), n("53", 0.5284), n("53", 0.5284), n("39", 0.3931), ),
  ("WMDs", "TOTAL likely", p("71", 0.7103), p("73", 0.7285), p("72", 0.7183), p("68", 0.6762), ),
  ("", "TOTAL unlikely", p("14", 0.1361), p("12", 0.1179), p("15", 0.1515), p("14", 0.1446), ),
  ("", "NET likely", n("57", 0.5742), n("61", 0.6106), n("57", 0.5667), n("53", 0.5315), ),
))

#heading(level: 3, "By Age")
#xtab(("Item", "Metric", ), ("Total", "18–34", "35–49", "50–64", "65+", ), ("1814", "411", "458", "478", "467", ), (
  ("Superintelligence", "TOTAL likely", p("71", 0.7066), p("67", 0.6744), p("69", 0.6882), p("73", 0.7321), p("74", 0.7397), ),
  ("", "TOTAL unlikely", p("18", 0.1805), p("20", 0.2003), p("18", 0.1779), p("17", 0.1715), p("17", 0.1680), ),
  ("", "NET likely", n("53", 0.5261), n("47", 0.4742), n("51", 0.5103), n("56", 0.5607), n("57", 0.5717), ),
  ("Loss-of-control", "TOTAL likely", p("77", 0.7654), p("70", 0.7008), p("71", 0.7114), p("81", 0.8117), p("85", 0.8537), ),
  ("", "TOTAL unlikely", p("11", 0.1098), p("17", 0.1737), p("13", 0.1292), p("7", 0.0655), p("6", 0.0555), ),
  ("", "NET likely", n("66", 0.6557), n("53", 0.5271), n("58", 0.5821), n("75", 0.7463), n("80", 0.7982), ),
  ("Breakthroughs", "TOTAL likely", p("67", 0.6719), p("58", 0.5834), p("62", 0.6155), p("75", 0.7538), p("76", 0.7577), ),
  ("", "TOTAL unlikely", p("18", 0.1759), p("28", 0.2781), p("17", 0.1656), p("11", 0.1136), p("12", 0.1231), ),
  ("", "NET likely", n("50", 0.4961), n("31", 0.3053), n("45", 0.4499), n("64", 0.6402), n("63", 0.6347), ),
  ("WMDs", "TOTAL likely", p("71", 0.7103), p("65", 0.6549), p("63", 0.6325), p("78", 0.7776), p("79", 0.7922), ),
  ("", "TOTAL unlikely", p("14", 0.1361), p("18", 0.1824), p("16", 0.1633), p("9", 0.0922), p("9", 0.0947), ),
  ("", "NET likely", n("57", 0.5742), n("47", 0.4726), n("47", 0.4692), n("69", 0.6854), n("70", 0.6975), ),
))

#heading(level: 3, "By Ethnicity")
#xtab(("Item", "Metric", ), ("Total", "White", "Black", "Hispanic", "Asian/PI", ), ("1814", "693", "479", "488", "112", ), (
  ("Superintelligence", "TOTAL likely", p("71", 0.7066), p("73", 0.7335), p("61", 0.6092), p("67", 0.6692), p("70", 0.7007), ),
  ("", "TOTAL unlikely", p("18", 0.1805), p("17", 0.1705), p("22", 0.2156), p("19", 0.1911), p("19", 0.1922), ),
  ("", "NET likely", n("53", 0.5261), n("56", 0.5630), n("39", 0.3936), n("48", 0.4781), n("51", 0.5085), ),
  ("Loss-of-control", "TOTAL likely", p("77", 0.7654), p("80", 0.8033), p("67", 0.6736), p("70", 0.6980), p("77", 0.7658), ),
  ("", "TOTAL unlikely", p("11", 0.1098), p("9", 0.0872), p("13", 0.1307), p("15", 0.1531), p("14", 0.1446), ),
  ("", "NET likely", n("66", 0.6557), n("72", 0.7161), n("54", 0.5428), n("54", 0.5449), n("62", 0.6212), ),
  ("Breakthroughs", "TOTAL likely", p("67", 0.6719), p("71", 0.7127), p("63", 0.6336), p("57", 0.5747), p("73", 0.7345), ),
  ("", "TOTAL unlikely", p("18", 0.1759), p("16", 0.1584), p("17", 0.1704), p("22", 0.2174), p("13", 0.1293), ),
  ("", "NET likely", n("50", 0.4961), n("55", 0.5543), n("46", 0.4633), n("36", 0.3573), n("61", 0.6051), ),
  ("WMDs", "TOTAL likely", p("71", 0.7103), p("73", 0.7335), p("63", 0.6322), p("69", 0.6920), p("72", 0.7190), ),
  ("", "TOTAL unlikely", p("14", 0.1361), p("12", 0.1227), p("17", 0.1661), p("15", 0.1487), p("14", 0.1372), ),
  ("", "NET likely", n("57", 0.5742), n("61", 0.6107), n("47", 0.4661), n("54", 0.5433), n("58", 0.5818), ),
))

#heading(level: 3, "By Education")
#xtab(("Item", "Metric", ), ("Total", "HS or less", "Some college", "BA+", ), ("1814", "483", "691", "640", ), (
  ("Superintelligence", "TOTAL likely", p("71", 0.7066), p("70", 0.6963), p("73", 0.7349), p("70", 0.6966), ),
  ("", "TOTAL unlikely", p("18", 0.1805), p("18", 0.1849), p("14", 0.1400), p("20", 0.2049), ),
  ("", "NET likely", n("53", 0.5261), n("51", 0.5115), n("59", 0.5949), n("49", 0.4917), ),
  ("Loss-of-control", "TOTAL likely", p("77", 0.7654), p("69", 0.6877), p("79", 0.7947), p("82", 0.8213), ),
  ("", "TOTAL unlikely", p("11", 0.1098), p("17", 0.1702), p("7", 0.0677), p("8", 0.0800), ),
  ("", "NET likely", n("66", 0.6557), n("52", 0.5175), n("73", 0.7270), n("74", 0.7414), ),
  ("Breakthroughs", "TOTAL likely", p("67", 0.6719), p("59", 0.5861), p("71", 0.7060), p("73", 0.7324), ),
  ("", "TOTAL unlikely", p("18", 0.1759), p("23", 0.2342), p("15", 0.1505), p("14", 0.1363), ),
  ("", "NET likely", n("50", 0.4961), n("35", 0.3519), n("56", 0.5555), n("60", 0.5962), ),
  ("WMDs", "TOTAL likely", p("71", 0.7103), p("70", 0.6957), p("72", 0.7175), p("72", 0.7197), ),
  ("", "TOTAL unlikely", p("14", 0.1361), p("17", 0.1716), p("12", 0.1170), p("11", 0.1147), ),
  ("", "NET likely", n("57", 0.5742), n("52", 0.5241), n("60", 0.6005), n("61", 0.6050), ),
))

#heading(level: 3, "By Household income")
#xtab(("Item", "Metric", ), ("Total", "<50k", "50k-<100k", "100k+", ), ("1814", "673", "607", "534", ), (
  ("Superintelligence", "TOTAL likely", p("71", 0.7066), p("65", 0.6450), p("77", 0.7705), p("72", 0.7161), ),
  ("", "TOTAL unlikely", p("18", 0.1805), p("21", 0.2074), p("14", 0.1357), p("19", 0.1948), ),
  ("", "NET likely", n("53", 0.5261), n("44", 0.4376), n("63", 0.6349), n("52", 0.5213), ),
  ("Loss-of-control", "TOTAL likely", p("77", 0.7654), p("68", 0.6806), p("82", 0.8213), p("81", 0.8137), ),
  ("", "TOTAL unlikely", p("11", 0.1098), p("16", 0.1598), p("7", 0.0711), p("9", 0.0874), ),
  ("", "NET likely", n("66", 0.6557), n("52", 0.5207), n("75", 0.7502), n("73", 0.7262), ),
  ("Breakthroughs", "TOTAL likely", p("67", 0.6719), p("59", 0.5949), p("67", 0.6665), p("78", 0.7772), ),
  ("", "TOTAL unlikely", p("18", 0.1759), p("20", 0.2029), p("20", 0.1995), p("12", 0.1151), ),
  ("", "NET likely", n("50", 0.4961), n("39", 0.3919), n("47", 0.4671), n("66", 0.6621), ),
  ("WMDs", "TOTAL likely", p("71", 0.7103), p("63", 0.6317), p("78", 0.7802), p("74", 0.7353), ),
  ("", "TOTAL unlikely", p("14", 0.1361), p("17", 0.1737), p("11", 0.1127), p("11", 0.1133), ),
  ("", "NET likely", n("57", 0.5742), n("46", 0.4580), n("67", 0.6674), n("62", 0.6221), ),
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

This is the first tracking wave of the *Americans on AI* survey, a
project of Athena Insights.

Respondents were interviewed between June 25 and 30, 2026 as part of NORC's
AmeriSpeak Omnibus. AmeriSpeak is a probability-based household panel
recruited by address-based sampling from the NORC National Frame, designed
to be representative of the US household population. Interviews were
conducted online (96%) and by phone (4%), in English; 1,814 adults
completed the module.

Results are weighted with NORC's vote-choice study weights. NORC first
adjusts the panel base weights for sample selection and nonresponse and
rakes to Current Population Survey benchmarks on age, sex, census
division, race/ethnicity, and education; a second round of raking then
adds 2024 presidential vote choice. The voter shares are benchmarked to
the 2024 election results. This yields a design effect of 2.12 and
an effective sample size of 854. The subgroups reported in this
release were oversampled by design: the weights restore population
proportions, while the additional interviews improve the precision of
those subgroup estimates. Standard errors are design-based (Taylor
linearization over NORC's variance strata and units).

The full-sample margin of error is ±3.4 percentage points at 95%
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

Unweighted demographic composition of the achieved sample (n=1,814).

Several subgroups were oversampled by design, so their unweighted shares exceed their population shares; the report's figures are weighted to NORC's Current Population Survey benchmarks (see the methodology), which restores population proportions. *Party* is profiled by NORC, not a weighting dimension of this module's design.

#comp(("Dimension", "Group", "n", "%", ), (
  ("Sex", "Female", "967", "53", ),
  ("", "Male", "847", "47", ),
  ("Party", "Dem", "916", "50", ),
  ("", "Rep", "519", "29", ),
  ("", "Ind", "371", "20", ),
  ("", "Unknown", "8", "0", ),
  ("Age", "18–34", "411", "23", ),
  ("", "35–49", "458", "25", ),
  ("", "50–64", "478", "26", ),
  ("", "65+", "467", "26", ),
  ("Ethnicity", "White", "693", "38", ),
  ("", "Black", "479", "26", ),
  ("", "Hispanic", "488", "27", ),
  ("", "Asian/PI", "112", "6", ),
  ("", "Two or more", "29", "2", ),
  ("", "Other", "13", "1", ),
  ("Education", "HS or less", "483", "27", ),
  ("", "Some college", "691", "38", ),
  ("", "BA+", "640", "35", ),
  ("Household income", "<50k", "673", "37", ),
  ("", "50k-<100k", "607", "33", ),
  ("", "100k+", "534", "29", ),
))
