#import "/tracker-reports/report.typ": *
#show: report.with(title: "Americans on AI — 17 August 2026")

Athena Insights surveyed 1,080 US adults from August 13-17, 2026, via NORC's AmeriSpeak Panel, a probability-based panel designed to be representative of the US household population.

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
  ("Jobs", p("51", 0.5089), p("35", 0.3541), p("9", 0.0907), p("2", 0.0187), p("3", 0.0263), ),
  ("Inflation", p("67", 0.6700), p("23", 0.2331), p("7", 0.0650), p("<1", 0.0049), p("3", 0.0261), ),
  ("AI harms", p("39", 0.3858), p("37", 0.3694), p("13", 0.1320), p("5", 0.0546), p("6", 0.0559), ),
  ("Immigration", p("34", 0.3396), p("33", 0.3308), p("18", 0.1835), p("11", 0.1068), p("4", 0.0365), ),
  ("Health care", p("68", 0.6808), p("22", 0.2212), p("5", 0.0487), p("2", 0.0231), p("2", 0.0248), ),
  ("Crime", p("55", 0.5539), p("32", 0.3206), p("8", 0.0827), p("1", 0.0111), p("3", 0.0290), ),
  ("Climate change", p("35", 0.3549), p("30", 0.3009), p("20", 0.1958), p("11", 0.1137), p("3", 0.0312), ),
))

#heading(level: 2, "Affect")

#stem("Thinking about AI's growing role in society, which of these options comes closest to how you feel, even if none are exactly right?")

#note[*Response distribution (weighted)* — % of all respondents. "No answer" (2% or less) is not shown.]
#dist(("Response", "%", ), (
  ("Very excited", p("3", 0.0333), ),
  ("Somewhat excited", p("17", 0.1676), ),
  ("Somewhat concerned", p("41", 0.4091), ),
  ("Very concerned", p("28", 0.2827), ),
  ("None of these are close to how I feel", p("10", 0.0990), ),
))

#heading(level: 2, "Agency")

#stem("Again, thinking about AI, which statement comes closer to your view, even if neither is exactly right?")

#note[*Response distribution (weighted)* — % of all respondents. "No answer" (2% or less) is not shown.]
#dist(("Response", "%", ), (
  ("People like me can shape how much AI is part of our lives", p("16", 0.1554), ),
  ("AI is coming into our lives whether we want it or not", p("70", 0.7018), ),
  ("Neither of these are close to how I feel", p("13", 0.1280), ),
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
  ("Saving time", p("20", 0.2008), p("26", 0.2561), p("19", 0.1887), p("13", 0.1328), p("21", 0.2137), ),
  ("Pressured to do more", p("19", 0.1934), p("24", 0.2385), p("23", 0.2307), p("11", 0.1075), p("22", 0.2236), ),
  ("Losing connections", p("33", 0.3343), p("23", 0.2333), p("17", 0.1738), p("8", 0.0797), p("17", 0.1714), ),
  ("Real vs. fake", p("55", 0.5484), p("27", 0.2695), p("8", 0.0790), p("2", 0.0212), p("8", 0.0756), ),
  ("Better health care", p("5", 0.0529), p("12", 0.1248), p("23", 0.2284), p("32", 0.3177), p("27", 0.2672), ),
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
  ("Jobs", p("3", 0.0284), p("8", 0.0759), p("41", 0.4110), p("33", 0.3329), p("13", 0.1289), p("2", 0.0228), ),
  ("Future", p("3", 0.0284), p("27", 0.2740), p("32", 0.3150), p("23", 0.2316), p("12", 0.1221), p("3", 0.0288), ),
  ("Children", p("3", 0.0292), p("16", 0.1601), p("35", 0.3502), p("28", 0.2811), p("15", 0.1529), p("3", 0.0265), ),
  ("Finances", p("3", 0.0327), p("23", 0.2298), p("26", 0.2624), p("15", 0.1513), p("29", 0.2921), p("3", 0.0316), ),
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
  ("Children", p("12", 0.1191), p("12", 0.1245), p("14", 0.1424), p("16", 0.1647), p("26", 0.2608), p("18", 0.1819), ),
  ("Environment", p("12", 0.1222), p("11", 0.1136), p("15", 0.1453), p("12", 0.1216), p("31", 0.3052), p("18", 0.1846), ),
  ("Workers", p("8", 0.0773), p("14", 0.1392), p("18", 0.1813), p("19", 0.1920), p("23", 0.2303), p("17", 0.1700), ),
  ("Competitiveness", p("9", 0.0886), p("11", 0.1067), p("21", 0.2135), p("17", 0.1687), p("16", 0.1637), p("25", 0.2484), ),
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
  ("Superintelligence", p("27", 0.2723), p("41", 0.4113), p("11", 0.1069), p("6", 0.0568), p("14", 0.1384), ),
  ("Loss-of-control", p("38", 0.3754), p("40", 0.4023), p("7", 0.0676), p("1", 0.0149), p("13", 0.1304), ),
  ("Breakthroughs", p("16", 0.1623), p("47", 0.4717), p("13", 0.1294), p("4", 0.0422), p("18", 0.1847), ),
  ("WMDs", p("22", 0.2231), p("45", 0.4526), p("9", 0.0896), p("2", 0.0242), p("20", 0.2000), ),
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
#xtab(("Item", "Metric", ), ("Total", "Female", "Male", ), ("1080", "554", "526", ), (
  ("Jobs", "TOTAL high priority", p("86", 0.8631), p("89", 0.8933), p("83", 0.8305), ),
  ("", "TOTAL lower priority", p("11", 0.1094), p("7", 0.0679), p("15", 0.1541), ),
  ("", "NET priority", n("75", 0.7536), n("83", 0.8255), n("68", 0.6764), ),
  ("Inflation", "TOTAL high priority", p("90", 0.9030), p("92", 0.9246), p("88", 0.8799), ),
  ("", "TOTAL lower priority", p("7", 0.0698), p("4", 0.0426), p("10", 0.0991), ),
  ("", "NET priority", n("83", 0.8332), n("88", 0.8820), n("78", 0.7808), ),
  ("AI harms", "TOTAL high priority", p("76", 0.7552), p("77", 0.7741), p("73", 0.7349), ),
  ("", "TOTAL lower priority", p("19", 0.1866), p("15", 0.1526), p("22", 0.2231), ),
  ("", "NET priority", n("57", 0.5686), n("62", 0.6215), n("51", 0.5118), ),
  ("Immigration", "TOTAL high priority", p("67", 0.6703), p("66", 0.6649), p("68", 0.6762), ),
  ("", "TOTAL lower priority", p("29", 0.2903), p("28", 0.2791), p("30", 0.3023), ),
  ("", "NET priority", n("38", 0.3801), n("39", 0.3858), n("37", 0.3740), ),
  ("Health care", "TOTAL high priority", p("90", 0.9020), p("91", 0.9146), p("89", 0.8885), ),
  ("", "TOTAL lower priority", p("7", 0.0718), p("5", 0.0527), p("9", 0.0923), ),
  ("", "NET priority", n("83", 0.8302), n("86", 0.8619), n("80", 0.7962), ),
  ("Crime", "TOTAL high priority", p("87", 0.8745), p("88", 0.8803), p("87", 0.8682), ),
  ("", "TOTAL lower priority", p("9", 0.0938), p("7", 0.0702), p("12", 0.1191), ),
  ("", "NET priority", n("78", 0.7807), n("81", 0.8101), n("75", 0.7490), ),
  ("Climate change", "TOTAL high priority", p("66", 0.6559), p("71", 0.7131), p("59", 0.5943), ),
  ("", "TOTAL lower priority", p("31", 0.3096), p("24", 0.2408), p("38", 0.3835), ),
  ("", "NET priority", n("35", 0.3463), n("47", 0.4724), n("21", 0.2109), ),
))

#heading(level: 3, "By Party")
#xtab(("Item", "Metric", ), ("Total", "Dem", "Rep", "Ind", ), ("1080", "499", "375", "201", ), (
  ("Jobs", "TOTAL high priority", p("86", 0.8631), p("89", 0.8864), p("89", 0.8875), p("80", 0.8027), ),
  ("", "TOTAL lower priority", p("11", 0.1094), p("9", 0.0900), p("10", 0.1030), p("14", 0.1357), ),
  ("", "NET priority", n("75", 0.7536), n("80", 0.7964), n("78", 0.7844), n("67", 0.6670), ),
  ("Inflation", "TOTAL high priority", p("90", 0.9030), p("93", 0.9251), p("92", 0.9245), p("85", 0.8453), ),
  ("", "TOTAL lower priority", p("7", 0.0698), p("6", 0.0583), p("7", 0.0656), p("10", 0.0959), ),
  ("", "NET priority", n("83", 0.8332), n("87", 0.8669), n("86", 0.8589), n("75", 0.7493), ),
  ("AI harms", "TOTAL high priority", p("76", 0.7552), p("81", 0.8120), p("70", 0.7027), p("76", 0.7562), ),
  ("", "TOTAL lower priority", p("19", 0.1866), p("16", 0.1588), p("25", 0.2511), p("13", 0.1307), ),
  ("", "NET priority", n("57", 0.5686), n("65", 0.6531), n("45", 0.4516), n("63", 0.6256), ),
  ("Immigration", "TOTAL high priority", p("67", 0.6703), p("52", 0.5219), p("89", 0.8872), p("57", 0.5722), ),
  ("", "TOTAL lower priority", p("29", 0.2903), p("46", 0.4563), p("9", 0.0920), p("33", 0.3335), ),
  ("", "NET priority", n("38", 0.3801), n("7", 0.0657), n("80", 0.7952), n("24", 0.2386), ),
  ("Health care", "TOTAL high priority", p("90", 0.9020), p("95", 0.9469), p("91", 0.9110), p("83", 0.8317), ),
  ("", "TOTAL lower priority", p("7", 0.0718), p("4", 0.0446), p("8", 0.0785), p("10", 0.1017), ),
  ("", "NET priority", n("83", 0.8302), n("90", 0.9023), n("83", 0.8325), n("73", 0.7301), ),
  ("Crime", "TOTAL high priority", p("87", 0.8745), p("81", 0.8112), p("95", 0.9507), p("86", 0.8580), ),
  ("", "TOTAL lower priority", p("9", 0.0938), p("16", 0.1565), p("4", 0.0389), p("8", 0.0781), ),
  ("", "NET priority", n("78", 0.7807), n("65", 0.6547), n("91", 0.9119), n("78", 0.7799), ),
  ("Climate change", "TOTAL high priority", p("66", 0.6559), p("88", 0.8802), p("40", 0.4032), p("68", 0.6779), ),
  ("", "TOTAL lower priority", p("31", 0.3096), p("10", 0.0986), p("57", 0.5669), p("26", 0.2598), ),
  ("", "NET priority", n("35", 0.3463), n("78", 0.7817), n("−16", -0.1636), n("42", 0.4180), ),
))

