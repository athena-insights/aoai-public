#import "/tracker-reports/report.typ": *
#show: report.with(title: "Americans on AI — 12 October 2026")

Athena Insights surveyed 1,057 US adults from October 8-12, 2026, via NORC's AmeriSpeak Panel, a probability-based panel designed to be representative of the US household population.

This release includes the results of that survey as a whole-sample topline, then as crosstabs broken out by subgroup, followed by appendices covering the questionnaire, methodology, and unweighted sample composition.

Results are weighted to US population benchmarks; the full-sample margin of error is ±4.1 percentage points at 95% confidence, accounting for the design effect of weighting. 

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
  ("Jobs", p("49", 0.4922), p("37", 0.3747), p("6", 0.0610), p("3", 0.0257), p("4", 0.0383), ),
  ("Inflation", p("71", 0.7132), p("20", 0.2049), p("2", 0.0242), p("1", 0.0146), p("4", 0.0366), ),
  ("AI harms", p("39", 0.3864), p("39", 0.3889), p("11", 0.1128), p("5", 0.0520), p("5", 0.0508), ),
  ("Immigration", p("36", 0.3564), p("37", 0.3656), p("16", 0.1621), p("7", 0.0684), p("4", 0.0434), ),
  ("Health care", p("62", 0.6209), p("28", 0.2757), p("5", 0.0476), p("2", 0.0169), p("3", 0.0307), ),
  ("Crime", p("44", 0.4431), p("40", 0.3993), p("9", 0.0876), p("3", 0.0269), p("3", 0.0315), ),
  ("Climate change", p("32", 0.3196), p("35", 0.3502), p("15", 0.1489), p("13", 0.1305), p("4", 0.0433), ),
))

#heading(level: 2, "Affect")

#stem("Thinking about AI's growing role in society, which of these options comes closest to how you feel, even if none are exactly right?")

#note[*Response distribution (weighted)* — % of all respondents. "No answer" (2% or less) is not shown.]
#dist(("Response", "%", ), (
  ("Very excited", p("5", 0.0451), ),
  ("Somewhat excited", p("17", 0.1658), ),
  ("Somewhat concerned", p("35", 0.3490), ),
  ("Very concerned", p("34", 0.3412), ),
  ("None of these are close to how I feel", p("9", 0.0894), ),
))

#heading(level: 2, "Agency")

#stem("Again, thinking about AI, which statement comes closer to your view, even if neither is exactly right?")

#note[*Response distribution (weighted)* — % of all respondents. "No answer" (2% or less) is not shown.]
#dist(("Response", "%", ), (
  ("People like me can shape how much AI is part of our lives", p("16", 0.1626), ),
  ("AI is coming into our lives whether we want it or not", p("67", 0.6744), ),
  ("Neither of these are close to how I feel", p("15", 0.1483), ),
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
  ("Saving time", p("22", 0.2236), p("29", 0.2854), p("15", 0.1466), p("14", 0.1373), p("19", 0.1918), ),
  ("Pressured to do more", p("25", 0.2480), p("26", 0.2591), p("19", 0.1931), p("9", 0.0941), p("19", 0.1875), ),
  ("Losing connections", p("35", 0.3490), p("25", 0.2530), p("14", 0.1397), p("10", 0.0956), p("15", 0.1471), ),
  ("Real vs. fake", p("53", 0.5283), p("27", 0.2734), p("7", 0.0719), p("3", 0.0322), p("9", 0.0860), ),
  ("Better health care", p("7", 0.0680), p("12", 0.1206), p("17", 0.1700), p("32", 0.3195), p("31", 0.3085), ),
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
  ("Jobs", p("4", 0.0382), p("12", 0.1192), p("36", 0.3626), p("36", 0.3617), p("9", 0.0946), p("2", 0.0236), ),
  ("Future", p("7", 0.0663), p("24", 0.2417), p("29", 0.2932), p("27", 0.2669), p("11", 0.1078), p("2", 0.0240), ),
  ("Children", p("4", 0.0404), p("17", 0.1689), p("30", 0.3020), p("33", 0.3296), p("14", 0.1357), p("2", 0.0235), ),
  ("Finances", p("6", 0.0615), p("23", 0.2296), p("23", 0.2284), p("17", 0.1706), p("28", 0.2835), p("3", 0.0264), ),
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
  ("Children", p("12", 0.1202), p("12", 0.1179), p("12", 0.1243), p("18", 0.1827), p("28", 0.2835), p("16", 0.1592), ),
  ("Environment", p("15", 0.1455), p("10", 0.0989), p("13", 0.1328), p("13", 0.1276), p("31", 0.3135), p("17", 0.1654), ),
  ("Workers", p("10", 0.1014), p("12", 0.1238), p("16", 0.1569), p("16", 0.1634), p("28", 0.2779), p("16", 0.1621), ),
  ("Competitiveness", p("9", 0.0858), p("12", 0.1221), p("20", 0.1957), p("16", 0.1556), p("15", 0.1529), p("27", 0.2730), ),
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
  ("Superintelligence", p("32", 0.3206), p("40", 0.3968), p("9", 0.0941), p("4", 0.0410), p("13", 0.1321), ),
  ("Loss-of-control", p("43", 0.4298), p("34", 0.3363), p("7", 0.0683), p("2", 0.0241), p("13", 0.1267), ),
  ("Breakthroughs", p("21", 0.2102), p("45", 0.4526), p("11", 0.1093), p("3", 0.0338), p("18", 0.1786), ),
  ("WMDs", p("22", 0.2188), p("48", 0.4776), p("9", 0.0936), p("2", 0.0188), p("17", 0.1733), ),
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
#xtab(("Item", "Metric", ), ("Total", "Female", "Male", ), ("1057", "543", "514", ), (
  ("Jobs", "TOTAL high priority", p("87", 0.8670), p("88", 0.8759), p("86", 0.8574), ),
  ("", "TOTAL lower priority", p("9", 0.0867), p("6", 0.0648), p("11", 0.1102), ),
  ("", "NET priority", n("78", 0.7803), n("81", 0.8111), n("75", 0.7472), ),
  ("Inflation", "TOTAL high priority", p("92", 0.9181), p("91", 0.9133), p("92", 0.9233), ),
  ("", "TOTAL lower priority", p("4", 0.0388), p("3", 0.0320), p("5", 0.0461), ),
  ("", "NET priority", n("88", 0.8793), n("88", 0.8813), n("88", 0.8772), ),
  ("AI harms", "TOTAL high priority", p("78", 0.7753), p("79", 0.7866), p("76", 0.7631), ),
  ("", "TOTAL lower priority", p("16", 0.1648), p("13", 0.1330), p("20", 0.1990), ),
  ("", "NET priority", n("61", 0.6105), n("65", 0.6535), n("56", 0.5642), ),
  ("Immigration", "TOTAL high priority", p("72", 0.7220), p("73", 0.7327), p("71", 0.7105), ),
  ("", "TOTAL lower priority", p("23", 0.2305), p("21", 0.2055), p("26", 0.2574), ),
  ("", "NET priority", n("49", 0.4915), n("53", 0.5272), n("45", 0.4532), ),
  ("Health care", "TOTAL high priority", p("90", 0.8966), p("91", 0.9103), p("88", 0.8819), ),
  ("", "TOTAL lower priority", p("6", 0.0645), p("4", 0.0406), p("9", 0.0901), ),
  ("", "NET priority", n("83", 0.8321), n("87", 0.8697), n("79", 0.7918), ),
  ("Crime", "TOTAL high priority", p("84", 0.8424), p("86", 0.8583), p("83", 0.8253), ),
  ("", "TOTAL lower priority", p("11", 0.1145), p("9", 0.0868), p("14", 0.1444), ),
  ("", "NET priority", n("73", 0.7279), n("77", 0.7715), n("68", 0.6810), ),
  ("Climate change", "TOTAL high priority", p("67", 0.6698), p("69", 0.6868), p("65", 0.6515), ),
  ("", "TOTAL lower priority", p("28", 0.2794), p("24", 0.2442), p("32", 0.3172), ),
  ("", "NET priority", n("39", 0.3904), n("44", 0.4426), n("33", 0.3343), ),
))

#heading(level: 3, "By Party")
#xtab(("Item", "Metric", ), ("Total", "Dem", "Rep", "Ind", ), ("1057", "490", "382", "183", ), (
  ("Jobs", "TOTAL high priority", p("87", 0.8670), p("92", 0.9209), p("85", 0.8520), p("79", 0.7863), ),
  ("", "TOTAL lower priority", p("9", 0.0867), p("5", 0.0538), p("12", 0.1214), p("9", 0.0882), ),
  ("", "NET priority", n("78", 0.7803), n("87", 0.8671), n("73", 0.7306), n("70", 0.6981), ),
  ("Inflation", "TOTAL high priority", p("92", 0.9181), p("96", 0.9563), p("91", 0.9101), p("86", 0.8562), ),
  ("", "TOTAL lower priority", p("4", 0.0388), p("3", 0.0271), p("5", 0.0515), p("4", 0.0390), ),
  ("", "NET priority", n("88", 0.8793), n("93", 0.9293), n("86", 0.8586), n("82", 0.8172), ),
  ("AI harms", "TOTAL high priority", p("78", 0.7753), p("81", 0.8051), p("78", 0.7762), p("71", 0.7129), ),
  ("", "TOTAL lower priority", p("16", 0.1648), p("14", 0.1434), p("19", 0.1883), p("17", 0.1650), ),
  ("", "NET priority", n("61", 0.6105), n("66", 0.6617), n("59", 0.5878), n("55", 0.5479), ),
  ("Immigration", "TOTAL high priority", p("72", 0.7220), p("63", 0.6308), p("86", 0.8615), p("64", 0.6432), ),
  ("", "TOTAL lower priority", p("23", 0.2305), p("35", 0.3453), p("12", 0.1158), p("22", 0.2160), ),
  ("", "NET priority", n("49", 0.4915), n("29", 0.2855), n("75", 0.7457), n("43", 0.4272), ),
  ("Health care", "TOTAL high priority", p("90", 0.8966), p("94", 0.9387), p("89", 0.8884), p("83", 0.8273), ),
  ("", "TOTAL lower priority", p("6", 0.0645), p("4", 0.0379), p("8", 0.0820), p("9", 0.0855), ),
  ("", "NET priority", n("83", 0.8321), n("90", 0.9008), n("81", 0.8065), n("74", 0.7418), ),
  ("Crime", "TOTAL high priority", p("84", 0.8424), p("82", 0.8159), p("89", 0.8943), p("80", 0.7979), ),
  ("", "TOTAL lower priority", p("11", 0.1145), p("15", 0.1539), p("8", 0.0769), p("11", 0.1067), ),
  ("", "NET priority", n("73", 0.7279), n("66", 0.6620), n("82", 0.8174), n("69", 0.6912), ),
  ("Climate change", "TOTAL high priority", p("67", 0.6698), p("88", 0.8771), p("44", 0.4384), p("68", 0.6840), ),
  ("", "TOTAL lower priority", p("28", 0.2794), p("10", 0.0972), p("53", 0.5348), p("17", 0.1701), ),
  ("", "NET priority", n("39", 0.3904), n("78", 0.7798), n("−10", -0.0964), n("51", 0.5139), ),
))

#heading(level: 3, "By Age")
#xtab(("Item", "Metric", ), ("Total", "18–34", "35–49", "50–64", "65+", ), ("1057", "236", "228", "248", "345", ), (
  ("Jobs", "TOTAL high priority", p("87", 0.8670), p("82", 0.8213), p("87", 0.8721), p("91", 0.9102), p("88", 0.8757), ),
  ("", "TOTAL lower priority", p("9", 0.0867), p("8", 0.0762), p("10", 0.1036), p("7", 0.0687), p("10", 0.0986), ),
  ("", "NET priority", n("78", 0.7803), n("75", 0.7450), n("77", 0.7685), n("84", 0.8415), n("78", 0.7771), ),
  ("Inflation", "TOTAL high priority", p("92", 0.9181), p("86", 0.8568), p("94", 0.9386), p("95", 0.9470), p("94", 0.9431), ),
  ("", "TOTAL lower priority", p("4", 0.0388), p("5", 0.0521), p("3", 0.0268), p("4", 0.0445), p("3", 0.0299), ),
  ("", "NET priority", n("88", 0.8793), n("80", 0.8047), n("91", 0.9118), n("90", 0.9026), n("91", 0.9131), ),
  ("AI harms", "TOTAL high priority", p("78", 0.7753), p("68", 0.6802), p("82", 0.8216), p("81", 0.8129), p("81", 0.8060), ),
  ("", "TOTAL lower priority", p("16", 0.1648), p("20", 0.1963), p("14", 0.1394), p("17", 0.1656), p("15", 0.1525), ),
  ("", "NET priority", n("61", 0.6105), n("48", 0.4839), n("68", 0.6822), n("65", 0.6473), n("65", 0.6535), ),
  ("Immigration", "TOTAL high priority", p("72", 0.7220), p("59", 0.5945), p("71", 0.7061), p("79", 0.7901), p("83", 0.8259), ),
  ("", "TOTAL lower priority", p("23", 0.2305), p("30", 0.3045), p("27", 0.2652), p("19", 0.1942), p("14", 0.1416), ),
  ("", "NET priority", n("49", 0.4915), n("29", 0.2900), n("44", 0.4409), n("60", 0.5959), n("68", 0.6844), ),
  ("Health care", "TOTAL high priority", p("90", 0.8966), p("81", 0.8072), p("90", 0.9032), p("94", 0.9437), p("95", 0.9522), ),
  ("", "TOTAL lower priority", p("6", 0.0645), p("9", 0.0916), p("8", 0.0838), p("5", 0.0470), p("3", 0.0292), ),
  ("", "NET priority", n("83", 0.8321), n("72", 0.7156), n("82", 0.8194), n("90", 0.8967), n("92", 0.9229), ),
  ("Crime", "TOTAL high priority", p("84", 0.8424), p("72", 0.7228), p("84", 0.8436), p("93", 0.9255), p("91", 0.9056), ),
  ("", "TOTAL lower priority", p("11", 0.1145), p("17", 0.1686), p("14", 0.1387), p("7", 0.0695), p("7", 0.0680), ),
  ("", "NET priority", n("73", 0.7279), n("55", 0.5543), n("70", 0.7049), n("86", 0.8560), n("84", 0.8375), ),
  ("Climate change", "TOTAL high priority", p("67", 0.6698), p("70", 0.6989), p("71", 0.7108), p("62", 0.6189), p("64", 0.6411), ),
  ("", "TOTAL lower priority", p("28", 0.2794), p("18", 0.1772), p("26", 0.2598), p("36", 0.3647), p("34", 0.3409), ),
  ("", "NET priority", n("39", 0.3904), n("52", 0.5216), n("45", 0.4510), n("25", 0.2543), n("30", 0.3001), ),
))

#heading(level: 3, "By Ethnicity")
#xtab(("Item", "Metric", ), ("Total", "White", "Black", "Hispanic", ), ("1057", "685", "117", "133", ), (
  ("Jobs", "TOTAL high priority", p("87", 0.8670), p("87", 0.8661), p("76", 0.7564), p("95", 0.9538), ),
  ("", "TOTAL lower priority", p("9", 0.0867), p("10", 0.0983), p("9", 0.0887), p("5", 0.0462), ),
  ("", "NET priority", n("78", 0.7803), n("77", 0.7678), n("67", 0.6677), n("91", 0.9076), ),
  ("Inflation", "TOTAL high priority", p("92", 0.9181), p("92", 0.9220), p("83", 0.8322), p("94", 0.9376), ),
  ("", "TOTAL lower priority", p("4", 0.0388), p("4", 0.0393), p("1", 0.0052), p("6", 0.0624), ),
  ("", "NET priority", n("88", 0.8793), n("88", 0.8827), n("83", 0.8270), n("88", 0.8752), ),
  ("AI harms", "TOTAL high priority", p("78", 0.7753), p("81", 0.8090), p("66", 0.6560), p("72", 0.7215), ),
  ("", "TOTAL lower priority", p("16", 0.1648), p("15", 0.1528), p("15", 0.1501), p("25", 0.2463), ),
  ("", "NET priority", n("61", 0.6105), n("66", 0.6562), n("51", 0.5060), n("48", 0.4752), ),
  ("Immigration", "TOTAL high priority", p("72", 0.7220), p("76", 0.7625), p("57", 0.5732), p("69", 0.6943), ),
  ("", "TOTAL lower priority", p("23", 0.2305), p("21", 0.2053), p("26", 0.2562), p("29", 0.2915), ),
  ("", "NET priority", n("49", 0.4915), n("56", 0.5572), n("32", 0.3170), n("40", 0.4028), ),
  ("Health care", "TOTAL high priority", p("90", 0.8966), p("92", 0.9246), p("77", 0.7680), p("89", 0.8924), ),
  ("", "TOTAL lower priority", p("6", 0.0645), p("5", 0.0481), p("9", 0.0949), p("10", 0.0990), ),
  ("", "NET priority", n("83", 0.8321), n("88", 0.8765), n("67", 0.6731), n("79", 0.7933), ),
  ("Crime", "TOTAL high priority", p("84", 0.8424), p("87", 0.8656), p("75", 0.7532), p("85", 0.8479), ),
  ("", "TOTAL lower priority", p("11", 0.1145), p("10", 0.1005), p("11", 0.1129), p("15", 0.1521), ),
  ("", "NET priority", n("73", 0.7279), n("77", 0.7650), n("64", 0.6402), n("70", 0.6959), ),
  ("Climate change", "TOTAL high priority", p("67", 0.6698), p("63", 0.6327), p("71", 0.7096), p("72", 0.7150), ),
  ("", "TOTAL lower priority", p("28", 0.2794), p("34", 0.3417), p("15", 0.1459), p("24", 0.2373), ),
  ("", "NET priority", n("39", 0.3904), n("29", 0.2910), n("56", 0.5637), n("48", 0.4777), ),
))

#heading(level: 3, "By Education")
#xtab(("Item", "Metric", ), ("Total", "HS or less", "Some college", "BA+", ), ("1057", "275", "367", "415", ), (
  ("Jobs", "TOTAL high priority", p("87", 0.8670), p("84", 0.8360), p("89", 0.8854), p("88", 0.8845), ),
  ("", "TOTAL lower priority", p("9", 0.0867), p("7", 0.0736), p("8", 0.0796), p("10", 0.1045), ),
  ("", "NET priority", n("78", 0.7803), n("76", 0.7623), n("81", 0.8058), n("78", 0.7799), ),
  ("Inflation", "TOTAL high priority", p("92", 0.9181), p("86", 0.8576), p("94", 0.9404), p("96", 0.9621), ),
  ("", "TOTAL lower priority", p("4", 0.0388), p("6", 0.0558), p("3", 0.0259), p("3", 0.0313), ),
  ("", "NET priority", n("88", 0.8793), n("80", 0.8018), n("91", 0.9145), n("93", 0.9308), ),
  ("AI harms", "TOTAL high priority", p("78", 0.7753), p("71", 0.7057), p("79", 0.7916), p("83", 0.8325), ),
  ("", "TOTAL lower priority", p("16", 0.1648), p("19", 0.1946), p("15", 0.1502), p("15", 0.1457), ),
  ("", "NET priority", n("61", 0.6105), n("51", 0.5111), n("64", 0.6414), n("69", 0.6868), ),
  ("Immigration", "TOTAL high priority", p("72", 0.7220), p("69", 0.6912), p("75", 0.7510), p("73", 0.7319), ),
  ("", "TOTAL lower priority", p("23", 0.2305), p("22", 0.2241), p("21", 0.2072), p("25", 0.2535), ),
  ("", "NET priority", n("49", 0.4915), n("47", 0.4671), n("54", 0.5438), n("48", 0.4784), ),
  ("Health care", "TOTAL high priority", p("90", 0.8966), p("86", 0.8577), p("90", 0.8965), p("94", 0.9352), ),
  ("", "TOTAL lower priority", p("6", 0.0645), p("7", 0.0663), p("7", 0.0679), p("6", 0.0603), ),
  ("", "NET priority", n("83", 0.8321), n("79", 0.7915), n("83", 0.8286), n("87", 0.8749), ),
  ("Crime", "TOTAL high priority", p("84", 0.8424), p("81", 0.8091), p("87", 0.8702), p("86", 0.8555), ),
  ("", "TOTAL lower priority", p("11", 0.1145), p("11", 0.1093), p("9", 0.0923), p("14", 0.1355), ),
  ("", "NET priority", n("73", 0.7279), n("70", 0.6998), n("78", 0.7779), n("72", 0.7200), ),
  ("Climate change", "TOTAL high priority", p("67", 0.6698), p("64", 0.6375), p("65", 0.6542), p("71", 0.7127), ),
  ("", "TOTAL lower priority", p("28", 0.2794), p("26", 0.2618), p("31", 0.3086), p("28", 0.2761), ),
  ("", "NET priority", n("39", 0.3904), n("38", 0.3758), n("35", 0.3456), n("44", 0.4367), ),
))