#heading(level: 3, "By Age")
#xtab(("Item", "Metric", ), ("Total", "18–34", "35–49", "50–64", "65+", ), ("1080", "240", "257", "257", "326", ), (
  ("Jobs", "TOTAL high priority", p("86", 0.8631), p("84", 0.8432), p("87", 0.8725), p("87", 0.8731), p("87", 0.8677), ),
  ("", "TOTAL lower priority", p("11", 0.1094), p("15", 0.1490), p("9", 0.0882), p("9", 0.0909), p("10", 0.1013), ),
  ("", "NET priority", n("75", 0.7536), n("69", 0.6942), n("78", 0.7843), n("78", 0.7822), n("77", 0.7664), ),
  ("Inflation", "TOTAL high priority", p("90", 0.9030), p("84", 0.8371), p("93", 0.9269), p("92", 0.9236), p("94", 0.9378), ),
  ("", "TOTAL lower priority", p("7", 0.0698), p("13", 0.1340), p("5", 0.0470), p("5", 0.0543), p("3", 0.0313), ),
  ("", "NET priority", n("83", 0.8332), n("70", 0.7031), n("88", 0.8799), n("87", 0.8693), n("91", 0.9065), ),
  ("AI harms", "TOTAL high priority", p("76", 0.7552), p("74", 0.7394), p("75", 0.7529), p("78", 0.7766), p("76", 0.7564), ),
  ("", "TOTAL lower priority", p("19", 0.1866), p("23", 0.2251), p("17", 0.1695), p("18", 0.1800), p("16", 0.1643), ),
  ("", "NET priority", n("57", 0.5686), n("51", 0.5142), n("58", 0.5834), n("60", 0.5966), n("59", 0.5921), ),
  ("Immigration", "TOTAL high priority", p("67", 0.6703), p("57", 0.5729), p("59", 0.5936), p("72", 0.7206), p("82", 0.8167), ),
  ("", "TOTAL lower priority", p("29", 0.2903), p("40", 0.3979), p("35", 0.3474), p("24", 0.2374), p("15", 0.1541), ),
  ("", "NET priority", n("38", 0.3801), n("18", 0.1750), n("25", 0.2463), n("48", 0.4832), n("66", 0.6626), ),
  ("Health care", "TOTAL high priority", p("90", 0.9020), p("90", 0.8987), p("89", 0.8942), p("89", 0.8899), p("93", 0.9251), ),
  ("", "TOTAL lower priority", p("7", 0.0718), p("8", 0.0837), p("6", 0.0579), p("8", 0.0819), p("6", 0.0623), ),
  ("", "NET priority", n("83", 0.8302), n("82", 0.8150), n("84", 0.8363), n("81", 0.8080), n("86", 0.8628), ),
  ("Crime", "TOTAL high priority", p("87", 0.8745), p("82", 0.8151), p("85", 0.8520), p("90", 0.9016), p("94", 0.9423), ),
  ("", "TOTAL lower priority", p("9", 0.0938), p("16", 0.1567), p("10", 0.1022), p("6", 0.0571), p("4", 0.0448), ),
  ("", "NET priority", n("78", 0.7807), n("66", 0.6584), n("75", 0.7498), n("84", 0.8445), n("90", 0.8975), ),
  ("Climate change", "TOTAL high priority", p("66", 0.6559), p("70", 0.6955), p("68", 0.6834), p("62", 0.6156), p("62", 0.6185), ),
  ("", "TOTAL lower priority", p("31", 0.3096), p("28", 0.2776), p("28", 0.2770), p("34", 0.3426), p("35", 0.3497), ),
  ("", "NET priority", n("35", 0.3463), n("42", 0.4179), n("41", 0.4065), n("27", 0.2731), n("27", 0.2688), ),
))

#heading(level: 3, "By Ethnicity")
#xtab(("Item", "Metric", ), ("Total", "White", "Black", "Hispanic", ), ("1080", "667", "118", "162", ), (
  ("Jobs", "TOTAL high priority", p("86", 0.8631), p("87", 0.8746), p("87", 0.8682), p("86", 0.8557), ),
  ("", "TOTAL lower priority", p("11", 0.1094), p("10", 0.1013), p("5", 0.0533), p("13", 0.1283), ),
  ("", "NET priority", n("75", 0.7536), n("77", 0.7733), n("81", 0.8149), n("73", 0.7274), ),
  ("Inflation", "TOTAL high priority", p("90", 0.9030), p("93", 0.9256), p("81", 0.8113), p("91", 0.9098), ),
  ("", "TOTAL lower priority", p("7", 0.0698), p("6", 0.0572), p("8", 0.0794), p("7", 0.0661), ),
  ("", "NET priority", n("83", 0.8332), n("87", 0.8685), n("73", 0.7319), n("84", 0.8437), ),
  ("AI harms", "TOTAL high priority", p("76", 0.7552), p("78", 0.7826), p("61", 0.6113), p("70", 0.7045), ),
  ("", "TOTAL lower priority", p("19", 0.1866), p("17", 0.1687), p("26", 0.2570), p("22", 0.2205), ),
  ("", "NET priority", n("57", 0.5686), n("61", 0.6139), n("35", 0.3543), n("48", 0.4839), ),
  ("Immigration", "TOTAL high priority", p("67", 0.6703), p("71", 0.7050), p("57", 0.5674), p("65", 0.6475), ),
  ("", "TOTAL lower priority", p("29", 0.2903), p("25", 0.2539), p("37", 0.3702), p("33", 0.3284), ),
  ("", "NET priority", n("38", 0.3801), n("45", 0.4512), n("20", 0.1971), n("32", 0.3190), ),
  ("Health care", "TOTAL high priority", p("90", 0.9020), p("91", 0.9132), p("86", 0.8589), p("91", 0.9130), ),
  ("", "TOTAL lower priority", p("7", 0.0718), p("7", 0.0710), p("8", 0.0752), p("4", 0.0447), ),
  ("", "NET priority", n("83", 0.8302), n("84", 0.8422), n("78", 0.7837), n("87", 0.8682), ),
  ("Crime", "TOTAL high priority", p("87", 0.8745), p("89", 0.8879), p("87", 0.8659), p("83", 0.8260), ),
  ("", "TOTAL lower priority", p("9", 0.0938), p("10", 0.0998), p("3", 0.0287), p("12", 0.1172), ),
  ("", "NET priority", n("78", 0.7807), n("79", 0.7881), n("84", 0.8371), n("71", 0.7088), ),
  ("Climate change", "TOTAL high priority", p("66", 0.6559), p("63", 0.6311), p("73", 0.7279), p("66", 0.6638), ),
  ("", "TOTAL lower priority", p("31", 0.3096), p("34", 0.3375), p("18", 0.1792), p("31", 0.3091), ),
  ("", "NET priority", n("35", 0.3463), n("29", 0.2936), n("55", 0.5486), n("35", 0.3547), ),
))

#heading(level: 3, "By Education")
#xtab(("Item", "Metric", ), ("Total", "HS or less", "Some college", "BA+", ), ("1080", "276", "380", "424", ), (
  ("Jobs", "TOTAL high priority", p("86", 0.8631), p("81", 0.8149), p("92", 0.9197), p("87", 0.8704), ),
  ("", "TOTAL lower priority", p("11", 0.1094), p("13", 0.1309), p("6", 0.0645), p("12", 0.1202), ),
  ("", "NET priority", n("75", 0.7536), n("68", 0.6840), n("86", 0.8551), n("75", 0.7503), ),
  ("Inflation", "TOTAL high priority", p("90", 0.9030), p("85", 0.8458), p("93", 0.9344), p("94", 0.9373), ),
  ("", "TOTAL lower priority", p("7", 0.0698), p("10", 0.1043), p("4", 0.0447), p("5", 0.0536), ),
  ("", "NET priority", n("83", 0.8332), n("74", 0.7415), n("89", 0.8897), n("88", 0.8836), ),
  ("AI harms", "TOTAL high priority", p("76", 0.7552), p("69", 0.6887), p("77", 0.7692), p("81", 0.8109), ),
  ("", "TOTAL lower priority", p("19", 0.1866), p("22", 0.2182), p("17", 0.1650), p("17", 0.1706), ),
  ("", "NET priority", n("57", 0.5686), n("47", 0.4705), n("60", 0.6042), n("64", 0.6403), ),
  ("Immigration", "TOTAL high priority", p("67", 0.6703), p("65", 0.6474), p("72", 0.7158), p("66", 0.6607), ),
  ("", "TOTAL lower priority", p("29", 0.2903), p("29", 0.2890), p("25", 0.2465), p("32", 0.3226), ),
  ("", "NET priority", n("38", 0.3801), n("36", 0.3584), n("47", 0.4692), n("34", 0.3381), ),
  ("Health care", "TOTAL high priority", p("90", 0.9020), p("85", 0.8521), p("93", 0.9309), p("93", 0.9308), ),
  ("", "TOTAL lower priority", p("7", 0.0718), p("9", 0.0943), p("5", 0.0547), p("6", 0.0617), ),
  ("", "NET priority", n("83", 0.8302), n("76", 0.7578), n("88", 0.8762), n("87", 0.8691), ),
  ("Crime", "TOTAL high priority", p("87", 0.8745), p("84", 0.8401), p("92", 0.9212), p("88", 0.8752), ),
  ("", "TOTAL lower priority", p("9", 0.0938), p("10", 0.0989), p("6", 0.0614), p("11", 0.1118), ),
  ("", "NET priority", n("78", 0.7807), n("74", 0.7413), n("86", 0.8598), n("76", 0.7634), ),
  ("Climate change", "TOTAL high priority", p("66", 0.6559), p("66", 0.6590), p("63", 0.6341), p("67", 0.6683), ),
  ("", "TOTAL lower priority", p("31", 0.3096), p("30", 0.2982), p("30", 0.3017), p("33", 0.3264), ),
  ("", "NET priority", n("35", 0.3463), n("36", 0.3608), n("33", 0.3325), n("34", 0.3418), ),
))

#heading(level: 3, "By Household income")
#xtab(("Item", "Metric", ), ("Total", "<50k", "50k-<100k", "100k+", ), ("1080", "362", "341", "377", ), (
  ("Jobs", "TOTAL high priority", p("86", 0.8631), p("86", 0.8556), p("90", 0.9003), p("84", 0.8396), ),
  ("", "TOTAL lower priority", p("11", 0.1094), p("9", 0.0906), p("8", 0.0811), p("15", 0.1544), ),
  ("", "NET priority", n("75", 0.7536), n("77", 0.7651), n("82", 0.8192), n("69", 0.6852), ),
  ("Inflation", "TOTAL high priority", p("90", 0.9030), p("87", 0.8730), p("95", 0.9513), p("90", 0.8951), ),
  ("", "TOTAL lower priority", p("7", 0.0698), p("7", 0.0681), p("4", 0.0412), p("10", 0.0960), ),
  ("", "NET priority", n("83", 0.8332), n("80", 0.8049), n("91", 0.9100), n("80", 0.7991), ),
  ("AI harms", "TOTAL high priority", p("76", 0.7552), p("71", 0.7108), p("78", 0.7777), p("79", 0.7850), ),
  ("", "TOTAL lower priority", p("19", 0.1866), p("17", 0.1749), p("20", 0.1971), p("19", 0.1904), ),
  ("", "NET priority", n("57", 0.5686), n("54", 0.5359), n("58", 0.5806), n("59", 0.5946), ),
  ("Immigration", "TOTAL high priority", p("67", 0.6703), p("67", 0.6729), p("69", 0.6927), p("65", 0.6485), ),
  ("", "TOTAL lower priority", p("29", 0.2903), p("26", 0.2560), p("28", 0.2827), p("33", 0.3345), ),
  ("", "NET priority", n("38", 0.3801), n("42", 0.4169), n("41", 0.4100), n("31", 0.3140), ),
  ("Health care", "TOTAL high priority", p("90", 0.9020), p("88", 0.8791), p("94", 0.9370), p("90", 0.8975), ),
  ("", "TOTAL lower priority", p("7", 0.0718), p("6", 0.0596), p("6", 0.0613), p("9", 0.0941), ),
  ("", "NET priority", n("83", 0.8302), n("82", 0.8194), n("88", 0.8758), n("80", 0.8034), ),
  ("Crime", "TOTAL high priority", p("87", 0.8745), p("87", 0.8731), p("91", 0.9051), p("85", 0.8499), ),
  ("", "TOTAL lower priority", p("9", 0.0938), p("7", 0.0683), p("8", 0.0831), p("13", 0.1310), ),
  ("", "NET priority", n("78", 0.7807), n("80", 0.8048), n("82", 0.8220), n("72", 0.7189), ),
  ("Climate change", "TOTAL high priority", p("66", 0.6559), p("65", 0.6485), p("71", 0.7121), p("62", 0.6162), ),
  ("", "TOTAL lower priority", p("31", 0.3096), p("29", 0.2924), p("27", 0.2691), p("36", 0.3629), ),
  ("", "NET priority", n("35", 0.3463), n("36", 0.3561), n("44", 0.4430), n("25", 0.2533), ),
))

#heading(level: 2, "Affect")

#stem("Thinking about AI's growing role in society, which of these options comes closest to how you feel, even if none are exactly right?")

#defs("Each total combines multiple responses:", ("Total", "Responses", ), (
  ("TOTAL excited", "\"Very excited\" or \"Somewhat excited\"", ),
  ("TOTAL concerned", "\"Somewhat concerned\" or \"Very concerned\"", ),
))

#note[Cells (weighted): totals (%) and net (percentage points).]
#heading(level: 3, "By Sex")
#xtab(("Metric", ), ("Total", "Female", "Male", ), ("1080", "554", "526", ), (
  ("TOTAL excited", p("20", 0.2009), p("16", 0.1617), p("24", 0.2430), ),
  ("TOTAL concerned", p("69", 0.6918), p("72", 0.7201), p("66", 0.6614), ),
  ("None of these", p("10", 0.0990), p("11", 0.1124), p("8", 0.0847), ),
  ("No answer", p("1", 0.0083), p("1", 0.0058), p("1", 0.0110), ),
  ("NET concerned", n("49", 0.4909), n("56", 0.5584), n("42", 0.4184), ),
))

#heading(level: 3, "By Party")
#xtab(("Metric", ), ("Total", "Dem", "Rep", "Ind", ), ("1080", "499", "375", "201", ), (
  ("TOTAL excited", p("20", 0.2009), p("18", 0.1752), p("24", 0.2434), p("18", 0.1813), ),
  ("TOTAL concerned", p("69", 0.6918), p("73", 0.7283), p("66", 0.6594), p("68", 0.6779), ),
  ("None of these", p("10", 0.0990), p("8", 0.0758), p("10", 0.0969), p("14", 0.1398), ),
  ("No answer", p("1", 0.0083), p("2", 0.0206), p("<1", 0.0003), p("<1", 0.0010), ),
  ("NET concerned", n("49", 0.4909), n("55", 0.5531), n("42", 0.4160), n("50", 0.4967), ),
))

#heading(level: 3, "By Age")
#xtab(("Metric", ), ("Total", "18–34", "35–49", "50–64", "65+", ), ("1080", "240", "257", "257", "326", ), (
  ("TOTAL excited", p("20", 0.2009), p("23", 0.2252), p("22", 0.2248), p("20", 0.1975), p("15", 0.1509), ),
  ("TOTAL concerned", p("69", 0.6918), p("72", 0.7244), p("61", 0.6100), p("71", 0.7097), p("72", 0.7194), ),
  ("None of these", p("10", 0.0990), p("3", 0.0348), p("16", 0.1573), p("9", 0.0928), p("12", 0.1219), ),
  ("No answer", p("1", 0.0083), p("2", 0.0156), p("1", 0.0079), p("0", 0.0000), p("1", 0.0078), ),
  ("NET concerned", n("49", 0.4909), n("50", 0.4991), n("39", 0.3852), n("51", 0.5123), n("57", 0.5685), ),
))

#heading(level: 3, "By Ethnicity")
#xtab(("Metric", ), ("Total", "White", "Black", "Hispanic", ), ("1080", "667", "118", "162", ), (
  ("TOTAL excited", p("20", 0.2009), p("18", 0.1830), p("25", 0.2519), p("20", 0.1990), ),
  ("TOTAL concerned", p("69", 0.6918), p("72", 0.7230), p("52", 0.5169), p("70", 0.7042), ),
  ("None of these", p("10", 0.0990), p("9", 0.0904), p("21", 0.2124), p("8", 0.0752), ),
  ("No answer", p("1", 0.0083), p("<1", 0.0036), p("2", 0.0187), p("2", 0.0215), ),
  ("NET concerned", n("49", 0.4909), n("54", 0.5400), n("26", 0.2649), n("51", 0.5052), ),
))

#heading(level: 3, "By Education")
#xtab(("Metric", ), ("Total", "HS or less", "Some college", "BA+", ), ("1080", "276", "380", "424", ), (
  ("TOTAL excited", p("20", 0.2009), p("19", 0.1875), p("17", 0.1746), p("23", 0.2328), ),
  ("TOTAL concerned", p("69", 0.6918), p("67", 0.6673), p("70", 0.7035), p("71", 0.7077), ),
  ("None of these", p("10", 0.0990), p("14", 0.1358), p("11", 0.1080), p("6", 0.0563), ),
  ("No answer", p("1", 0.0083), p("1", 0.0094), p("1", 0.0139), p("<1", 0.0032), ),
  ("NET concerned", n("49", 0.4909), n("48", 0.4798), n("53", 0.5289), n("47", 0.4749), ),
))

#heading(level: 3, "By Household income")
#xtab(("Metric", ), ("Total", "<50k", "50k-<100k", "100k+", ), ("1080", "362", "341", "377", ), (
  ("TOTAL excited", p("20", 0.2009), p("17", 0.1686), p("21", 0.2074), p("23", 0.2309), ),
  ("TOTAL concerned", p("69", 0.6918), p("67", 0.6723), p("69", 0.6901), p("71", 0.7148), ),
  ("None of these", p("10", 0.0990), p("14", 0.1404), p("10", 0.1025), p("5", 0.0505), ),
  ("No answer", p("1", 0.0083), p("2", 0.0188), p("0", 0.0000), p("<1", 0.0038), ),
  ("NET concerned", n("49", 0.4909), n("50", 0.5037), n("48", 0.4826), n("48", 0.4839), ),
))

#heading(level: 2, "Agency")

#stem("Again, thinking about AI, which statement comes closer to your view, even if neither is exactly right?")

#note[Cells (weighted): totals (%) and net (percentage points).]
#heading(level: 3, "By Sex")
#xtab(("Metric", ), ("Total", "Female", "Male", ), ("1080", "554", "526", ), (
  ("TOTAL can shape", p("16", 0.1554), p("15", 0.1450), p("17", 0.1665), ),
  ("TOTAL inevitable", p("70", 0.7018), p("69", 0.6913), p("71", 0.7130), ),
  ("Neither of these", p("13", 0.1280), p("15", 0.1497), p("10", 0.1047), ),
  ("No answer", p("1", 0.0148), p("1", 0.0140), p("2", 0.0157), ),
  ("NET inevitable", n("55", 0.5464), n("55", 0.5464), n("55", 0.5465), ),
))

#heading(level: 3, "By Party")
#xtab(("Metric", ), ("Total", "Dem", "Rep", "Ind", ), ("1080", "499", "375", "201", ), (
  ("TOTAL can shape", p("16", 0.1554), p("16", 0.1565), p("15", 0.1535), p("16", 0.1582), ),
  ("TOTAL inevitable", p("70", 0.7018), p("69", 0.6935), p("74", 0.7378), p("67", 0.6707), ),
  ("Neither of these", p("13", 0.1280), p("13", 0.1266), p("11", 0.1054), p("17", 0.1671), ),
  ("No answer", p("1", 0.0148), p("2", 0.0234), p("<1", 0.0033), p("<1", 0.0039), ),
  ("NET inevitable", n("55", 0.5464), n("54", 0.5370), n("58", 0.5843), n("51", 0.5125), ),
))