#heading(level: 3, "By Household income")
#xtab(("Item", "Metric", ), ("Total", "<50k", "50k-<100k", "100k+", ), ("1057", "355", "339", "363", ), (
  ("Jobs", "TOTAL high priority", p("87", 0.8670), p("85", 0.8465), p("89", 0.8929), p("87", 0.8697), ),
  ("", "TOTAL lower priority", p("9", 0.0867), p("9", 0.0877), p("7", 0.0676), p("10", 0.1032), ),
  ("", "NET priority", n("78", 0.7803), n("76", 0.7588), n("83", 0.8253), n("77", 0.7664), ),
  ("Inflation", "TOTAL high priority", p("92", 0.9181), p("90", 0.8996), p("93", 0.9265), p("93", 0.9348), ),
  ("", "TOTAL lower priority", p("4", 0.0388), p("4", 0.0399), p("2", 0.0242), p("5", 0.0512), ),
  ("", "NET priority", n("88", 0.8793), n("86", 0.8597), n("90", 0.9023), n("88", 0.8836), ),
  ("AI harms", "TOTAL high priority", p("78", 0.7753), p("70", 0.7031), p("83", 0.8322), p("82", 0.8180), ),
  ("", "TOTAL lower priority", p("16", 0.1648), p("21", 0.2062), p("12", 0.1198), p("15", 0.1521), ),
  ("", "NET priority", n("61", 0.6105), n("50", 0.4969), n("71", 0.7125), n("67", 0.6659), ),
  ("Immigration", "TOTAL high priority", p("72", 0.7220), p("70", 0.7043), p("79", 0.7865), p("68", 0.6846), ),
  ("", "TOTAL lower priority", p("23", 0.2305), p("23", 0.2346), p("16", 0.1615), p("29", 0.2905), ),
  ("", "NET priority", n("49", 0.4915), n("47", 0.4698), n("63", 0.6251), n("39", 0.3941), ),
  ("Health care", "TOTAL high priority", p("90", 0.8966), p("87", 0.8654), p("92", 0.9162), p("92", 0.9199), ),
  ("", "TOTAL lower priority", p("6", 0.0645), p("8", 0.0838), p("4", 0.0435), p("6", 0.0585), ),
  ("", "NET priority", n("83", 0.8321), n("78", 0.7816), n("87", 0.8727), n("86", 0.8614), ),
  ("Crime", "TOTAL high priority", p("84", 0.8424), p("84", 0.8357), p("87", 0.8682), p("83", 0.8269), ),
  ("", "TOTAL lower priority", p("11", 0.1145), p("11", 0.1121), p("8", 0.0830), p("15", 0.1478), ),
  ("", "NET priority", n("73", 0.7279), n("72", 0.7237), n("79", 0.7853), n("68", 0.6791), ),
  ("Climate change", "TOTAL high priority", p("67", 0.6698), p("66", 0.6633), p("67", 0.6655), p("68", 0.6825), ),
  ("", "TOTAL lower priority", p("28", 0.2794), p("26", 0.2574), p("29", 0.2943), p("29", 0.2948), ),
  ("", "NET priority", n("39", 0.3904), n("41", 0.4059), n("37", 0.3712), n("39", 0.3878), ),
))

#heading(level: 2, "Affect")

#stem("Thinking about AI's growing role in society, which of these options comes closest to how you feel, even if none are exactly right?")

#defs("Each total combines multiple responses:", ("Total", "Responses", ), (
  ("TOTAL excited", "\"Very excited\" or \"Somewhat excited\"", ),
  ("TOTAL concerned", "\"Somewhat concerned\" or \"Very concerned\"", ),
))

#note[Cells (weighted): totals (%) and net (percentage points).]
#heading(level: 3, "By Sex")
#xtab(("Metric", ), ("Total", "Female", "Male", ), ("1057", "543", "514", ), (
  ("TOTAL excited", p("21", 0.2109), p("18", 0.1835), p("24", 0.2404), ),
  ("TOTAL concerned", p("69", 0.6902), p("69", 0.6898), p("69", 0.6907), ),
  ("None of these", p("9", 0.0894), p("12", 0.1174), p("6", 0.0592), ),
  ("No answer", p("1", 0.0095), p("1", 0.0092), p("1", 0.0098), ),
  ("NET concerned", n("48", 0.4793), n("51", 0.5064), n("45", 0.4503), ),
))

#heading(level: 3, "By Party")
#xtab(("Metric", ), ("Total", "Dem", "Rep", "Ind", ), ("1057", "490", "382", "183", ), (
  ("TOTAL excited", p("21", 0.2109), p("15", 0.1502), p("27", 0.2718), p("22", 0.2155), ),
  ("TOTAL concerned", p("69", 0.6902), p("79", 0.7933), p("65", 0.6470), p("57", 0.5679), ),
  ("None of these", p("9", 0.0894), p("5", 0.0471), p("7", 0.0720), p("21", 0.2064), ),
  ("No answer", p("1", 0.0095), p("1", 0.0094), p("1", 0.0093), p("1", 0.0102), ),
  ("NET concerned", n("48", 0.4793), n("64", 0.6431), n("38", 0.3752), n("35", 0.3524), ),
))

#heading(level: 3, "By Age")
#xtab(("Metric", ), ("Total", "18–34", "35–49", "50–64", "65+", ), ("1057", "236", "228", "248", "345", ), (
  ("TOTAL excited", p("21", 0.2109), p("19", 0.1885), p("26", 0.2564), p("19", 0.1948), p("21", 0.2065), ),
  ("TOTAL concerned", p("69", 0.6902), p("65", 0.6484), p("65", 0.6493), p("73", 0.7318), p("74", 0.7426), ),
  ("None of these", p("9", 0.0894), p("14", 0.1356), p("9", 0.0942), p("7", 0.0711), p("5", 0.0466), ),
  ("No answer", p("1", 0.0095), p("3", 0.0275), p("0", 0.0000), p("<1", 0.0024), p("<1", 0.0043), ),
  ("NET concerned", n("48", 0.4793), n("46", 0.4599), n("39", 0.3929), n("54", 0.5370), n("54", 0.5361), ),
))

#heading(level: 3, "By Ethnicity")
#xtab(("Metric", ), ("Total", "White", "Black", "Hispanic", ), ("1057", "685", "117", "133", ), (
  ("TOTAL excited", p("21", 0.2109), p("20", 0.2036), p("17", 0.1708), p("24", 0.2418), ),
  ("TOTAL concerned", p("69", 0.6902), p("72", 0.7229), p("58", 0.5837), p("68", 0.6831), ),
  ("None of these", p("9", 0.0894), p("7", 0.0716), p("22", 0.2181), p("8", 0.0751), ),
  ("No answer", p("1", 0.0095), p("<1", 0.0018), p("3", 0.0275), p("0", 0.0000), ),
  ("NET concerned", n("48", 0.4793), n("52", 0.5193), n("41", 0.4129), n("44", 0.4413), ),
))

#heading(level: 3, "By Education")
#xtab(("Metric", ), ("Total", "HS or less", "Some college", "BA+", ), ("1057", "275", "367", "415", ), (
  ("TOTAL excited", p("21", 0.2109), p("18", 0.1772), p("18", 0.1826), p("26", 0.2644), ),
  ("TOTAL concerned", p("69", 0.6902), p("65", 0.6544), p("73", 0.7306), p("70", 0.6970), ),
  ("None of these", p("9", 0.0894), p("15", 0.1468), p("8", 0.0838), p("4", 0.0365), ),
  ("No answer", p("1", 0.0095), p("2", 0.0216), p("<1", 0.0030), p("<1", 0.0022), ),
  ("NET concerned", n("48", 0.4793), n("48", 0.4772), n("55", 0.5479), n("43", 0.4326), ),
))

#heading(level: 3, "By Household income")
#xtab(("Metric", ), ("Total", "<50k", "50k-<100k", "100k+", ), ("1057", "355", "339", "363", ), (
  ("TOTAL excited", p("21", 0.2109), p("23", 0.2295), p("16", 0.1642), p("23", 0.2302), ),
  ("TOTAL concerned", p("69", 0.6902), p("62", 0.6249), p("75", 0.7530), p("72", 0.7182), ),
  ("None of these", p("9", 0.0894), p("13", 0.1276), p("8", 0.0773), p("5", 0.0496), ),
  ("No answer", p("1", 0.0095), p("2", 0.0179), p("1", 0.0055), p("<1", 0.0020), ),
  ("NET concerned", n("48", 0.4793), n("40", 0.3954), n("59", 0.5887), n("49", 0.4880), ),
))

#heading(level: 2, "Agency")

#stem("Again, thinking about AI, which statement comes closer to your view, even if neither is exactly right?")

#note[Cells (weighted): totals (%) and net (percentage points).]
#heading(level: 3, "By Sex")
#xtab(("Metric", ), ("Total", "Female", "Male", ), ("1057", "543", "514", ), (
  ("TOTAL can shape", p("16", 0.1626), p("12", 0.1205), p("21", 0.2078), ),
  ("TOTAL inevitable", p("67", 0.6744), p("69", 0.6881), p("66", 0.6597), ),
  ("Neither of these", p("15", 0.1483), p("18", 0.1783), p("12", 0.1160), ),
  ("No answer", p("1", 0.0147), p("1", 0.0130), p("2", 0.0165), ),
  ("NET inevitable", n("51", 0.5119), n("57", 0.5676), n("45", 0.4520), ),
))

#heading(level: 3, "By Party")
#xtab(("Metric", ), ("Total", "Dem", "Rep", "Ind", ), ("1057", "490", "382", "183", ), (
  ("TOTAL can shape", p("16", 0.1626), p("19", 0.1872), p("15", 0.1541), p("13", 0.1303), ),
  ("TOTAL inevitable", p("67", 0.6744), p("65", 0.6494), p("73", 0.7255), p("63", 0.6277), ),
  ("Neither of these", p("15", 0.1483), p("14", 0.1444), p("11", 0.1066), p("23", 0.2343), ),
  ("No answer", p("1", 0.0147), p("2", 0.0190), p("1", 0.0139), p("1", 0.0077), ),
  ("NET inevitable", n("51", 0.5119), n("46", 0.4621), n("57", 0.5714), n("50", 0.4974), ),
))