#heading(level: 3, "By Age")
#xtab(("Metric", ), ("Total", "18–34", "35–49", "50–64", "65+", ), ("1080", "240", "257", "257", "326", ), (
  ("TOTAL can shape", p("16", 0.1554), p("21", 0.2108), p("16", 0.1587), p("14", 0.1426), p("10", 0.0982), ),
  ("TOTAL inevitable", p("70", 0.7018), p("63", 0.6265), p("68", 0.6790), p("73", 0.7277), p("79", 0.7900), ),
  ("Neither of these", p("13", 0.1280), p("15", 0.1517), p("15", 0.1512), p("11", 0.1134), p("9", 0.0901), ),
  ("No answer", p("1", 0.0148), p("1", 0.0111), p("1", 0.0112), p("2", 0.0163), p("2", 0.0217), ),
  ("NET inevitable", n("55", 0.5464), n("42", 0.4157), n("52", 0.5203), n("59", 0.5851), n("69", 0.6918), ),
))

#heading(level: 3, "By Ethnicity")
#xtab(("Metric", ), ("Total", "White", "Black", "Hispanic", ), ("1080", "667", "118", "162", ), (
  ("TOTAL can shape", p("16", 0.1554), p("15", 0.1488), p("9", 0.0929), p("19", 0.1877), ),
  ("TOTAL inevitable", p("70", 0.7018), p("72", 0.7207), p("71", 0.7054), p("65", 0.6460), ),
  ("Neither of these", p("13", 0.1280), p("12", 0.1246), p("16", 0.1561), p("14", 0.1366), ),
  ("No answer", p("1", 0.0148), p("1", 0.0060), p("5", 0.0456), p("3", 0.0298), ),
  ("NET inevitable", n("55", 0.5464), n("57", 0.5719), n("61", 0.6125), n("46", 0.4583), ),
))

#heading(level: 3, "By Education")
#xtab(("Metric", ), ("Total", "HS or less", "Some college", "BA+", ), ("1080", "276", "380", "424", ), (
  ("TOTAL can shape", p("16", 0.1554), p("14", 0.1415), p("12", 0.1205), p("19", 0.1939), ),
  ("TOTAL inevitable", p("70", 0.7018), p("66", 0.6579), p("73", 0.7275), p("73", 0.7268), ),
  ("Neither of these", p("13", 0.1280), p("18", 0.1774), p("14", 0.1384), p("7", 0.0718), ),
  ("No answer", p("1", 0.0148), p("2", 0.0233), p("1", 0.0136), p("1", 0.0074), ),
  ("NET inevitable", n("55", 0.5464), n("52", 0.5165), n("61", 0.6071), n("53", 0.5329), ),
))

#heading(level: 3, "By Household income")
#xtab(("Metric", ), ("Total", "<50k", "50k-<100k", "100k+", ), ("1080", "362", "341", "377", ), (
  ("TOTAL can shape", p("16", 0.1554), p("13", 0.1273), p("16", 0.1568), p("19", 0.1851), ),
  ("TOTAL inevitable", p("70", 0.7018), p("68", 0.6754), p("73", 0.7295), p("71", 0.7074), ),
  ("Neither of these", p("13", 0.1280), p("18", 0.1750), p("10", 0.0986), p("10", 0.1012), ),
  ("No answer", p("1", 0.0148), p("2", 0.0223), p("2", 0.0150), p("1", 0.0064), ),
  ("NET inevitable", n("55", 0.5464), n("55", 0.5481), n("57", 0.5726), n("52", 0.5223), ),
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
#xtab(("Item", "Metric", ), ("Total", "Female", "Male", ), ("1080", "554", "526", ), (
  ("Saving time", "TOTAL realized", p("46", 0.4569), p("42", 0.4243), p("49", 0.4919), ),
  ("", "TOTAL not yet", p("32", 0.3215), p("32", 0.3161), p("33", 0.3274), ),
  ("", "NET realized", n("14", 0.1354), n("11", 0.1082), n("16", 0.1646), ),
  ("Pressured to do more", "TOTAL realized", p("43", 0.4319), p("45", 0.4491), p("41", 0.4133), ),
  ("", "TOTAL not yet", p("34", 0.3382), p("29", 0.2941), p("39", 0.3855), ),
  ("", "NET realized", n("9", 0.0937), n("16", 0.1550), n("3", 0.0278), ),
  ("Losing connections", "TOTAL realized", p("57", 0.5676), p("59", 0.5929), p("54", 0.5404), ),
  ("", "TOTAL not yet", p("25", 0.2535), p("22", 0.2165), p("29", 0.2934), ),
  ("", "NET realized", n("31", 0.3141), n("38", 0.3764), n("25", 0.2470), ),
  ("Real vs. fake", "TOTAL realized", p("82", 0.8179), p("80", 0.8044), p("83", 0.8325), ),
  ("", "TOTAL not yet", p("10", 0.1002), p("10", 0.1035), p("10", 0.0967), ),
  ("", "NET realized", n("72", 0.7177), n("70", 0.7010), n("74", 0.7357), ),
  ("Better health care", "TOTAL realized", p("18", 0.1777), p("15", 0.1506), p("21", 0.2068), ),
  ("", "TOTAL not yet", p("55", 0.5461), p("54", 0.5402), p("55", 0.5523), ),
  ("", "NET realized", n("−37", -0.3683), n("−39", -0.3896), n("−35", -0.3455), ),
))

#heading(level: 3, "By Party")
#xtab(("Item", "Metric", ), ("Total", "Dem", "Rep", "Ind", ), ("1080", "499", "375", "201", ), (
  ("Saving time", "TOTAL realized", p("46", 0.4569), p("46", 0.4593), p("49", 0.4933), p("40", 0.4019), ),
  ("", "TOTAL not yet", p("32", 0.3215), p("34", 0.3400), p("32", 0.3214), p("30", 0.2977), ),
  ("", "NET realized", n("14", 0.1354), n("12", 0.1193), n("17", 0.1719), n("10", 0.1042), ),
  ("Pressured to do more", "TOTAL realized", p("43", 0.4319), p("49", 0.4898), p("41", 0.4061), p("38", 0.3792), ),
  ("", "TOTAL not yet", p("34", 0.3382), p("32", 0.3218), p("40", 0.4001), p("28", 0.2758), ),
  ("", "NET realized", n("9", 0.0937), n("17", 0.1680), n("1", 0.0059), n("10", 0.1034), ),
  ("Losing connections", "TOTAL realized", p("57", 0.5676), p("53", 0.5326), p("60", 0.6027), p("58", 0.5776), ),
  ("", "TOTAL not yet", p("25", 0.2535), p("27", 0.2692), p("26", 0.2629), p("21", 0.2137), ),
  ("", "NET realized", n("31", 0.3141), n("26", 0.2634), n("34", 0.3398), n("36", 0.3639), ),
  ("Real vs. fake", "TOTAL realized", p("82", 0.8179), p("85", 0.8479), p("80", 0.7982), p("81", 0.8132), ),
  ("", "TOTAL not yet", p("10", 0.1002), p("9", 0.0898), p("13", 0.1262), p("8", 0.0780), ),
  ("", "NET realized", n("72", 0.7177), n("76", 0.7581), n("67", 0.6719), n("74", 0.7352), ),
  ("Better health care", "TOTAL realized", p("18", 0.1777), p("13", 0.1260), p("22", 0.2212), p("20", 0.1975), ),
  ("", "TOTAL not yet", p("55", 0.5461), p("64", 0.6423), p("53", 0.5255), p("43", 0.4264), ),
  ("", "NET realized", n("−37", -0.3683), n("−52", -0.5163), n("−30", -0.3043), n("−23", -0.2288), ),
))

#heading(level: 3, "By Age")
#xtab(("Item", "Metric", ), ("Total", "18–34", "35–49", "50–64", "65+", ), ("1080", "240", "257", "257", "326", ), (
  ("Saving time", "TOTAL realized", p("46", 0.4569), p("52", 0.5216), p("50", 0.4955), p("47", 0.4676), p("33", 0.3310), ),
  ("", "TOTAL not yet", p("32", 0.3215), p("33", 0.3270), p("32", 0.3197), p("32", 0.3165), p("32", 0.3215), ),
  ("", "NET realized", n("14", 0.1354), n("19", 0.1947), n("18", 0.1758), n("15", 0.1511), n("1", 0.0096), ),
  ("Pressured to do more", "TOTAL realized", p("43", 0.4319), p("51", 0.5094), p("49", 0.4949), p("42", 0.4241), p("28", 0.2834), ),
  ("", "TOTAL not yet", p("34", 0.3382), p("33", 0.3287), p("34", 0.3354), p("31", 0.3111), p("38", 0.3775), ),
  ("", "NET realized", n("9", 0.0937), n("18", 0.1808), n("16", 0.1595), n("11", 0.1130), n("−9", -0.0940), ),
  ("Losing connections", "TOTAL realized", p("57", 0.5676), p("58", 0.5818), p("64", 0.6419), p("58", 0.5766), p("47", 0.4671), ),
  ("", "TOTAL not yet", p("25", 0.2535), p("27", 0.2663), p("24", 0.2370), p("22", 0.2184), p("29", 0.2878), ),
  ("", "NET realized", n("31", 0.3141), n("32", 0.3155), n("40", 0.4049), n("36", 0.3582), n("18", 0.1793), ),
  ("Real vs. fake", "TOTAL realized", p("82", 0.8179), p("81", 0.8085), p("82", 0.8191), p("83", 0.8271), p("82", 0.8195), ),
  ("", "TOTAL not yet", p("10", 0.1002), p("12", 0.1200), p("11", 0.1138), p("9", 0.0922), p("7", 0.0705), ),
  ("", "NET realized", n("72", 0.7177), n("69", 0.6885), n("71", 0.7052), n("73", 0.7349), n("75", 0.7491), ),
  ("Better health care", "TOTAL realized", p("18", 0.1777), p("24", 0.2449), p("14", 0.1388), p("14", 0.1405), p("17", 0.1722), ),
  ("", "TOTAL not yet", p("55", 0.5461), p("52", 0.5200), p("58", 0.5830), p("60", 0.5951), p("49", 0.4939), ),
  ("", "NET realized", n("−37", -0.3683), n("−28", -0.2751), n("−44", -0.4442), n("−45", -0.4546), n("−32", -0.3217), ),
))

#heading(level: 3, "By Ethnicity")
#xtab(("Item", "Metric", ), ("Total", "White", "Black", "Hispanic", ), ("1080", "667", "118", "162", ), (
  ("Saving time", "TOTAL realized", p("46", 0.4569), p("46", 0.4576), p("46", 0.4574), p("38", 0.3836), ),
  ("", "TOTAL not yet", p("32", 0.3215), p("32", 0.3197), p("27", 0.2719), p("37", 0.3691), ),
  ("", "NET realized", n("14", 0.1354), n("14", 0.1379), n("19", 0.1855), n("1", 0.0145), ),
  ("Pressured to do more", "TOTAL realized", p("43", 0.4319), p("42", 0.4208), p("42", 0.4235), p("38", 0.3824), ),
  ("", "TOTAL not yet", p("34", 0.3382), p("34", 0.3389), p("34", 0.3401), p("35", 0.3542), ),
  ("", "NET realized", n("9", 0.0937), n("8", 0.0818), n("8", 0.0834), n("3", 0.0281), ),
  ("Losing connections", "TOTAL realized", p("57", 0.5676), p("59", 0.5914), p("46", 0.4612), p("48", 0.4838), ),
  ("", "TOTAL not yet", p("25", 0.2535), p("22", 0.2184), p("32", 0.3193), p("34", 0.3423), ),
  ("", "NET realized", n("31", 0.3141), n("37", 0.3730), n("14", 0.1419), n("14", 0.1414), ),
  ("Real vs. fake", "TOTAL realized", p("82", 0.8179), p("84", 0.8402), p("76", 0.7569), p("77", 0.7721), ),
  ("", "TOTAL not yet", p("10", 0.1002), p("7", 0.0716), p("17", 0.1686), p("14", 0.1428), ),
  ("", "NET realized", n("72", 0.7177), n("77", 0.7685), n("59", 0.5884), n("63", 0.6293), ),
  ("Better health care", "TOTAL realized", p("18", 0.1777), p("13", 0.1345), p("29", 0.2924), p("18", 0.1839), ),
  ("", "TOTAL not yet", p("55", 0.5461), p("58", 0.5822), p("45", 0.4459), p("49", 0.4869), ),
  ("", "NET realized", n("−37", -0.3683), n("−45", -0.4476), n("−15", -0.1536), n("−30", -0.3030), ),
))

#heading(level: 3, "By Education")
#xtab(("Item", "Metric", ), ("Total", "HS or less", "Some college", "BA+", ), ("1080", "276", "380", "424", ), (
  ("Saving time", "TOTAL realized", p("46", 0.4569), p("41", 0.4050), p("39", 0.3857), p("56", 0.5588), ),
  ("", "TOTAL not yet", p("32", 0.3215), p("33", 0.3308), p("36", 0.3565), p("29", 0.2874), ),
  ("", "NET realized", n("14", 0.1354), n("7", 0.0742), n("3", 0.0291), n("27", 0.2714), ),
  ("Pressured to do more", "TOTAL realized", p("43", 0.4319), p("42", 0.4168), p("40", 0.4017), p("47", 0.4683), ),
  ("", "TOTAL not yet", p("34", 0.3382), p("32", 0.3169), p("35", 0.3524), p("35", 0.3491), ),
  ("", "NET realized", n("9", 0.0937), n("10", 0.0999), n("5", 0.0493), n("12", 0.1192), ),
  ("Losing connections", "TOTAL realized", p("57", 0.5676), p("55", 0.5545), p("49", 0.4851), p("64", 0.6393), ),
  ("", "TOTAL not yet", p("25", 0.2535), p("26", 0.2616), p("31", 0.3095), p("21", 0.2058), ),
  ("", "NET realized", n("31", 0.3141), n("29", 0.2929), n("18", 0.1757), n("43", 0.4335), ),
  ("Real vs. fake", "TOTAL realized", p("82", 0.8179), p("74", 0.7395), p("83", 0.8342), p("88", 0.8839), ),
  ("", "TOTAL not yet", p("10", 0.1002), p("15", 0.1468), p("8", 0.0784), p("7", 0.0696), ),
  ("", "NET realized", n("72", 0.7177), n("59", 0.5927), n("76", 0.7558), n("81", 0.8142), ),
  ("Better health care", "TOTAL realized", p("18", 0.1777), p("20", 0.1989), p("19", 0.1905), p("15", 0.1477), ),
  ("", "TOTAL not yet", p("55", 0.5461), p("49", 0.4937), p("50", 0.4977), p("63", 0.6322), ),
  ("", "NET realized", n("−37", -0.3683), n("−29", -0.2948), n("−31", -0.3072), n("−48", -0.4845), ),
))

#heading(level: 3, "By Household income")
#xtab(("Item", "Metric", ), ("Total", "<50k", "50k-<100k", "100k+", ), ("1080", "362", "341", "377", ), (
  ("Saving time", "TOTAL realized", p("46", 0.4569), p("35", 0.3502), p("51", 0.5050), p("53", 0.5335), ),
  ("", "TOTAL not yet", p("32", 0.3215), p("34", 0.3420), p("35", 0.3524), p("27", 0.2726), ),
  ("", "NET realized", n("14", 0.1354), n("1", 0.0083), n("15", 0.1526), n("26", 0.2609), ),
  ("Pressured to do more", "TOTAL realized", p("43", 0.4319), p("40", 0.3988), p("50", 0.4981), p("41", 0.4121), ),
  ("", "TOTAL not yet", p("34", 0.3382), p("30", 0.3003), p("33", 0.3286), p("39", 0.3881), ),
  ("", "NET realized", n("9", 0.0937), n("10", 0.0985), n("17", 0.1694), n("2", 0.0240), ),
  ("Losing connections", "TOTAL realized", p("57", 0.5676), p("56", 0.5604), p("54", 0.5402), p("60", 0.5988), ),
  ("", "TOTAL not yet", p("25", 0.2535), p("23", 0.2320), p("29", 0.2866), p("25", 0.2492), ),
  ("", "NET realized", n("31", 0.3141), n("33", 0.3284), n("25", 0.2536), n("35", 0.3497), ),
  ("Real vs. fake", "TOTAL realized", p("82", 0.8179), p("74", 0.7371), p("87", 0.8684), p("86", 0.8641), ),
  ("", "TOTAL not yet", p("10", 0.1002), p("14", 0.1384), p("7", 0.0688), p("8", 0.0848), ),
  ("", "NET realized", n("72", 0.7177), n("60", 0.5987), n("80", 0.7996), n("78", 0.7794), ),
  ("Better health care", "TOTAL realized", p("18", 0.1777), p("16", 0.1611), p("17", 0.1732), p("20", 0.1999), ),
  ("", "TOTAL not yet", p("55", 0.5461), p("49", 0.4893), p("61", 0.6094), p("55", 0.5547), ),
  ("", "NET realized", n("−37", -0.3683), n("−33", -0.3282), n("−44", -0.4362), n("−35", -0.3548), ),
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
#xtab(("Item", "Metric", ), ("Total", "Female", "Male", ), ("1080", "554", "526", ), (
  ("Jobs", "TOTAL better", p("10", 0.1044), p("9", 0.0949), p("11", 0.1146), ),
  ("", "TOTAL worse", p("74", 0.7439), p("76", 0.7647), p("72", 0.7215), ),
  ("", "NET worse", n("64", 0.6395), n("67", 0.6698), n("61", 0.6069), ),
  ("Future", "TOTAL better", p("30", 0.3024), p("27", 0.2666), p("34", 0.3409), ),
  ("", "TOTAL worse", p("55", 0.5467), p("57", 0.5743), p("52", 0.5170), ),
  ("", "NET worse", n("24", 0.2443), n("31", 0.3077), n("18", 0.1760), ),
  ("Children", "TOTAL better", p("19", 0.1893), p("17", 0.1739), p("21", 0.2059), ),
  ("", "TOTAL worse", p("63", 0.6313), p("63", 0.6250), p("64", 0.6380), ),
  ("", "NET worse", n("44", 0.4420), n("45", 0.4511), n("43", 0.4321), ),
  ("Finances", "TOTAL better", p("26", 0.2625), p("22", 0.2155), p("31", 0.3131), ),
  ("", "TOTAL worse", p("41", 0.4137), p("46", 0.4557), p("37", 0.3686), ),
  ("", "NET worse", n("15", 0.1512), n("24", 0.2403), n("6", 0.0555), ),
))

#heading(level: 3, "By Party")
#xtab(("Item", "Metric", ), ("Total", "Dem", "Rep", "Ind", ), ("1080", "499", "375", "201", ), (
  ("Jobs", "TOTAL better", p("10", 0.1044), p("7", 0.0712), p("11", 0.1116), p("15", 0.1482), ),
  ("", "TOTAL worse", p("74", 0.7439), p("83", 0.8259), p("71", 0.7118), p("67", 0.6690), ),
  ("", "NET worse", n("64", 0.6395), n("75", 0.7547), n("60", 0.6001), n("52", 0.5209), ),
  ("Future", "TOTAL better", p("30", 0.3024), p("24", 0.2367), p("39", 0.3880), p("28", 0.2830), ),
  ("", "TOTAL worse", p("55", 0.5467), p("66", 0.6571), p("43", 0.4318), p("55", 0.5527), ),
  ("", "NET worse", n("24", 0.2443), n("42", 0.4203), n("4", 0.0438), n("27", 0.2697), ),
  ("Children", "TOTAL better", p("19", 0.1893), p("12", 0.1247), p("24", 0.2386), p("22", 0.2210), ),
  ("", "TOTAL worse", p("63", 0.6313), p("71", 0.7118), p("59", 0.5918), p("57", 0.5675), ),
  ("", "NET worse", n("44", 0.4420), n("59", 0.5870), n("35", 0.3532), n("35", 0.3466), ),
  ("Finances", "TOTAL better", p("26", 0.2625), p("20", 0.2008), p("33", 0.3274), p("26", 0.2628), ),
  ("", "TOTAL worse", p("41", 0.4137), p("45", 0.4465), p("36", 0.3592), p("45", 0.4496), ),
  ("", "NET worse", n("15", 0.1512), n("25", 0.2457), n("3", 0.0318), n("19", 0.1868), ),
))