#heading(level: 3, "By Age")
#xtab(("Metric", ), ("Total", "18–34", "35–49", "50–64", "65+", ), ("1057", "236", "228", "248", "345", ), (
  ("TOTAL can shape", p("16", 0.1626), p("20", 0.1980), p("19", 0.1922), p("16", 0.1631), p("9", 0.0901), ),
  ("TOTAL inevitable", p("67", 0.6744), p("56", 0.5585), p("65", 0.6501), p("76", 0.7586), p("76", 0.7582), ),
  ("Neither of these", p("15", 0.1483), p("22", 0.2180), p("14", 0.1431), p("7", 0.0725), p("14", 0.1416), ),
  ("No answer", p("1", 0.0147), p("3", 0.0255), p("1", 0.0146), p("1", 0.0059), p("1", 0.0101), ),
  ("NET inevitable", n("51", 0.5119), n("36", 0.3605), n("46", 0.4578), n("60", 0.5955), n("67", 0.6681), ),
))

#heading(level: 3, "By Ethnicity")
#xtab(("Metric", ), ("Total", "White", "Black", "Hispanic", ), ("1057", "685", "117", "133", ), (
  ("TOTAL can shape", p("16", 0.1626), p("13", 0.1346), p("15", 0.1522), p("25", 0.2508), ),
  ("TOTAL inevitable", p("67", 0.6744), p("74", 0.7416), p("54", 0.5411), p("52", 0.5213), ),
  ("Neither of these", p("15", 0.1483), p("12", 0.1188), p("27", 0.2683), p("21", 0.2107), ),
  ("No answer", p("1", 0.0147), p("1", 0.0050), p("4", 0.0384), p("2", 0.0171), ),
  ("NET inevitable", n("51", 0.5119), n("61", 0.6070), n("39", 0.3889), n("27", 0.2705), ),
))

#heading(level: 3, "By Education")
#xtab(("Metric", ), ("Total", "HS or less", "Some college", "BA+", ), ("1057", "275", "367", "415", ), (
  ("TOTAL can shape", p("16", 0.1626), p("15", 0.1453), p("17", 0.1720), p("17", 0.1729), ),
  ("TOTAL inevitable", p("67", 0.6744), p("62", 0.6216), p("67", 0.6708), p("73", 0.7293), ),
  ("Neither of these", p("15", 0.1483), p("19", 0.1945), p("16", 0.1551), p("10", 0.0978), ),
  ("No answer", p("1", 0.0147), p("4", 0.0386), p("<1", 0.0021), p("0", 0.0000), ),
  ("NET inevitable", n("51", 0.5119), n("48", 0.4763), n("50", 0.4988), n("56", 0.5563), ),
))

#heading(level: 3, "By Household income")
#xtab(("Metric", ), ("Total", "<50k", "50k-<100k", "100k+", ), ("1057", "355", "339", "363", ), (
  ("TOTAL can shape", p("16", 0.1626), p("15", 0.1544), p("16", 0.1627), p("17", 0.1733), ),
  ("TOTAL inevitable", p("67", 0.6744), p("62", 0.6189), p("68", 0.6842), p("74", 0.7396), ),
  ("Neither of these", p("15", 0.1483), p("20", 0.2035), p("15", 0.1456), p("8", 0.0770), ),
  ("No answer", p("1", 0.0147), p("2", 0.0232), p("1", 0.0075), p("1", 0.0101), ),
  ("NET inevitable", n("51", 0.5119), n("46", 0.4644), n("52", 0.5215), n("57", 0.5662), ),
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
#xtab(("Item", "Metric", ), ("Total", "Female", "Male", ), ("1057", "543", "514", ), (
  ("Saving time", "TOTAL realized", p("51", 0.5090), p("51", 0.5123), p("51", 0.5054), ),
  ("", "TOTAL not yet", p("28", 0.2839), p("23", 0.2334), p("34", 0.3382), ),
  ("", "NET realized", n("23", 0.2251), n("28", 0.2789), n("17", 0.1671), ),
  ("Pressured to do more", "TOTAL realized", p("51", 0.5071), p("54", 0.5384), p("47", 0.4734), ),
  ("", "TOTAL not yet", p("29", 0.2872), p("24", 0.2364), p("34", 0.3418), ),
  ("", "NET realized", n("22", 0.2199), n("30", 0.3020), n("13", 0.1316), ),
  ("Losing connections", "TOTAL realized", p("60", 0.6020), p("61", 0.6113), p("59", 0.5919), ),
  ("", "TOTAL not yet", p("24", 0.2353), p("20", 0.2019), p("27", 0.2712), ),
  ("", "NET realized", n("37", 0.3667), n("41", 0.4095), n("32", 0.3207), ),
  ("Real vs. fake", "TOTAL realized", p("80", 0.8017), p("80", 0.7979), p("81", 0.8058), ),
  ("", "TOTAL not yet", p("10", 0.1041), p("9", 0.0910), p("12", 0.1182), ),
  ("", "NET realized", n("70", 0.6976), n("71", 0.7069), n("69", 0.6876), ),
  ("Better health care", "TOTAL realized", p("19", 0.1886), p("18", 0.1795), p("20", 0.1984), ),
  ("", "TOTAL not yet", p("49", 0.4896), p("46", 0.4596), p("52", 0.5218), ),
  ("", "NET realized", n("−30", -0.3009), n("−28", -0.2800), n("−32", -0.3234), ),
))

#heading(level: 3, "By Party")
#xtab(("Item", "Metric", ), ("Total", "Dem", "Rep", "Ind", ), ("1057", "490", "382", "183", ), (
  ("Saving time", "TOTAL realized", p("51", 0.5090), p("48", 0.4823), p("56", 0.5607), p("47", 0.4693), ),
  ("", "TOTAL not yet", p("28", 0.2839), p("35", 0.3505), p("24", 0.2417), p("23", 0.2315), ),
  ("", "NET realized", n("23", 0.2251), n("13", 0.1319), n("32", 0.3190), n("24", 0.2378), ),
  ("Pressured to do more", "TOTAL realized", p("51", 0.5071), p("52", 0.5161), p("50", 0.5002), p("51", 0.5051), ),
  ("", "TOTAL not yet", p("29", 0.2872), p("32", 0.3194), p("28", 0.2842), p("23", 0.2290), ),
  ("", "NET realized", n("22", 0.2199), n("20", 0.1968), n("22", 0.2160), n("28", 0.2760), ),
  ("Losing connections", "TOTAL realized", p("60", 0.6020), p("58", 0.5750), p("63", 0.6331), p("60", 0.6017), ),
  ("", "TOTAL not yet", p("24", 0.2353), p("26", 0.2576), p("23", 0.2295), p("20", 0.2030), ),
  ("", "NET realized", n("37", 0.3667), n("32", 0.3174), n("40", 0.4036), n("40", 0.3987), ),
  ("Real vs. fake", "TOTAL realized", p("80", 0.8017), p("81", 0.8075), p("83", 0.8299), p("74", 0.7365), ),
  ("", "TOTAL not yet", p("10", 0.1041), p("10", 0.1036), p("10", 0.0956), p("12", 0.1216), ),
  ("", "NET realized", n("70", 0.6976), n("70", 0.7039), n("73", 0.7343), n("61", 0.6149), ),
  ("Better health care", "TOTAL realized", p("19", 0.1886), p("14", 0.1445), p("23", 0.2274), p("21", 0.2059), ),
  ("", "TOTAL not yet", p("49", 0.4896), p("59", 0.5871), p("43", 0.4271), p("41", 0.4126), ),
  ("", "NET realized", n("−30", -0.3009), n("−44", -0.4426), n("−20", -0.1997), n("−21", -0.2067), ),
))

#heading(level: 3, "By Age")
#xtab(("Item", "Metric", ), ("Total", "18–34", "35–49", "50–64", "65+", ), ("1057", "236", "228", "248", "345", ), (
  ("Saving time", "TOTAL realized", p("51", 0.5090), p("53", 0.5251), p("57", 0.5722), p("54", 0.5439), p("39", 0.3933), ),
  ("", "TOTAL not yet", p("28", 0.2839), p("24", 0.2441), p("28", 0.2835), p("28", 0.2800), p("34", 0.3352), ),
  ("", "NET realized", n("23", 0.2251), n("28", 0.2810), n("29", 0.2887), n("26", 0.2640), n("6", 0.0581), ),
  ("Pressured to do more", "TOTAL realized", p("51", 0.5071), p("61", 0.6082), p("56", 0.5588), p("52", 0.5178), p("33", 0.3250), ),
  ("", "TOTAL not yet", p("29", 0.2872), p("20", 0.1981), p("28", 0.2809), p("29", 0.2880), p("40", 0.3985), ),
  ("", "NET realized", n("22", 0.2199), n("41", 0.4101), n("28", 0.2780), n("23", 0.2298), n("−7", -0.0736), ),
  ("Losing connections", "TOTAL realized", p("60", 0.6020), p("60", 0.6004), p("70", 0.7032), p("61", 0.6096), p("49", 0.4943), ),
  ("", "TOTAL not yet", p("24", 0.2353), p("21", 0.2058), p("21", 0.2053), p("23", 0.2267), p("31", 0.3085), ),
  ("", "NET realized", n("37", 0.3667), n("39", 0.3945), n("50", 0.4979), n("38", 0.3829), n("19", 0.1858), ),
  ("Real vs. fake", "TOTAL realized", p("80", 0.8017), p("79", 0.7897), p("84", 0.8421), p("82", 0.8227), p("76", 0.7554), ),
  ("", "TOTAL not yet", p("10", 0.1041), p("6", 0.0605), p("13", 0.1318), p("10", 0.0976), p("13", 0.1338), ),
  ("", "NET realized", n("70", 0.6976), n("73", 0.7292), n("71", 0.7103), n("73", 0.7251), n("62", 0.6216), ),
  ("Better health care", "TOTAL realized", p("19", 0.1886), p("17", 0.1694), p("21", 0.2132), p("16", 0.1569), p("22", 0.2160), ),
  ("", "TOTAL not yet", p("49", 0.4896), p("51", 0.5089), p("52", 0.5228), p("44", 0.4403), p("48", 0.4788), ),
  ("", "NET realized", n("−30", -0.3009), n("−34", -0.3395), n("−31", -0.3095), n("−28", -0.2834), n("−26", -0.2628), ),
))

#heading(level: 3, "By Ethnicity")
#xtab(("Item", "Metric", ), ("Total", "White", "Black", "Hispanic", ), ("1057", "685", "117", "133", ), (
  ("Saving time", "TOTAL realized", p("51", 0.5090), p("49", 0.4923), p("44", 0.4400), p("54", 0.5416), ),
  ("", "TOTAL not yet", p("28", 0.2839), p("29", 0.2899), p("28", 0.2751), p("30", 0.2959), ),
  ("", "NET realized", n("23", 0.2251), n("20", 0.2024), n("16", 0.1649), n("25", 0.2458), ),
  ("Pressured to do more", "TOTAL realized", p("51", 0.5071), p("49", 0.4892), p("47", 0.4686), p("52", 0.5200), ),
  ("", "TOTAL not yet", p("29", 0.2872), p("30", 0.3037), p("27", 0.2685), p("31", 0.3087), ),
  ("", "NET realized", n("22", 0.2199), n("19", 0.1855), n("20", 0.2001), n("21", 0.2113), ),
  ("Losing connections", "TOTAL realized", p("60", 0.6020), p("62", 0.6233), p("48", 0.4800), p("53", 0.5303), ),
  ("", "TOTAL not yet", p("24", 0.2353), p("22", 0.2219), p("23", 0.2283), p("33", 0.3286), ),
  ("", "NET realized", n("37", 0.3667), n("40", 0.4014), n("25", 0.2517), n("20", 0.2017), ),
  ("Real vs. fake", "TOTAL realized", p("80", 0.8017), p("83", 0.8295), p("69", 0.6919), p("74", 0.7370), ),
  ("", "TOTAL not yet", p("10", 0.1041), p("10", 0.0994), p("9", 0.0924), p("15", 0.1508), ),
  ("", "NET realized", n("70", 0.6976), n("73", 0.7301), n("60", 0.5996), n("59", 0.5862), ),
  ("Better health care", "TOTAL realized", p("19", 0.1886), p("17", 0.1657), p("24", 0.2410), p("24", 0.2387), ),
  ("", "TOTAL not yet", p("49", 0.4896), p("51", 0.5062), p("35", 0.3506), p("51", 0.5131), ),
  ("", "NET realized", n("−30", -0.3009), n("−34", -0.3405), n("−11", -0.1096), n("−27", -0.2744), ),
))

#heading(level: 3, "By Education")
#xtab(("Item", "Metric", ), ("Total", "HS or less", "Some college", "BA+", ), ("1057", "275", "367", "415", ), (
  ("Saving time", "TOTAL realized", p("51", 0.5090), p("44", 0.4423), p("44", 0.4419), p("62", 0.6227), ),
  ("", "TOTAL not yet", p("28", 0.2839), p("26", 0.2642), p("35", 0.3474), p("26", 0.2582), ),
  ("", "NET realized", n("23", 0.2251), n("18", 0.1781), n("9", 0.0945), n("36", 0.3644), ),
  ("Pressured to do more", "TOTAL realized", p("51", 0.5071), p("50", 0.5049), p("48", 0.4806), p("53", 0.5282), ),
  ("", "TOTAL not yet", p("29", 0.2872), p("23", 0.2305), p("28", 0.2840), p("35", 0.3456), ),
  ("", "NET realized", n("22", 0.2199), n("27", 0.2744), n("20", 0.1965), n("18", 0.1826), ),
  ("Losing connections", "TOTAL realized", p("60", 0.6020), p("58", 0.5753), p("64", 0.6425), p("60", 0.5995), ),
  ("", "TOTAL not yet", p("24", 0.2353), p("20", 0.2018), p("23", 0.2290), p("27", 0.2728), ),
  ("", "NET realized", n("37", 0.3667), n("37", 0.3735), n("41", 0.4135), n("33", 0.3267), ),
  ("Real vs. fake", "TOTAL realized", p("80", 0.8017), p("72", 0.7230), p("79", 0.7947), p("88", 0.8845), ),
  ("", "TOTAL not yet", p("10", 0.1041), p("10", 0.0969), p("12", 0.1215), p("10", 0.0988), ),
  ("", "NET realized", n("70", 0.6976), n("63", 0.6261), n("67", 0.6731), n("79", 0.7857), ),
  ("Better health care", "TOTAL realized", p("19", 0.1886), p("22", 0.2224), p("19", 0.1918), p("15", 0.1530), ),
  ("", "TOTAL not yet", p("49", 0.4896), p("41", 0.4131), p("48", 0.4840), p("57", 0.5691), ),
  ("", "NET realized", n("−30", -0.3009), n("−19", -0.1907), n("−29", -0.2922), n("−42", -0.4161), ),
))

#heading(level: 3, "By Household income")
#xtab(("Item", "Metric", ), ("Total", "<50k", "50k-<100k", "100k+", ), ("1057", "355", "339", "363", ), (
  ("Saving time", "TOTAL realized", p("51", 0.5090), p("46", 0.4572), p("51", 0.5131), p("57", 0.5744), ),
  ("", "TOTAL not yet", p("28", 0.2839), p("31", 0.3137), p("25", 0.2533), p("27", 0.2731), ),
  ("", "NET realized", n("23", 0.2251), n("14", 0.1435), n("26", 0.2598), n("30", 0.3013), ),
  ("Pressured to do more", "TOTAL realized", p("51", 0.5071), p("50", 0.4955), p("53", 0.5283), p("50", 0.5026), ),
  ("", "TOTAL not yet", p("29", 0.2872), p("27", 0.2717), p("27", 0.2706), p("32", 0.3236), ),
  ("", "NET realized", n("22", 0.2199), n("22", 0.2237), n("26", 0.2576), n("18", 0.1790), ),
  ("Losing connections", "TOTAL realized", p("60", 0.6020), p("55", 0.5512), p("70", 0.6997), p("58", 0.5773), ),
  ("", "TOTAL not yet", p("24", 0.2353), p("27", 0.2691), p("15", 0.1527), p("27", 0.2682), ),
  ("", "NET realized", n("37", 0.3667), n("28", 0.2821), n("55", 0.5470), n("31", 0.3091), ),
  ("Real vs. fake", "TOTAL realized", p("80", 0.8017), p("72", 0.7245), p("85", 0.8523), p("86", 0.8571), ),
  ("", "TOTAL not yet", p("10", 0.1041), p("14", 0.1416), p("8", 0.0761), p("8", 0.0805), ),
  ("", "NET realized", n("70", 0.6976), n("58", 0.5829), n("78", 0.7762), n("78", 0.7766), ),
  ("Better health care", "TOTAL realized", p("19", 0.1886), p("26", 0.2552), p("13", 0.1282), p("16", 0.1568), ),
  ("", "TOTAL not yet", p("49", 0.4896), p("42", 0.4156), p("55", 0.5480), p("53", 0.5332), ),
  ("", "NET realized", n("−30", -0.3009), n("−16", -0.1604), n("−42", -0.4198), n("−38", -0.3764), ),
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
#xtab(("Item", "Metric", ), ("Total", "Female", "Male", ), ("1057", "543", "514", ), (
  ("Jobs", "TOTAL better", p("16", 0.1574), p("14", 0.1384), p("18", 0.1778), ),
  ("", "TOTAL worse", p("72", 0.7243), p("74", 0.7351), p("71", 0.7127), ),
  ("", "NET worse", n("57", 0.5669), n("60", 0.5967), n("53", 0.5349), ),
  ("Future", "TOTAL better", p("31", 0.3080), p("27", 0.2712), p("35", 0.3476), ),
  ("", "TOTAL worse", p("56", 0.5602), p("59", 0.5928), p("53", 0.5251), ),
  ("", "NET worse", n("25", 0.2521), n("32", 0.3216), n("18", 0.1775), ),
  ("Children", "TOTAL better", p("21", 0.2093), p("16", 0.1581), p("26", 0.2642), ),
  ("", "TOTAL worse", p("63", 0.6316), p("69", 0.6863), p("57", 0.5728), ),
  ("", "NET worse", n("42", 0.4224), n("53", 0.5282), n("31", 0.3086), ),
  ("Finances", "TOTAL better", p("29", 0.2911), p("28", 0.2768), p("31", 0.3064), ),
  ("", "TOTAL worse", p("40", 0.3991), p("41", 0.4092), p("39", 0.3882), ),
  ("", "NET worse", n("11", 0.1080), n("13", 0.1324), n("8", 0.0818), ),
))

#heading(level: 3, "By Party")
#xtab(("Item", "Metric", ), ("Total", "Dem", "Rep", "Ind", ), ("1057", "490", "382", "183", ), (
  ("Jobs", "TOTAL better", p("16", 0.1574), p("13", 0.1254), p("19", 0.1909), p("16", 0.1554), ),
  ("", "TOTAL worse", p("72", 0.7243), p("77", 0.7739), p("69", 0.6889), p("69", 0.6943), ),
  ("", "NET worse", n("57", 0.5669), n("65", 0.6486), n("50", 0.4980), n("54", 0.5389), ),
  ("Future", "TOTAL better", p("31", 0.3080), p("24", 0.2448), p("39", 0.3933), p("27", 0.2728), ),
  ("", "TOTAL worse", p("56", 0.5602), p("65", 0.6503), p("47", 0.4740), p("54", 0.5425), ),
  ("", "NET worse", n("25", 0.2521), n("41", 0.4054), n("8", 0.0807), n("27", 0.2697), ),
  ("Children", "TOTAL better", p("21", 0.2093), p("18", 0.1817), p("24", 0.2370), p("21", 0.2092), ),
  ("", "TOTAL worse", p("63", 0.6316), p("69", 0.6851), p("59", 0.5912), p("60", 0.6025), ),
  ("", "NET worse", n("42", 0.4224), n("50", 0.5034), n("35", 0.3542), n("39", 0.3934), ),
  ("Finances", "TOTAL better", p("29", 0.2911), p("23", 0.2330), p("36", 0.3589), p("28", 0.2777), ),
  ("", "TOTAL worse", p("40", 0.3991), p("49", 0.4873), p("33", 0.3333), p("35", 0.3464), ),
  ("", "NET worse", n("11", 0.1080), n("25", 0.2543), n("−3", -0.0257), n("7", 0.0687), ),
))