#heading(level: 3, "By Age")
#xtab(("Item", "Metric", ), ("Total", "18–34", "35–49", "50–64", "65+", ), ("1080", "240", "257", "257", "326", ), (
  ("Jobs", "TOTAL better", p("10", 0.1044), p("14", 0.1403), p("13", 0.1270), p("10", 0.0980), p("4", 0.0448), ),
  ("", "TOTAL worse", p("74", 0.7439), p("75", 0.7514), p("78", 0.7832), p("70", 0.6973), p("74", 0.7385), ),
  ("", "NET worse", n("64", 0.6395), n("61", 0.6111), n("66", 0.6562), n("60", 0.5993), n("69", 0.6937), ),
  ("Future", "TOTAL better", p("30", 0.3024), p("31", 0.3136), p("33", 0.3267), p("27", 0.2656), p("30", 0.2989), ),
  ("", "TOTAL worse", p("55", 0.5467), p("59", 0.5873), p("57", 0.5715), p("54", 0.5371), p("48", 0.4822), ),
  ("", "NET worse", n("24", 0.2443), n("27", 0.2737), n("24", 0.2449), n("27", 0.2716), n("18", 0.1833), ),
  ("Children", "TOTAL better", p("19", 0.1893), p("24", 0.2403), p("19", 0.1858), p("13", 0.1335), p("18", 0.1843), ),
  ("", "TOTAL worse", p("63", 0.6313), p("63", 0.6267), p("71", 0.7130), p("62", 0.6220), p("56", 0.5626), ),
  ("", "NET worse", n("44", 0.4420), n("39", 0.3863), n("53", 0.5271), n("49", 0.4885), n("38", 0.3783), ),
  ("Finances", "TOTAL better", p("26", 0.2625), p("28", 0.2753), p("29", 0.2874), p("21", 0.2121), p("27", 0.2692), ),
  ("", "TOTAL worse", p("41", 0.4137), p("46", 0.4574), p("47", 0.4728), p("41", 0.4067), p("31", 0.3087), ),
  ("", "NET worse", n("15", 0.1512), n("18", 0.1821), n("19", 0.1854), n("19", 0.1946), n("4", 0.0395), ),
))

#heading(level: 3, "By Ethnicity")
#xtab(("Item", "Metric", ), ("Total", "White", "Black", "Hispanic", ), ("1080", "667", "118", "162", ), (
  ("Jobs", "TOTAL better", p("10", 0.1044), p("8", 0.0813), p("12", 0.1242), p("11", 0.1089), ),
  ("", "TOTAL worse", p("74", 0.7439), p("76", 0.7596), p("75", 0.7468), p("72", 0.7244), ),
  ("", "NET worse", n("64", 0.6395), n("68", 0.6783), n("62", 0.6227), n("62", 0.6154), ),
  ("Future", "TOTAL better", p("30", 0.3024), p("27", 0.2717), p("31", 0.3076), p("32", 0.3204), ),
  ("", "TOTAL worse", p("55", 0.5467), p("57", 0.5689), p("59", 0.5854), p("48", 0.4792), ),
  ("", "NET worse", n("24", 0.2443), n("30", 0.2971), n("28", 0.2779), n("16", 0.1588), ),
  ("Children", "TOTAL better", p("19", 0.1893), p("15", 0.1461), p("25", 0.2492), p("21", 0.2087), ),
  ("", "TOTAL worse", p("63", 0.6313), p("68", 0.6775), p("57", 0.5654), p("57", 0.5667), ),
  ("", "NET worse", n("44", 0.4420), n("53", 0.5314), n("32", 0.3162), n("36", 0.3580), ),
  ("Finances", "TOTAL better", p("26", 0.2625), p("24", 0.2379), p("23", 0.2251), p("27", 0.2717), ),
  ("", "TOTAL worse", p("41", 0.4137), p("41", 0.4066), p("50", 0.4973), p("42", 0.4188), ),
  ("", "NET worse", n("15", 0.1512), n("17", 0.1687), n("27", 0.2723), n("15", 0.1472), ),
))

#heading(level: 3, "By Education")
#xtab(("Item", "Metric", ), ("Total", "HS or less", "Some college", "BA+", ), ("1080", "276", "380", "424", ), (
  ("Jobs", "TOTAL better", p("10", 0.1044), p("9", 0.0861), p("14", 0.1388), p("10", 0.0979), ),
  ("", "TOTAL worse", p("74", 0.7439), p("72", 0.7169), p("69", 0.6940), p("81", 0.8060), ),
  ("", "NET worse", n("64", 0.6395), n("63", 0.6308), n("56", 0.5552), n("71", 0.7081), ),
  ("Future", "TOTAL better", p("30", 0.3024), p("27", 0.2722), p("27", 0.2695), p("36", 0.3557), ),
  ("", "TOTAL worse", p("55", 0.5467), p("55", 0.5513), p("53", 0.5282), p("56", 0.5552), ),
  ("", "NET worse", n("24", 0.2443), n("28", 0.2791), n("26", 0.2586), n("20", 0.1995), ),
  ("Children", "TOTAL better", p("19", 0.1893), p("17", 0.1666), p("20", 0.2045), p("20", 0.2009), ),
  ("", "TOTAL worse", p("63", 0.6313), p("61", 0.6122), p("57", 0.5733), p("69", 0.6913), ),
  ("", "NET worse", n("44", 0.4420), n("45", 0.4455), n("37", 0.3688), n("49", 0.4904), ),
  ("Finances", "TOTAL better", p("26", 0.2625), p("23", 0.2347), p("24", 0.2364), p("31", 0.3086), ),
  ("", "TOTAL worse", p("41", 0.4137), p("44", 0.4364), p("38", 0.3831), p("41", 0.4132), ),
  ("", "NET worse", n("15", 0.1512), n("20", 0.2017), n("15", 0.1467), n("10", 0.1046), ),
))

#heading(level: 3, "By Household income")
#xtab(("Item", "Metric", ), ("Total", "<50k", "50k-<100k", "100k+", ), ("1080", "362", "341", "377", ), (
  ("Jobs", "TOTAL better", p("10", 0.1044), p("13", 0.1328), p("9", 0.0862), p("9", 0.0885), ),
  ("", "TOTAL worse", p("74", 0.7439), p("67", 0.6683), p("78", 0.7784), p("80", 0.7979), ),
  ("", "NET worse", n("64", 0.6395), n("54", 0.5355), n("69", 0.6922), n("71", 0.7093), ),
  ("Future", "TOTAL better", p("30", 0.3024), p("27", 0.2695), p("31", 0.3129), p("33", 0.3297), ),
  ("", "TOTAL worse", p("55", 0.5467), p("54", 0.5368), p("55", 0.5537), p("55", 0.5515), ),
  ("", "NET worse", n("24", 0.2443), n("27", 0.2673), n("24", 0.2408), n("22", 0.2218), ),
  ("Children", "TOTAL better", p("19", 0.1893), p("21", 0.2119), p("17", 0.1667), p("18", 0.1836), ),
  ("", "TOTAL worse", p("63", 0.6313), p("56", 0.5571), p("65", 0.6503), p("70", 0.6969), ),
  ("", "NET worse", n("44", 0.4420), n("35", 0.3453), n("48", 0.4835), n("51", 0.5132), ),
  ("Finances", "TOTAL better", p("26", 0.2625), p("25", 0.2466), p("28", 0.2753), p("27", 0.2693), ),
  ("", "TOTAL worse", p("41", 0.4137), p("43", 0.4275), p("43", 0.4263), p("39", 0.3879), ),
  ("", "NET worse", n("15", 0.1512), n("18", 0.1809), n("15", 0.1511), n("12", 0.1186), ),
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
#xtab(("Item", "Metric", ), ("Total", "Female", "Male", ), ("1080", "554", "526", ), (
  ("Children", "TOTAL too much", p("24", 0.2436), p("30", 0.2994), p("18", 0.1838), ),
  ("", "TOTAL too little", p("43", 0.4255), p("39", 0.3879), p("47", 0.4660), ),
  ("", "NET too little", n("18", 0.1819), n("9", 0.0885), n("28", 0.2822), ),
  ("Environment", "TOTAL too much", p("24", 0.2358), p("26", 0.2636), p("21", 0.2059), ),
  ("", "TOTAL too little", p("43", 0.4268), p("39", 0.3933), p("46", 0.4627), ),
  ("", "NET too little", n("19", 0.1910), n("13", 0.1297), n("26", 0.2568), ),
  ("Workers", "TOTAL too much", p("22", 0.2165), p("26", 0.2555), p("17", 0.1745), ),
  ("", "TOTAL too little", p("42", 0.4223), p("37", 0.3748), p("47", 0.4734), ),
  ("", "NET too little", n("21", 0.2059), n("12", 0.1193), n("30", 0.2989), ),
  ("Competitiveness", "TOTAL too much", p("20", 0.1953), p("24", 0.2427), p("14", 0.1444), ),
  ("", "TOTAL too little", p("33", 0.3324), p("28", 0.2848), p("38", 0.3836), ),
  ("", "NET too little", n("14", 0.1371), n("4", 0.0421), n("24", 0.2392), ),
))

#heading(level: 3, "By Party")
#xtab(("Item", "Metric", ), ("Total", "Dem", "Rep", "Ind", ), ("1080", "499", "375", "201", ), (
  ("Children", "TOTAL too much", p("24", 0.2436), p("19", 0.1904), p("26", 0.2594), p("31", 0.3094), ),
  ("", "TOTAL too little", p("43", 0.4255), p("58", 0.5768), p("33", 0.3277), p("34", 0.3372), ),
  ("", "NET too little", n("18", 0.1819), n("39", 0.3864), n("7", 0.0683), n("3", 0.0278), ),
  ("Environment", "TOTAL too much", p("24", 0.2358), p("22", 0.2164), p("24", 0.2373), p("27", 0.2693), ),
  ("", "TOTAL too little", p("43", 0.4268), p("60", 0.5982), p("32", 0.3210), p("32", 0.3205), ),
  ("", "NET too little", n("19", 0.1910), n("38", 0.3819), n("8", 0.0838), n("5", 0.0512), ),
  ("Workers", "TOTAL too much", p("22", 0.2165), p("19", 0.1916), p("21", 0.2124), p("27", 0.2666), ),
  ("", "TOTAL too little", p("42", 0.4223), p("56", 0.5571), p("33", 0.3293), p("36", 0.3581), ),
  ("", "NET too little", n("21", 0.2059), n("37", 0.3656), n("12", 0.1170), n("9", 0.0915), ),
  ("Competitiveness", "TOTAL too much", p("20", 0.1953), p("17", 0.1700), p("18", 0.1788), p("26", 0.2599), ),
  ("", "TOTAL too little", p("33", 0.3324), p("42", 0.4193), p("27", 0.2690), p("30", 0.2976), ),
  ("", "NET too little", n("14", 0.1371), n("25", 0.2493), n("9", 0.0902), n("4", 0.0377), ),
))