#heading(level: 3, "By Age")
#xtab(("Item", "Metric", ), ("Total", "18–34", "35–49", "50–64", "65+", ), ("1057", "236", "228", "248", "345", ), (
  ("Jobs", "TOTAL better", p("16", 0.1574), p("14", 0.1449), p("16", 0.1598), p("15", 0.1545), p("17", 0.1726), ),
  ("", "TOTAL worse", p("72", 0.7243), p("74", 0.7358), p("74", 0.7431), p("74", 0.7358), p("68", 0.6810), ),
  ("", "NET worse", n("57", 0.5669), n("59", 0.5908), n("58", 0.5833), n("58", 0.5814), n("51", 0.5085), ),
  ("Future", "TOTAL better", p("31", 0.3080), p("21", 0.2140), p("29", 0.2894), p("35", 0.3501), p("40", 0.3991), ),
  ("", "TOTAL worse", p("56", 0.5602), p("61", 0.6092), p("61", 0.6086), p("53", 0.5334), p("48", 0.4780), ),
  ("", "NET worse", n("25", 0.2521), n("40", 0.3952), n("32", 0.3191), n("18", 0.1832), n("8", 0.0789), ),
  ("Children", "TOTAL better", p("21", 0.2093), p("14", 0.1445), p("21", 0.2097), p("24", 0.2361), p("26", 0.2606), ),
  ("", "TOTAL worse", p("63", 0.6316), p("69", 0.6894), p("66", 0.6622), p("61", 0.6108), p("55", 0.5515), ),
  ("", "NET worse", n("42", 0.4224), n("54", 0.5449), n("45", 0.4525), n("37", 0.3747), n("29", 0.2910), ),
  ("Finances", "TOTAL better", p("29", 0.2911), p("28", 0.2791), p("27", 0.2744), p("31", 0.3140), p("30", 0.3007), ),
  ("", "TOTAL worse", p("40", 0.3991), p("41", 0.4056), p("46", 0.4641), p("38", 0.3824), p("34", 0.3411), ),
  ("", "NET worse", n("11", 0.1080), n("13", 0.1265), n("19", 0.1897), n("7", 0.0683), n("4", 0.0403), ),
))

#heading(level: 3, "By Ethnicity")
#xtab(("Item", "Metric", ), ("Total", "White", "Black", "Hispanic", ), ("1057", "685", "117", "133", ), (
  ("Jobs", "TOTAL better", p("16", 0.1574), p("12", 0.1150), p("24", 0.2432), p("23", 0.2282), ),
  ("", "TOTAL worse", p("72", 0.7243), p("78", 0.7784), p("57", 0.5747), p("64", 0.6361), ),
  ("", "NET worse", n("57", 0.5669), n("66", 0.6633), n("33", 0.3315), n("41", 0.4078), ),
  ("Future", "TOTAL better", p("31", 0.3080), p("28", 0.2841), p("36", 0.3645), p("33", 0.3305), ),
  ("", "TOTAL worse", p("56", 0.5602), p("59", 0.5889), p("43", 0.4304), p("55", 0.5491), ),
  ("", "NET worse", n("25", 0.2521), n("30", 0.3049), n("7", 0.0659), n("22", 0.2186), ),
  ("Children", "TOTAL better", p("21", 0.2093), p("16", 0.1647), p("30", 0.3015), p("26", 0.2577), ),
  ("", "TOTAL worse", p("63", 0.6316), p("67", 0.6730), p("47", 0.4745), p("60", 0.6015), ),
  ("", "NET worse", n("42", 0.4224), n("51", 0.5083), n("17", 0.1730), n("34", 0.3437), ),
  ("Finances", "TOTAL better", p("29", 0.2911), p("26", 0.2644), p("27", 0.2674), p("32", 0.3173), ),
  ("", "TOTAL worse", p("40", 0.3991), p("40", 0.4029), p("36", 0.3571), p("43", 0.4305), ),
  ("", "NET worse", n("11", 0.1080), n("14", 0.1386), n("9", 0.0898), n("11", 0.1131), ),
))

#heading(level: 3, "By Education")
#xtab(("Item", "Metric", ), ("Total", "HS or less", "Some college", "BA+", ), ("1057", "275", "367", "415", ), (
  ("Jobs", "TOTAL better", p("16", 0.1574), p("16", 0.1612), p("18", 0.1842), p("13", 0.1346), ),
  ("", "TOTAL worse", p("72", 0.7243), p("69", 0.6877), p("66", 0.6611), p("81", 0.8055), ),
  ("", "NET worse", n("57", 0.5669), n("53", 0.5265), n("48", 0.4768), n("67", 0.6709), ),
  ("Future", "TOTAL better", p("31", 0.3080), p("30", 0.2971), p("31", 0.3079), p("32", 0.3189), ),
  ("", "TOTAL worse", p("56", 0.5602), p("53", 0.5334), p("52", 0.5190), p("62", 0.6160), ),
  ("", "NET worse", n("25", 0.2521), n("24", 0.2362), n("21", 0.2111), n("30", 0.2971), ),
  ("Children", "TOTAL better", p("21", 0.2093), p("20", 0.1987), p("22", 0.2153), p("22", 0.2154), ),
  ("", "TOTAL worse", p("63", 0.6316), p("59", 0.5861), p("61", 0.6121), p("69", 0.6905), ),
  ("", "NET worse", n("42", 0.4224), n("39", 0.3875), n("40", 0.3967), n("48", 0.4751), ),
  ("Finances", "TOTAL better", p("29", 0.2911), p("25", 0.2545), p("29", 0.2915), p("33", 0.3269), ),
  ("", "TOTAL worse", p("40", 0.3991), p("41", 0.4092), p("35", 0.3519), p("42", 0.4226), ),
  ("", "NET worse", n("11", 0.1080), n("15", 0.1547), n("6", 0.0604), n("10", 0.0957), ),
))

#heading(level: 3, "By Household income")
#xtab(("Item", "Metric", ), ("Total", "<50k", "50k-<100k", "100k+", ), ("1057", "355", "339", "363", ), (
  ("Jobs", "TOTAL better", p("16", 0.1574), p("18", 0.1774), p("15", 0.1479), p("14", 0.1397), ),
  ("", "TOTAL worse", p("72", 0.7243), p("68", 0.6844), p("75", 0.7472), p("76", 0.7560), ),
  ("", "NET worse", n("57", 0.5669), n("51", 0.5070), n("60", 0.5993), n("62", 0.6163), ),
  ("Future", "TOTAL better", p("31", 0.3080), p("31", 0.3130), p("30", 0.2954), p("31", 0.3133), ),
  ("", "TOTAL worse", p("56", 0.5602), p("53", 0.5283), p("58", 0.5785), p("59", 0.5855), ),
  ("", "NET worse", n("25", 0.2521), n("22", 0.2153), n("28", 0.2830), n("27", 0.2722), ),
  ("Children", "TOTAL better", p("21", 0.2093), p("21", 0.2137), p("21", 0.2069), p("21", 0.2055), ),
  ("", "TOTAL worse", p("63", 0.6316), p("58", 0.5812), p("66", 0.6570), p("67", 0.6749), ),
  ("", "NET worse", n("42", 0.4224), n("37", 0.3675), n("45", 0.4501), n("47", 0.4694), ),
  ("Finances", "TOTAL better", p("29", 0.2911), p("31", 0.3147), p("26", 0.2596), p("29", 0.2893), ),
  ("", "TOTAL worse", p("40", 0.3991), p("42", 0.4181), p("39", 0.3872), p("38", 0.3848), ),
  ("", "NET worse", n("11", 0.1080), n("10", 0.1034), n("13", 0.1276), n("10", 0.0955), ),
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
#xtab(("Item", "Metric", ), ("Total", "Female", "Male", ), ("1057", "543", "514", ), (
  ("Children", "TOTAL too much", p("24", 0.2381), p("26", 0.2625), p("21", 0.2118), ),
  ("", "TOTAL too little", p("47", 0.4662), p("44", 0.4443), p("49", 0.4898), ),
  ("", "NET too little", n("23", 0.2281), n("18", 0.1818), n("28", 0.2779), ),
  ("Environment", "TOTAL too much", p("24", 0.2444), p("24", 0.2371), p("25", 0.2523), ),
  ("", "TOTAL too little", p("44", 0.4411), p("42", 0.4231), p("46", 0.4605), ),
  ("", "NET too little", n("20", 0.1967), n("19", 0.1860), n("21", 0.2081), ),
  ("Workers", "TOTAL too much", p("23", 0.2251), p("25", 0.2460), p("20", 0.2028), ),
  ("", "TOTAL too little", p("44", 0.4413), p("43", 0.4317), p("45", 0.4516), ),
  ("", "NET too little", n("22", 0.2161), n("19", 0.1857), n("25", 0.2488), ),
  ("Competitiveness", "TOTAL too much", p("21", 0.2080), p("23", 0.2267), p("19", 0.1878), ),
  ("", "TOTAL too little", p("31", 0.3086), p("28", 0.2825), p("34", 0.3366), ),
  ("", "NET too little", n("10", 0.1006), n("6", 0.0558), n("15", 0.1489), ),
))

#heading(level: 3, "By Party")
#xtab(("Item", "Metric", ), ("Total", "Dem", "Rep", "Ind", ), ("1057", "490", "382", "183", ), (
  ("Children", "TOTAL too much", p("24", 0.2381), p("22", 0.2195), p("24", 0.2361), p("28", 0.2804), ),
  ("", "TOTAL too little", p("47", 0.4662), p("56", 0.5648), p("41", 0.4146), p("37", 0.3668), ),
  ("", "NET too little", n("23", 0.2281), n("35", 0.3454), n("18", 0.1785), n("9", 0.0864), ),
  ("Environment", "TOTAL too much", p("24", 0.2444), p("23", 0.2258), p("25", 0.2456), p("28", 0.2809), ),
  ("", "TOTAL too little", p("44", 0.4411), p("57", 0.5660), p("36", 0.3570), p("35", 0.3495), ),
  ("", "NET too little", n("20", 0.1967), n("34", 0.3402), n("11", 0.1114), n("7", 0.0686), ),
  ("Workers", "TOTAL too much", p("23", 0.2251), p("22", 0.2206), p("20", 0.2047), p("27", 0.2737), ),
  ("", "TOTAL too little", p("44", 0.4413), p("57", 0.5705), p("35", 0.3499), p("35", 0.3547), ),
  ("", "NET too little", n("22", 0.2161), n("35", 0.3499), n("15", 0.1452), n("8", 0.0810), ),
  ("Competitiveness", "TOTAL too much", p("21", 0.2080), p("26", 0.2579), p("17", 0.1669), p("19", 0.1858), ),
  ("", "TOTAL too little", p("31", 0.3086), p("36", 0.3550), p("28", 0.2765), p("28", 0.2774), ),
  ("", "NET too little", n("10", 0.1006), n("10", 0.0971), n("11", 0.1096), n("9", 0.0916), ),
))

#heading(level: 3, "By Age")
#xtab(("Item", "Metric", ), ("Total", "18–34", "35–49", "50–64", "65+", ), ("1057", "236", "228", "248", "345", ), (
  ("Children", "TOTAL too much", p("24", 0.2381), p("24", 0.2418), p("31", 0.3120), p("18", 0.1827), p("21", 0.2103), ),
  ("", "TOTAL too little", p("47", 0.4662), p("50", 0.5018), p("41", 0.4056), p("52", 0.5165), p("44", 0.4385), ),
  ("", "NET too little", n("23", 0.2281), n("26", 0.2601), n("9", 0.0935), n("33", 0.3338), n("23", 0.2281), ),
  ("Environment", "TOTAL too much", p("24", 0.2444), p("17", 0.1725), p("30", 0.3018), p("27", 0.2692), p("25", 0.2486), ),
  ("", "TOTAL too little", p("44", 0.4411), p("55", 0.5510), p("36", 0.3552), p("43", 0.4281), p("41", 0.4099), ),
  ("", "NET too little", n("20", 0.1967), n("38", 0.3786), n("5", 0.0534), n("16", 0.1589), n("16", 0.1613), ),
  ("Workers", "TOTAL too much", p("23", 0.2251), p("24", 0.2403), p("28", 0.2823), p("19", 0.1857), p("19", 0.1860), ),
  ("", "TOTAL too little", p("44", 0.4413), p("50", 0.4967), p("41", 0.4111), p("44", 0.4437), p("40", 0.4040), ),
  ("", "NET too little", n("22", 0.2161), n("26", 0.2564), n("13", 0.1287), n("26", 0.2581), n("22", 0.2180), ),
  ("Competitiveness", "TOTAL too much", p("21", 0.2080), p("22", 0.2180), p("29", 0.2866), p("18", 0.1820), p("14", 0.1406), ),
  ("", "TOTAL too little", p("31", 0.3086), p("31", 0.3051), p("29", 0.2892), p("29", 0.2895), p("35", 0.3501), ),
  ("", "NET too little", n("10", 0.1006), n("9", 0.0871), n("0", 0.0026), n("11", 0.1075), n("21", 0.2095), ),
))

#heading(level: 3, "By Ethnicity")
#xtab(("Item", "Metric", ), ("Total", "White", "Black", "Hispanic", ), ("1057", "685", "117", "133", ), (
  ("Children", "TOTAL too much", p("24", 0.2381), p("20", 0.1977), p("28", 0.2799), p("28", 0.2832), ),
  ("", "TOTAL too little", p("47", 0.4662), p("50", 0.4966), p("34", 0.3352), p("43", 0.4347), ),
  ("", "NET too little", n("23", 0.2281), n("30", 0.2990), n("6", 0.0553), n("15", 0.1516), ),
  ("Environment", "TOTAL too much", p("24", 0.2444), p("22", 0.2186), p("29", 0.2924), p("24", 0.2433), ),
  ("", "TOTAL too little", p("44", 0.4411), p("45", 0.4549), p("34", 0.3449), p("44", 0.4365), ),
  ("", "NET too little", n("20", 0.1967), n("24", 0.2363), n("5", 0.0526), n("19", 0.1932), ),
  ("Workers", "TOTAL too much", p("23", 0.2251), p("19", 0.1888), p("36", 0.3550), p("24", 0.2448), ),
  ("", "TOTAL too little", p("44", 0.4413), p("44", 0.4427), p("35", 0.3508), p("46", 0.4647), ),
  ("", "NET too little", n("22", 0.2161), n("25", 0.2540), n("0", -0.0041), n("22", 0.2200), ),
  ("Competitiveness", "TOTAL too much", p("21", 0.2080), p("18", 0.1798), p("29", 0.2907), p("23", 0.2305), ),
  ("", "TOTAL too little", p("31", 0.3086), p("30", 0.3049), p("26", 0.2599), p("38", 0.3822), ),
  ("", "NET too little", n("10", 0.1006), n("13", 0.1252), n("−3", -0.0308), n("15", 0.1517), ),
))

#heading(level: 3, "By Education")
#xtab(("Item", "Metric", ), ("Total", "HS or less", "Some college", "BA+", ), ("1057", "275", "367", "415", ), (
  ("Children", "TOTAL too much", p("24", 0.2381), p("26", 0.2573), p("28", 0.2769), p("19", 0.1914), ),
  ("", "TOTAL too little", p("47", 0.4662), p("36", 0.3646), p("47", 0.4741), p("56", 0.5610), ),
  ("", "NET too little", n("23", 0.2281), n("11", 0.1074), n("20", 0.1971), n("37", 0.3695), ),
  ("Environment", "TOTAL too much", p("24", 0.2444), p("25", 0.2523), p("23", 0.2277), p("25", 0.2486), ),
  ("", "TOTAL too little", p("44", 0.4411), p("38", 0.3772), p("46", 0.4575), p("49", 0.4926), ),
  ("", "NET too little", n("20", 0.1967), n("12", 0.1249), n("23", 0.2297), n("24", 0.2441), ),
  ("Workers", "TOTAL too much", p("23", 0.2251), p("27", 0.2697), p("23", 0.2349), p("17", 0.1741), ),
  ("", "TOTAL too little", p("44", 0.4413), p("38", 0.3790), p("44", 0.4370), p("51", 0.5059), ),
  ("", "NET too little", n("22", 0.2161), n("11", 0.1092), n("20", 0.2021), n("33", 0.3318), ),
  ("Competitiveness", "TOTAL too much", p("21", 0.2080), p("25", 0.2497), p("17", 0.1741), p("19", 0.1908), ),
  ("", "TOTAL too little", p("31", 0.3086), p("26", 0.2628), p("33", 0.3320), p("34", 0.3372), ),
  ("", "NET too little", n("10", 0.1006), n("1", 0.0131), n("16", 0.1579), n("15", 0.1464), ),
))

#heading(level: 3, "By Household income")
#xtab(("Item", "Metric", ), ("Total", "<50k", "50k-<100k", "100k+", ), ("1057", "355", "339", "363", ), (
  ("Children", "TOTAL too much", p("24", 0.2381), p("28", 0.2816), p("22", 0.2248), p("19", 0.1924), ),
  ("", "TOTAL too little", p("47", 0.4662), p("37", 0.3666), p("50", 0.5009), p("57", 0.5665), ),
  ("", "NET too little", n("23", 0.2281), n("9", 0.0850), n("28", 0.2761), n("37", 0.3742), ),
  ("Environment", "TOTAL too much", p("24", 0.2444), p("28", 0.2794), p("22", 0.2172), p("22", 0.2234), ),
  ("", "TOTAL too little", p("44", 0.4411), p("33", 0.3306), p("51", 0.5136), p("52", 0.5204), ),
  ("", "NET too little", n("20", 0.1967), n("5", 0.0512), n("30", 0.2964), n("30", 0.2969), ),
  ("Workers", "TOTAL too much", p("23", 0.2251), p("31", 0.3054), p("21", 0.2097), p("13", 0.1323), ),
  ("", "TOTAL too little", p("44", 0.4413), p("36", 0.3609), p("48", 0.4776), p("51", 0.5145), ),
  ("", "NET too little", n("22", 0.2161), n("6", 0.0555), n("27", 0.2679), n("38", 0.3822), ),
  ("Competitiveness", "TOTAL too much", p("21", 0.2080), p("28", 0.2760), p("19", 0.1879), p("14", 0.1359), ),
  ("", "TOTAL too little", p("31", 0.3086), p("25", 0.2464), p("36", 0.3600), p("34", 0.3431), ),
  ("", "NET too little", n("10", 0.1006), n("−3", -0.0297), n("17", 0.1722), n("21", 0.2072), ),
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
#xtab(("Item", "Metric", ), ("Total", "Female", "Male", ), ("1057", "543", "514", ), (
  ("Superintelligence", "TOTAL likely", p("72", 0.7174), p("69", 0.6864), p("75", 0.7507), ),
  ("", "TOTAL unlikely", p("14", 0.1351), p("12", 0.1193), p("15", 0.1521), ),
  ("", "NET likely", n("58", 0.5823), n("57", 0.5671), n("60", 0.5986), ),
  ("Loss-of-control", "TOTAL likely", p("77", 0.7660), p("75", 0.7499), p("78", 0.7834), ),
  ("", "TOTAL unlikely", p("9", 0.0925), p("7", 0.0741), p("11", 0.1122), ),
  ("", "NET likely", n("67", 0.6736), n("68", 0.6758), n("67", 0.6712), ),
  ("Breakthroughs", "TOTAL likely", p("66", 0.6628), p("64", 0.6388), p("69", 0.6885), ),
  ("", "TOTAL unlikely", p("14", 0.1431), p("12", 0.1162), p("17", 0.1719), ),
  ("", "NET likely", n("52", 0.5197), n("52", 0.5226), n("52", 0.5166), ),
  ("WMDs", "TOTAL likely", p("70", 0.6964), p("70", 0.7026), p("69", 0.6896), ),
  ("", "TOTAL unlikely", p("11", 0.1124), p("8", 0.0758), p("15", 0.1517), ),
  ("", "NET likely", n("58", 0.5840), n("63", 0.6269), n("54", 0.5379), ),
))

#heading(level: 3, "By Party")
#xtab(("Item", "Metric", ), ("Total", "Dem", "Rep", "Ind", ), ("1057", "490", "382", "183", ), (
  ("Superintelligence", "TOTAL likely", p("72", 0.7174), p("75", 0.7452), p("73", 0.7266), p("64", 0.6444), ),
  ("", "TOTAL unlikely", p("14", 0.1351), p("13", 0.1271), p("15", 0.1503), p("12", 0.1238), ),
  ("", "NET likely", n("58", 0.5823), n("62", 0.6181), n("58", 0.5763), n("52", 0.5207), ),
  ("Loss-of-control", "TOTAL likely", p("77", 0.7660), p("83", 0.8254), p("75", 0.7530), p("68", 0.6753), ),
  ("", "TOTAL unlikely", p("9", 0.0925), p("7", 0.0680), p("11", 0.1085), p("11", 0.1119), ),
  ("", "NET likely", n("67", 0.6736), n("76", 0.7573), n("64", 0.6445), n("56", 0.5634), ),
  ("Breakthroughs", "TOTAL likely", p("66", 0.6628), p("71", 0.7070), p("67", 0.6733), p("56", 0.5592), ),
  ("", "TOTAL unlikely", p("14", 0.1431), p("13", 0.1336), p("16", 0.1555), p("14", 0.1384), ),
  ("", "NET likely", n("52", 0.5197), n("57", 0.5734), n("52", 0.5178), n("42", 0.4207), ),
  ("WMDs", "TOTAL likely", p("70", 0.6964), p("76", 0.7644), p("67", 0.6672), p("62", 0.6177), ),
  ("", "TOTAL unlikely", p("11", 0.1124), p("9", 0.0919), p("15", 0.1539), p("8", 0.0768), ),
  ("", "NET likely", n("58", 0.5840), n("67", 0.6726), n("51", 0.5132), n("54", 0.5409), ),
))