#heading(level: 3, "By Age")
#xtab(("Item", "Metric", ), ("Total", "18–34", "35–49", "50–64", "65+", ), ("1080", "240", "257", "257", "326", ), (
  ("Children", "TOTAL too much", p("24", 0.2436), p("27", 0.2729), p("30", 0.3010), p("20", 0.2028), p("19", 0.1890), ),
  ("", "TOTAL too little", p("43", 0.4255), p("42", 0.4174), p("39", 0.3911), p("41", 0.4102), p("48", 0.4843), ),
  ("", "NET too little", n("18", 0.1819), n("14", 0.1446), n("9", 0.0900), n("21", 0.2074), n("30", 0.2953), ),
  ("Environment", "TOTAL too much", p("24", 0.2358), p("23", 0.2294), p("27", 0.2722), p("20", 0.2042), p("24", 0.2360), ),
  ("", "TOTAL too little", p("43", 0.4268), p("47", 0.4666), p("40", 0.4041), p("39", 0.3887), p("44", 0.4380), ),
  ("", "NET too little", n("19", 0.1910), n("24", 0.2373), n("13", 0.1319), n("18", 0.1846), n("20", 0.2020), ),
  ("Workers", "TOTAL too much", p("22", 0.2165), p("21", 0.2077), p("28", 0.2836), p("19", 0.1948), p("18", 0.1790), ),
  ("", "TOTAL too little", p("42", 0.4223), p("42", 0.4231), p("40", 0.4033), p("40", 0.4016), p("46", 0.4599), ),
  ("", "NET too little", n("21", 0.2059), n("22", 0.2154), n("12", 0.1197), n("21", 0.2068), n("28", 0.2809), ),
  ("Competitiveness", "TOTAL too much", p("20", 0.1953), p("23", 0.2311), p("25", 0.2480), p("14", 0.1439), p("15", 0.1474), ),
  ("", "TOTAL too little", p("33", 0.3324), p("30", 0.2969), p("32", 0.3232), p("32", 0.3236), p("39", 0.3921), ),
  ("", "NET too little", n("14", 0.1371), n("7", 0.0658), n("8", 0.0752), n("18", 0.1797), n("24", 0.2447), ),
))

#heading(level: 3, "By Ethnicity")
#xtab(("Item", "Metric", ), ("Total", "White", "Black", "Hispanic", ), ("1080", "667", "118", "162", ), (
  ("Children", "TOTAL too much", p("24", 0.2436), p("22", 0.2248), p("25", 0.2508), p("29", 0.2911), ),
  ("", "TOTAL too little", p("43", 0.4255), p("45", 0.4509), p("42", 0.4151), p("34", 0.3384), ),
  ("", "NET too little", n("18", 0.1819), n("23", 0.2261), n("16", 0.1643), n("5", 0.0473), ),
  ("Environment", "TOTAL too much", p("24", 0.2358), p("23", 0.2268), p("28", 0.2800), p("26", 0.2574), ),
  ("", "TOTAL too little", p("43", 0.4268), p("44", 0.4441), p("42", 0.4191), p("38", 0.3828), ),
  ("", "NET too little", n("19", 0.1910), n("22", 0.2173), n("14", 0.1391), n("13", 0.1254), ),
  ("Workers", "TOTAL too much", p("22", 0.2165), p("21", 0.2052), p("27", 0.2653), p("22", 0.2239), ),
  ("", "TOTAL too little", p("42", 0.4223), p("45", 0.4494), p("38", 0.3769), p("35", 0.3483), ),
  ("", "NET too little", n("21", 0.2059), n("24", 0.2442), n("11", 0.1117), n("12", 0.1244), ),
  ("Competitiveness", "TOTAL too much", p("20", 0.1953), p("17", 0.1721), p("21", 0.2114), p("23", 0.2314), ),
  ("", "TOTAL too little", p("33", 0.3324), p("33", 0.3304), p("36", 0.3566), p("32", 0.3237), ),
  ("", "NET too little", n("14", 0.1371), n("16", 0.1583), n("15", 0.1451), n("9", 0.0922), ),
))

#heading(level: 3, "By Education")
#xtab(("Item", "Metric", ), ("Total", "HS or less", "Some college", "BA+", ), ("1080", "276", "380", "424", ), (
  ("Children", "TOTAL too much", p("24", 0.2436), p("29", 0.2932), p("25", 0.2452), p("19", 0.1936), ),
  ("", "TOTAL too little", p("43", 0.4255), p("33", 0.3338), p("39", 0.3866), p("54", 0.5439), ),
  ("", "NET too little", n("18", 0.1819), n("4", 0.0406), n("14", 0.1414), n("35", 0.3503), ),
  ("Environment", "TOTAL too much", p("24", 0.2358), p("28", 0.2758), p("25", 0.2493), p("19", 0.1866), ),
  ("", "TOTAL too little", p("43", 0.4268), p("35", 0.3481), p("40", 0.3984), p("52", 0.5248), ),
  ("", "NET too little", n("19", 0.1910), n("7", 0.0723), n("15", 0.1491), n("34", 0.3382), ),
  ("Workers", "TOTAL too much", p("22", 0.2165), p("27", 0.2732), p("18", 0.1807), p("19", 0.1858), ),
  ("", "TOTAL too little", p("42", 0.4223), p("35", 0.3547), p("41", 0.4065), p("50", 0.5004), ),
  ("", "NET too little", n("21", 0.2059), n("8", 0.0815), n("23", 0.2258), n("31", 0.3147), ),
  ("Competitiveness", "TOTAL too much", p("20", 0.1953), p("23", 0.2284), p("22", 0.2158), p("15", 0.1480), ),
  ("", "TOTAL too little", p("33", 0.3324), p("28", 0.2806), p("32", 0.3170), p("39", 0.3945), ),
  ("", "NET too little", n("14", 0.1371), n("5", 0.0523), n("10", 0.1012), n("25", 0.2465), ),
))

#heading(level: 3, "By Household income")
#xtab(("Item", "Metric", ), ("Total", "<50k", "50k-<100k", "100k+", ), ("1080", "362", "341", "377", ), (
  ("Children", "TOTAL too much", p("24", 0.2436), p("30", 0.2951), p("25", 0.2462), p("18", 0.1847), ),
  ("", "TOTAL too little", p("43", 0.4255), p("32", 0.3222), p("45", 0.4521), p("52", 0.5169), ),
  ("", "NET too little", n("18", 0.1819), n("3", 0.0271), n("21", 0.2059), n("33", 0.3322), ),
  ("Environment", "TOTAL too much", p("24", 0.2358), p("26", 0.2569), p("24", 0.2440), p("21", 0.2056), ),
  ("", "TOTAL too little", p("43", 0.4268), p("33", 0.3327), p("44", 0.4418), p("52", 0.5177), ),
  ("", "NET too little", n("19", 0.1910), n("8", 0.0758), n("20", 0.1979), n("31", 0.3122), ),
  ("Workers", "TOTAL too much", p("22", 0.2165), p("23", 0.2338), p("25", 0.2465), p("17", 0.1717), ),
  ("", "TOTAL too little", p("42", 0.4223), p("35", 0.3456), p("43", 0.4329), p("50", 0.4979), ),
  ("", "NET too little", n("21", 0.2059), n("11", 0.1118), n("19", 0.1864), n("33", 0.3262), ),
  ("Competitiveness", "TOTAL too much", p("20", 0.1953), p("22", 0.2220), p("21", 0.2119), p("15", 0.1517), ),
  ("", "TOTAL too little", p("33", 0.3324), p("29", 0.2918), p("31", 0.3067), p("40", 0.3991), ),
  ("", "NET too little", n("14", 0.1371), n("7", 0.0697), n("9", 0.0948), n("25", 0.2474), ),
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
#xtab(("Item", "Metric", ), ("Total", "Female", "Male", ), ("1080", "554", "526", ), (
  ("Superintelligence", "TOTAL likely", p("68", 0.6836), p("67", 0.6698), p("70", 0.6985), ),
  ("", "TOTAL unlikely", p("16", 0.1637), p("16", 0.1590), p("17", 0.1687), ),
  ("", "NET likely", n("52", 0.5199), n("51", 0.5108), n("53", 0.5298), ),
  ("Loss-of-control", "TOTAL likely", p("78", 0.7777), p("77", 0.7691), p("79", 0.7869), ),
  ("", "TOTAL unlikely", p("8", 0.0824), p("7", 0.0685), p("10", 0.0974), ),
  ("", "NET likely", n("70", 0.6953), n("70", 0.7007), n("69", 0.6895), ),
  ("Breakthroughs", "TOTAL likely", p("63", 0.6340), p("62", 0.6234), p("65", 0.6454), ),
  ("", "TOTAL unlikely", p("17", 0.1716), p("16", 0.1604), p("18", 0.1837), ),
  ("", "NET likely", n("46", 0.4624), n("46", 0.4630), n("46", 0.4618), ),
  ("WMDs", "TOTAL likely", p("68", 0.6757), p("68", 0.6848), p("67", 0.6658), ),
  ("", "TOTAL unlikely", p("11", 0.1138), p("10", 0.0988), p("13", 0.1300), ),
  ("", "NET likely", n("56", 0.5619), n("59", 0.5860), n("54", 0.5359), ),
))

#heading(level: 3, "By Party")
#xtab(("Item", "Metric", ), ("Total", "Dem", "Rep", "Ind", ), ("1080", "499", "375", "201", ), (
  ("Superintelligence", "TOTAL likely", p("68", 0.6836), p("66", 0.6572), p("72", 0.7201), p("68", 0.6836), ),
  ("", "TOTAL unlikely", p("16", 0.1637), p("19", 0.1916), p("14", 0.1440), p("15", 0.1513), ),
  ("", "NET likely", n("52", 0.5199), n("47", 0.4656), n("58", 0.5761), n("53", 0.5323), ),
  ("Loss-of-control", "TOTAL likely", p("78", 0.7777), p("83", 0.8315), p("76", 0.7597), p("73", 0.7269), ),
  ("", "TOTAL unlikely", p("8", 0.0824), p("8", 0.0773), p("8", 0.0795), p("10", 0.0954), ),
  ("", "NET likely", n("70", 0.6953), n("75", 0.7543), n("68", 0.6802), n("63", 0.6315), ),
  ("Breakthroughs", "TOTAL likely", p("63", 0.6340), p("59", 0.5896), p("70", 0.6998), p("62", 0.6172), ),
  ("", "TOTAL unlikely", p("17", 0.1716), p("22", 0.2179), p("12", 0.1156), p("19", 0.1852), ),
  ("", "NET likely", n("46", 0.4624), n("37", 0.3717), n("58", 0.5842), n("43", 0.4320), ),
  ("WMDs", "TOTAL likely", p("68", 0.6757), p("70", 0.7039), p("65", 0.6533), p("68", 0.6780), ),
  ("", "TOTAL unlikely", p("11", 0.1138), p("12", 0.1162), p("12", 0.1224), p("10", 0.0978), ),
  ("", "NET likely", n("56", 0.5619), n("59", 0.5877), n("53", 0.5309), n("58", 0.5801), ),
))