#heading(level: 3, "By Age")
#xtab(("Item", "Metric", ), ("Total", "18–34", "35–49", "50–64", "65+", ), ("1057", "236", "228", "248", "345", ), (
  ("Superintelligence", "TOTAL likely", p("72", 0.7174), p("66", 0.6550), p("73", 0.7312), p("76", 0.7623), p("74", 0.7356), ),
  ("", "TOTAL unlikely", p("14", 0.1351), p("13", 0.1284), p("16", 0.1552), p("10", 0.1035), p("15", 0.1523), ),
  ("", "NET likely", n("58", 0.5823), n("53", 0.5266), n("58", 0.5760), n("66", 0.6588), n("58", 0.5833), ),
  ("Loss-of-control", "TOTAL likely", p("77", 0.7660), p("67", 0.6667), p("80", 0.7967), p("82", 0.8155), p("81", 0.8065), ),
  ("", "TOTAL unlikely", p("9", 0.0925), p("10", 0.0965), p("11", 0.1120), p("7", 0.0657), p("9", 0.0928), ),
  ("", "NET likely", n("67", 0.6736), n("57", 0.5703), n("68", 0.6848), n("75", 0.7498), n("71", 0.7137), ),
  ("Breakthroughs", "TOTAL likely", p("66", 0.6628), p("53", 0.5333), p("64", 0.6419), p("73", 0.7293), p("78", 0.7755), ),
  ("", "TOTAL unlikely", p("14", 0.1431), p("20", 0.1968), p("12", 0.1203), p("13", 0.1295), p("12", 0.1150), ),
  ("", "NET likely", n("52", 0.5197), n("34", 0.3365), n("52", 0.5215), n("60", 0.5998), n("66", 0.6605), ),
  ("WMDs", "TOTAL likely", p("70", 0.6964), p("65", 0.6461), p("70", 0.7012), p("75", 0.7513), p("70", 0.6999), ),
  ("", "TOTAL unlikely", p("11", 0.1124), p("12", 0.1182), p("12", 0.1228), p("9", 0.0938), p("11", 0.1122), ),
  ("", "NET likely", n("58", 0.5840), n("53", 0.5278), n("58", 0.5784), n("66", 0.6575), n("59", 0.5877), ),
))

#heading(level: 3, "By Ethnicity")
#xtab(("Item", "Metric", ), ("Total", "White", "Black", "Hispanic", ), ("1057", "685", "117", "133", ), (
  ("Superintelligence", "TOTAL likely", p("72", 0.7174), p("70", 0.6966), p("62", 0.6195), p("81", 0.8070), ),
  ("", "TOTAL unlikely", p("14", 0.1351), p("16", 0.1636), p("11", 0.1084), p("7", 0.0722), ),
  ("", "NET likely", n("58", 0.5823), n("53", 0.5331), n("51", 0.5111), n("73", 0.7348), ),
  ("Loss-of-control", "TOTAL likely", p("77", 0.7660), p("80", 0.7998), p("65", 0.6462), p("73", 0.7335), ),
  ("", "TOTAL unlikely", p("9", 0.0925), p("9", 0.0857), p("9", 0.0869), p("12", 0.1151), ),
  ("", "NET likely", n("67", 0.6736), n("71", 0.7141), n("56", 0.5592), n("62", 0.6184), ),
  ("Breakthroughs", "TOTAL likely", p("66", 0.6628), p("65", 0.6535), p("57", 0.5735), p("69", 0.6853), ),
  ("", "TOTAL unlikely", p("14", 0.1431), p("15", 0.1502), p("10", 0.0958), p("16", 0.1587), ),
  ("", "NET likely", n("52", 0.5197), n("50", 0.5033), n("48", 0.4776), n("53", 0.5266), ),
  ("WMDs", "TOTAL likely", p("70", 0.6964), p("71", 0.7065), p("60", 0.6018), p("65", 0.6536), ),
  ("", "TOTAL unlikely", p("11", 0.1124), p("12", 0.1198), p("10", 0.0995), p("13", 0.1344), ),
  ("", "NET likely", n("58", 0.5840), n("59", 0.5867), n("50", 0.5023), n("52", 0.5192), ),
))

#heading(level: 3, "By Education")
#xtab(("Item", "Metric", ), ("Total", "HS or less", "Some college", "BA+", ), ("1057", "275", "367", "415", ), (
  ("Superintelligence", "TOTAL likely", p("72", 0.7174), p("70", 0.7021), p("74", 0.7394), p("72", 0.7169), ),
  ("", "TOTAL unlikely", p("14", 0.1351), p("11", 0.1122), p("11", 0.1143), p("17", 0.1727), ),
  ("", "NET likely", n("58", 0.5823), n("59", 0.5899), n("63", 0.6251), n("54", 0.5442), ),
  ("Loss-of-control", "TOTAL likely", p("77", 0.7660), p("69", 0.6933), p("75", 0.7544), p("85", 0.8462), ),
  ("", "TOTAL unlikely", p("9", 0.0925), p("10", 0.1040), p("9", 0.0911), p("8", 0.0820), ),
  ("", "NET likely", n("67", 0.6736), n("59", 0.5894), n("66", 0.6633), n("76", 0.7641), ),
  ("Breakthroughs", "TOTAL likely", p("66", 0.6628), p("57", 0.5657), p("67", 0.6726), p("75", 0.7517), ),
  ("", "TOTAL unlikely", p("14", 0.1431), p("16", 0.1600), p("12", 0.1204), p("14", 0.1425), ),
  ("", "NET likely", n("52", 0.5197), n("41", 0.4057), n("55", 0.5523), n("61", 0.6093), ),
  ("WMDs", "TOTAL likely", p("70", 0.6964), p("63", 0.6294), p("72", 0.7199), p("75", 0.7458), ),
  ("", "TOTAL unlikely", p("11", 0.1124), p("13", 0.1346), p("9", 0.0874), p("11", 0.1081), ),
  ("", "NET likely", n("58", 0.5840), n("49", 0.4948), n("63", 0.6325), n("64", 0.6376), ),
))

#heading(level: 3, "By Household income")
#xtab(("Item", "Metric", ), ("Total", "<50k", "50k-<100k", "100k+", ), ("1057", "355", "339", "363", ), (
  ("Superintelligence", "TOTAL likely", p("72", 0.7174), p("68", 0.6750), p("74", 0.7439), p("75", 0.7490), ),
  ("", "TOTAL unlikely", p("14", 0.1351), p("12", 0.1191), p("13", 0.1304), p("16", 0.1612), ),
  ("", "NET likely", n("58", 0.5823), n("56", 0.5559), n("61", 0.6136), n("59", 0.5879), ),
  ("Loss-of-control", "TOTAL likely", p("77", 0.7660), p("67", 0.6665), p("82", 0.8224), p("85", 0.8458), ),
  ("", "TOTAL unlikely", p("9", 0.0925), p("13", 0.1322), p("7", 0.0693), p("6", 0.0613), ),
  ("", "NET likely", n("67", 0.6736), n("53", 0.5344), n("75", 0.7532), n("78", 0.7845), ),
  ("Breakthroughs", "TOTAL likely", p("66", 0.6628), p("61", 0.6070), p("64", 0.6352), p("76", 0.7636), ),
  ("", "TOTAL unlikely", p("14", 0.1431), p("12", 0.1199), p("17", 0.1721), p("15", 0.1465), ),
  ("", "NET likely", n("52", 0.5197), n("49", 0.4871), n("46", 0.4631), n("62", 0.6170), ),
  ("WMDs", "TOTAL likely", p("70", 0.6964), p("64", 0.6367), p("74", 0.7395), p("74", 0.7354), ),
  ("", "TOTAL unlikely", p("11", 0.1124), p("13", 0.1284), p("8", 0.0811), p("12", 0.1206), ),
  ("", "NET likely", n("58", 0.5840), n("51", 0.5083), n("66", 0.6583), n("61", 0.6148), ),
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

This is the eighth tracking wave of the *Americans on AI* survey, a
project of Athena Insights.

Respondents were interviewed between October 8 and 12, 2026 as part of NORC's
AmeriSpeak Omnibus. AmeriSpeak is a probability-based household panel
recruited by address-based sampling from the NORC National Frame, designed
to be representative of the US household population. Interviews were
conducted online (96%) and by phone (4%), in English; 1,057 adults
completed the module.

Results are weighted with NORC's vote-choice study weights. NORC first
adjusts the panel base weights for sample selection and nonresponse and
rakes to Current Population Survey benchmarks on age, sex, census
division, race/ethnicity, and education; a second round of raking then
adds 2024 presidential vote choice. The voter shares are benchmarked to
the 2024 election results. This yields a design effect of 1.86 and
an effective sample size of 567. This wave fields no oversamples:
the achieved sample follows population shares. Standard errors are
design-based (Taylor linearization over NORC's variance strata and
units).

The full-sample margin of error is ±4.1 percentage points at 95%
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

Unweighted demographic composition of the achieved sample (n=1,057).

This wave fields no oversamples, so unweighted shares approximate population shares; the report's figures are weighted to NORC's Current Population Survey benchmarks (see the methodology). *Party* is profiled by NORC, not a weighting dimension of this module's design.

#comp(("Dimension", "Group", "n", "%", ), (
  ("Sex", "Female", "543", "51", ),
  ("", "Male", "514", "49", ),
  ("Party", "Dem", "490", "46", ),
  ("", "Rep", "382", "36", ),
  ("", "Ind", "183", "17", ),
  ("", "Unknown", "2", "0", ),
  ("Age", "18–34", "236", "22", ),
  ("", "35–49", "228", "22", ),
  ("", "50–64", "248", "23", ),
  ("", "65+", "345", "33", ),
  ("Ethnicity", "White", "685", "65", ),
  ("", "Black", "117", "11", ),
  ("", "Hispanic", "133", "13", ),
  ("", "Asian/PI", "74", "7", ),
  ("", "Two or more", "34", "3", ),
  ("", "Other", "14", "1", ),
  ("Education", "HS or less", "275", "26", ),
  ("", "Some college", "367", "35", ),
  ("", "BA+", "415", "39", ),
  ("Household income", "<50k", "355", "34", ),
  ("", "50k-<100k", "339", "32", ),
  ("", "100k+", "363", "34", ),
))