#heading(level: 3, "By Age")
#xtab(("Item", "Metric", ), ("Total", "18–34", "35–49", "50–64", "65+", ), ("1080", "240", "257", "257", "326", ), (
  ("Superintelligence", "TOTAL likely", p("68", 0.6836), p("67", 0.6741), p("69", 0.6920), p("69", 0.6925), p("68", 0.6781), ),
  ("", "TOTAL unlikely", p("16", 0.1637), p("21", 0.2108), p("18", 0.1761), p("12", 0.1192), p("14", 0.1367), ),
  ("", "NET likely", n("52", 0.5199), n("46", 0.4633), n("52", 0.5159), n("57", 0.5732), n("54", 0.5414), ),
  ("Loss-of-control", "TOTAL likely", p("78", 0.7777), p("78", 0.7829), p("79", 0.7896), p("74", 0.7351), p("80", 0.7991), ),
  ("", "TOTAL unlikely", p("8", 0.0824), p("11", 0.1119), p("10", 0.1016), p("7", 0.0685), p("4", 0.0410), ),
  ("", "NET likely", n("70", 0.6953), n("67", 0.6709), n("69", 0.6880), n("67", 0.6666), n("76", 0.7581), ),
  ("Breakthroughs", "TOTAL likely", p("63", 0.6340), p("56", 0.5583), p("65", 0.6476), p("65", 0.6476), p("70", 0.6972), ),
  ("", "TOTAL unlikely", p("17", 0.1716), p("27", 0.2692), p("18", 0.1823), p("12", 0.1154), p("10", 0.0974), ),
  ("", "NET likely", n("46", 0.4624), n("29", 0.2892), n("47", 0.4653), n("53", 0.5321), n("60", 0.5998), ),
  ("WMDs", "TOTAL likely", p("68", 0.6757), p("67", 0.6740), p("73", 0.7307), p("62", 0.6209), p("67", 0.6729), ),
  ("", "TOTAL unlikely", p("11", 0.1138), p("15", 0.1484), p("11", 0.1132), p("13", 0.1281), p("6", 0.0601), ),
  ("", "NET likely", n("56", 0.5619), n("53", 0.5256), n("62", 0.6175), n("49", 0.4928), n("61", 0.6128), ),
))

#heading(level: 3, "By Ethnicity")
#xtab(("Item", "Metric", ), ("Total", "White", "Black", "Hispanic", ), ("1080", "667", "118", "162", ), (
  ("Superintelligence", "TOTAL likely", p("68", 0.6836), p("69", 0.6850), p("67", 0.6722), p("61", 0.6096), ),
  ("", "TOTAL unlikely", p("16", 0.1637), p("17", 0.1723), p("13", 0.1314), p("18", 0.1764), ),
  ("", "NET likely", n("52", 0.5199), n("51", 0.5126), n("54", 0.5409), n("43", 0.4332), ),
  ("Loss-of-control", "TOTAL likely", p("78", 0.7777), p("81", 0.8054), p("74", 0.7431), p("70", 0.6981), ),
  ("", "TOTAL unlikely", p("8", 0.0824), p("7", 0.0658), p("13", 0.1252), p("8", 0.0842), ),
  ("", "NET likely", n("70", 0.6953), n("74", 0.7396), n("62", 0.6178), n("61", 0.6139), ),
  ("Breakthroughs", "TOTAL likely", p("63", 0.6340), p("65", 0.6490), p("62", 0.6170), p("51", 0.5115), ),
  ("", "TOTAL unlikely", p("17", 0.1716), p("17", 0.1711), p("22", 0.2194), p("18", 0.1831), ),
  ("", "NET likely", n("46", 0.4624), n("48", 0.4779), n("40", 0.3976), n("33", 0.3284), ),
  ("WMDs", "TOTAL likely", p("68", 0.6757), p("66", 0.6612), p("72", 0.7226), p("64", 0.6435), ),
  ("", "TOTAL unlikely", p("11", 0.1138), p("11", 0.1098), p("7", 0.0700), p("13", 0.1291), ),
  ("", "NET likely", n("56", 0.5619), n("55", 0.5514), n("65", 0.6526), n("51", 0.5144), ),
))

#heading(level: 3, "By Education")
#xtab(("Item", "Metric", ), ("Total", "HS or less", "Some college", "BA+", ), ("1080", "276", "380", "424", ), (
  ("Superintelligence", "TOTAL likely", p("68", 0.6836), p("66", 0.6631), p("66", 0.6579), p("72", 0.7221), ),
  ("", "TOTAL unlikely", p("16", 0.1637), p("16", 0.1607), p("14", 0.1430), p("18", 0.1814), ),
  ("", "NET likely", n("52", 0.5199), n("50", 0.5024), n("51", 0.5149), n("54", 0.5408), ),
  ("Loss-of-control", "TOTAL likely", p("78", 0.7777), p("73", 0.7315), p("76", 0.7639), p("83", 0.8331), ),
  ("", "TOTAL unlikely", p("8", 0.0824), p("10", 0.1031), p("7", 0.0707), p("7", 0.0704), ),
  ("", "NET likely", n("70", 0.6953), n("63", 0.6285), n("69", 0.6932), n("76", 0.7628), ),
  ("Breakthroughs", "TOTAL likely", p("63", 0.6340), p("57", 0.5732), p("66", 0.6615), p("67", 0.6746), ),
  ("", "TOTAL unlikely", p("17", 0.1716), p("20", 0.2049), p("13", 0.1321), p("17", 0.1668), ),
  ("", "NET likely", n("46", 0.4624), n("37", 0.3683), n("53", 0.5294), n("51", 0.5078), ),
  ("WMDs", "TOTAL likely", p("68", 0.6757), p("67", 0.6655), p("68", 0.6829), p("68", 0.6805), ),
  ("", "TOTAL unlikely", p("11", 0.1138), p("11", 0.1094), p("9", 0.0913), p("13", 0.1342), ),
  ("", "NET likely", n("56", 0.5619), n("56", 0.5561), n("59", 0.5916), n("55", 0.5463), ),
))

#heading(level: 3, "By Household income")
#xtab(("Item", "Metric", ), ("Total", "<50k", "50k-<100k", "100k+", ), ("1080", "362", "341", "377", ), (
  ("Superintelligence", "TOTAL likely", p("68", 0.6836), p("66", 0.6627), p("69", 0.6936), p("70", 0.6982), ),
  ("", "TOTAL unlikely", p("16", 0.1637), p("14", 0.1446), p("15", 0.1463), p("20", 0.1995), ),
  ("", "NET likely", n("52", 0.5199), n("52", 0.5181), n("55", 0.5472), n("50", 0.4987), ),
  ("Loss-of-control", "TOTAL likely", p("78", 0.7777), p("71", 0.7133), p("82", 0.8224), p("81", 0.8107), ),
  ("", "TOTAL unlikely", p("8", 0.0824), p("7", 0.0748), p("6", 0.0559), p("11", 0.1134), ),
  ("", "NET likely", n("70", 0.6953), n("64", 0.6385), n("77", 0.7665), n("70", 0.6972), ),
  ("Breakthroughs", "TOTAL likely", p("63", 0.6340), p("61", 0.6101), p("62", 0.6181), p("67", 0.6740), ),
  ("", "TOTAL unlikely", p("17", 0.1716), p("15", 0.1506), p("17", 0.1713), p("20", 0.1950), ),
  ("", "NET likely", n("46", 0.4624), n("46", 0.4595), n("45", 0.4467), n("48", 0.4790), ),
  ("WMDs", "TOTAL likely", p("68", 0.6757), p("66", 0.6614), p("72", 0.7155), p("66", 0.6574), ),
  ("", "TOTAL unlikely", p("11", 0.1138), p("8", 0.0846), p("8", 0.0824), p("17", 0.1727), ),
  ("", "NET likely", n("56", 0.5619), n("58", 0.5768), n("63", 0.6331), n("48", 0.4847), ),
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

This is the fourth tracking wave of the *Americans on AI* survey, a
project of Athena Insights.

Respondents were interviewed between August 13 and 17, 2026 as part of NORC's
AmeriSpeak Omnibus. AmeriSpeak is a probability-based household panel
recruited by address-based sampling from the NORC National Frame, designed
to be representative of the US household population. Interviews were
conducted online (96%) and by phone (4%), in English; 1,080 adults
completed the module.

Results are weighted with NORC's vote-choice study weights. NORC first
adjusts the panel base weights for sample selection and nonresponse and
rakes to Current Population Survey benchmarks on age, sex, census
division, race/ethnicity, and education; a second round of raking then
adds 2024 presidential vote choice. The voter shares are benchmarked to
the 2024 election results. This yields a design effect of 1.83 and
an effective sample size of 589. This wave fields no oversamples:
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

Unweighted demographic composition of the achieved sample (n=1,080).

This wave fields no oversamples, so unweighted shares approximate population shares; the report's figures are weighted to NORC's Current Population Survey benchmarks (see the methodology). *Party* is profiled by NORC, not a weighting dimension of this module's design.

#comp(("Dimension", "Group", "n", "%", ), (
  ("Sex", "Female", "554", "51", ),
  ("", "Male", "526", "49", ),
  ("Party", "Dem", "499", "46", ),
  ("", "Rep", "375", "35", ),
  ("", "Ind", "201", "19", ),
  ("", "Unknown", "5", "0", ),
  ("Age", "18–34", "240", "22", ),
  ("", "35–49", "257", "24", ),
  ("", "50–64", "257", "24", ),
  ("", "65+", "326", "30", ),
  ("Ethnicity", "White", "667", "62", ),
  ("", "Black", "118", "11", ),
  ("", "Hispanic", "162", "15", ),
  ("", "Asian/PI", "85", "8", ),
  ("", "Two or more", "34", "3", ),
  ("", "Other", "14", "1", ),
  ("Education", "HS or less", "276", "26", ),
  ("", "Some college", "380", "35", ),
  ("", "BA+", "424", "39", ),
  ("Household income", "<50k", "362", "34", ),
  ("", "50k-<100k", "341", "32", ),
  ("", "100k+", "377", "35", ),
))
