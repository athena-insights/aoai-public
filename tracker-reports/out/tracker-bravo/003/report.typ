#import "/tracker-reports/report.typ": *
#show: report.with(title: "Americans on AI — 28 July 2026")

Athena Insights surveyed 1,815 US adults from July 23-28, 2026, via NORC's AmeriSpeak Panel, a probability-based panel designed to be representative of the US household population.

This release includes the results of that survey as a whole-sample topline, then as crosstabs broken out by subgroup, followed by appendices covering the questionnaire, methodology, and unweighted sample composition.

Results are weighted to US population benchmarks; the full-sample margin of error is ±3.1 percentage points at 95% confidence, accounting for the design effect of weighting. 

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
  ("Jobs", p("50", 0.4993), p("39", 0.3865), p("7", 0.0705), p("1", 0.0099), p("3", 0.0299), ),
  ("Inflation", p("67", 0.6706), p("26", 0.2586), p("3", 0.0330), p("1", 0.0056), p("3", 0.0250), ),
  ("AI harms", p("41", 0.4136), p("41", 0.4137), p("10", 0.1002), p("2", 0.0210), p("5", 0.0459), ),
  ("Immigration", p("39", 0.3854), p("35", 0.3479), p("16", 0.1634), p("6", 0.0639), p("3", 0.0340), ),
  ("Health care", p("69", 0.6899), p("23", 0.2349), p("3", 0.0342), p("1", 0.0132), p("2", 0.0216), ),
  ("Crime", p("57", 0.5740), p("32", 0.3208), p("6", 0.0575), p("2", 0.0160), p("2", 0.0246), ),
  ("Climate change", p("37", 0.3692), p("32", 0.3243), p("14", 0.1369), p("12", 0.1196), p("4", 0.0404), ),
))

#heading(level: 2, "Affect")

#stem("Thinking about AI's growing role in society, which of these options comes closest to how you feel, even if none are exactly right?")

#note[*Response distribution (weighted)* — % of all respondents. "No answer" (2% or less) is not shown.]
#dist(("Response", "%", ), (
  ("Very excited", p("5", 0.0483), ),
  ("Somewhat excited", p("15", 0.1463), ),
  ("Somewhat concerned", p("37", 0.3702), ),
  ("Very concerned", p("35", 0.3484), ),
  ("None of these are close to how I feel", p("8", 0.0835), ),
))

#heading(level: 2, "Agency")

#stem("Again, thinking about AI, which statement comes closer to your view, even if neither is exactly right?")

#note[*Response distribution (weighted)* — % of all respondents. "No answer" (2% or less) is not shown.]
#dist(("Response", "%", ), (
  ("People like me can shape how much AI is part of our lives", p("13", 0.1346), ),
  ("AI is coming into our lives whether we want it or not", p("72", 0.7203), ),
  ("Neither of these are close to how I feel", p("14", 0.1368), ),
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
  ("Saving time", p("18", 0.1781), p("26", 0.2597), p("17", 0.1697), p("16", 0.1622), p("22", 0.2223), ),
  ("Pressured to do more", p("22", 0.2229), p("25", 0.2454), p("19", 0.1899), p("8", 0.0841), p("25", 0.2506), ),
  ("Losing connections", p("34", 0.3391), p("26", 0.2621), p("16", 0.1553), p("9", 0.0870), p("15", 0.1535), ),
  ("Real vs. fake", p("57", 0.5719), p("24", 0.2385), p("8", 0.0766), p("3", 0.0324), p("8", 0.0770), ),
  ("Better health care", p("5", 0.0501), p("10", 0.1002), p("18", 0.1809), p("37", 0.3706), p("29", 0.2937), ),
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
  ("Jobs", p("3", 0.0256), p("8", 0.0839), p("40", 0.4004), p("36", 0.3586), p("11", 0.1052), p("3", 0.0263), ),
  ("Future", p("5", 0.0454), p("23", 0.2281), p("35", 0.3507), p("24", 0.2413), p("11", 0.1050), p("3", 0.0296), ),
  ("Children", p("3", 0.0263), p("11", 0.1134), p("36", 0.3565), p("33", 0.3295), p("15", 0.1517), p("2", 0.0226), ),
  ("Finances", p("4", 0.0352), p("17", 0.1655), p("28", 0.2753), p("15", 0.1527), p("34", 0.3394), p("3", 0.0320), ),
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
  ("Children", p("14", 0.1443), p("11", 0.1105), p("11", 0.1095), p("15", 0.1465), p("29", 0.2888), p("19", 0.1899), ),
  ("Environment", p("13", 0.1321), p("10", 0.1029), p("11", 0.1142), p("13", 0.1297), p("33", 0.3292), p("18", 0.1808), ),
  ("Workers", p("10", 0.1037), p("13", 0.1286), p("15", 0.1470), p("18", 0.1768), p("25", 0.2482), p("18", 0.1847), ),
  ("Competitiveness", p("10", 0.1046), p("11", 0.1068), p("19", 0.1914), p("16", 0.1606), p("15", 0.1533), p("27", 0.2732), ),
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
  ("Superintelligence", p("28", 0.2844), p("40", 0.4028), p("12", 0.1189), p("5", 0.0466), p("14", 0.1351), ),
  ("Loss-of-control", p("35", 0.3471), p("44", 0.4408), p("6", 0.0574), p("2", 0.0190), p("12", 0.1235), ),
  ("Breakthroughs", p("18", 0.1825), p("46", 0.4637), p("13", 0.1260), p("5", 0.0482), p("17", 0.1664), ),
  ("WMDs", p("17", 0.1734), p("50", 0.4971), p("8", 0.0818), p("3", 0.0287), p("20", 0.2032), ),
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
#xtab(("Item", "Metric", ), ("Total", "Female", "Male", ), ("1815", "908", "907", ), (
  ("Jobs", "TOTAL high priority", p("89", 0.8858), p("90", 0.8978), p("87", 0.8728), ),
  ("", "TOTAL lower priority", p("8", 0.0804), p("6", 0.0605), p("10", 0.1018), ),
  ("", "NET priority", n("81", 0.8053), n("84", 0.8374), n("77", 0.7710), ),
  ("Inflation", "TOTAL high priority", p("93", 0.9292), p("93", 0.9278), p("93", 0.9306), ),
  ("", "TOTAL lower priority", p("4", 0.0386), p("3", 0.0277), p("5", 0.0502), ),
  ("", "NET priority", n("89", 0.8906), n("90", 0.9001), n("88", 0.8804), ),
  ("AI harms", "TOTAL high priority", p("83", 0.8274), p("83", 0.8280), p("83", 0.8267), ),
  ("", "TOTAL lower priority", p("12", 0.1213), p("10", 0.0986), p("15", 0.1457), ),
  ("", "NET priority", n("71", 0.7061), n("73", 0.7294), n("68", 0.6810), ),
  ("Immigration", "TOTAL high priority", p("73", 0.7334), p("73", 0.7333), p("73", 0.7334), ),
  ("", "TOTAL lower priority", p("23", 0.2273), p("22", 0.2151), p("24", 0.2405), ),
  ("", "NET priority", n("51", 0.5060), n("52", 0.5183), n("49", 0.4929), ),
  ("Health care", "TOTAL high priority", p("92", 0.9248), p("93", 0.9250), p("92", 0.9246), ),
  ("", "TOTAL lower priority", p("5", 0.0474), p("3", 0.0337), p("6", 0.0622), ),
  ("", "NET priority", n("88", 0.8774), n("89", 0.8913), n("86", 0.8625), ),
  ("Crime", "TOTAL high priority", p("89", 0.8948), p("90", 0.9023), p("89", 0.8867), ),
  ("", "TOTAL lower priority", p("7", 0.0735), p("5", 0.0479), p("10", 0.1009), ),
  ("", "NET priority", n("82", 0.8213), n("85", 0.8544), n("79", 0.7858), ),
  ("Climate change", "TOTAL high priority", p("69", 0.6935), p("73", 0.7313), p("65", 0.6529), ),
  ("", "TOTAL lower priority", p("26", 0.2565), p("21", 0.2120), p("30", 0.3043), ),
  ("", "NET priority", n("44", 0.4370), n("52", 0.5193), n("35", 0.3487), ),
))

#heading(level: 3, "By Party")
#xtab(("Item", "Metric", ), ("Total", "Dem", "Rep", "Ind", ), ("1815", "938", "482", "387", ), (
  ("Jobs", "TOTAL high priority", p("89", 0.8858), p("94", 0.9394), p("85", 0.8491), p("87", 0.8735), ),
  ("", "TOTAL lower priority", p("8", 0.0804), p("4", 0.0364), p("13", 0.1315), p("7", 0.0729), ),
  ("", "NET priority", n("81", 0.8053), n("90", 0.9030), n("72", 0.7176), n("80", 0.8006), ),
  ("Inflation", "TOTAL high priority", p("93", 0.9292), p("94", 0.9437), p("94", 0.9428), p("90", 0.9038), ),
  ("", "TOTAL lower priority", p("4", 0.0386), p("3", 0.0312), p("4", 0.0424), p("4", 0.0435), ),
  ("", "NET priority", n("89", 0.8906), n("91", 0.9125), n("90", 0.9005), n("86", 0.8603), ),
  ("AI harms", "TOTAL high priority", p("83", 0.8274), p("85", 0.8495), p("83", 0.8295), p("80", 0.8049), ),
  ("", "TOTAL lower priority", p("12", 0.1213), p("10", 0.1039), p("13", 0.1251), p("14", 0.1431), ),
  ("", "NET priority", n("71", 0.7061), n("75", 0.7456), n("70", 0.7044), n("66", 0.6617), ),
  ("Immigration", "TOTAL high priority", p("73", 0.7334), p("60", 0.6019), p("92", 0.9173), p("68", 0.6758), ),
  ("", "TOTAL lower priority", p("23", 0.2273), p("38", 0.3813), p("6", 0.0581), p("25", 0.2460), ),
  ("", "NET priority", n("51", 0.5060), n("22", 0.2205), n("86", 0.8592), n("43", 0.4297), ),
  ("Health care", "TOTAL high priority", p("92", 0.9248), p("96", 0.9622), p("93", 0.9260), p("88", 0.8848), ),
  ("", "TOTAL lower priority", p("5", 0.0474), p("2", 0.0243), p("6", 0.0566), p("7", 0.0668), ),
  ("", "NET priority", n("88", 0.8774), n("94", 0.9378), n("87", 0.8694), n("82", 0.8180), ),
  ("Crime", "TOTAL high priority", p("89", 0.8948), p("86", 0.8588), p("95", 0.9503), p("88", 0.8834), ),
  ("", "TOTAL lower priority", p("7", 0.0735), p("12", 0.1152), p("4", 0.0369), p("6", 0.0647), ),
  ("", "NET priority", n("82", 0.8213), n("74", 0.7436), n("91", 0.9134), n("82", 0.8187), ),
  ("Climate change", "TOTAL high priority", p("69", 0.6935), p("91", 0.9106), p("45", 0.4505), p("73", 0.7306), ),
  ("", "TOTAL lower priority", p("26", 0.2565), p("7", 0.0663), p("51", 0.5075), p("18", 0.1830), ),
  ("", "NET priority", n("44", 0.4370), n("84", 0.8443), n("−6", -0.0570), n("55", 0.5476), ),
))

#heading(level: 3, "By Age")
#xtab(("Item", "Metric", ), ("Total", "18–34", "35–49", "50–64", "65+", ), ("1815", "479", "456", "474", "406", ), (
  ("Jobs", "TOTAL high priority", p("89", 0.8858), p("84", 0.8357), p("92", 0.9169), p("89", 0.8934), p("91", 0.9064), ),
  ("", "TOTAL lower priority", p("8", 0.0804), p("10", 0.1049), p("5", 0.0510), p("9", 0.0911), p("7", 0.0711), ),
  ("", "NET priority", n("81", 0.8053), n("73", 0.7308), n("87", 0.8658), n("80", 0.8022), n("84", 0.8353), ),
  ("Inflation", "TOTAL high priority", p("93", 0.9292), p("85", 0.8524), p("94", 0.9422), p("96", 0.9624), p("98", 0.9761), ),
  ("", "TOTAL lower priority", p("4", 0.0386), p("7", 0.0670), p("4", 0.0393), p("3", 0.0302), p("1", 0.0120), ),
  ("", "NET priority", n("89", 0.8906), n("79", 0.7854), n("90", 0.9029), n("93", 0.9322), n("96", 0.9641), ),
  ("AI harms", "TOTAL high priority", p("83", 0.8274), p("76", 0.7618), p("84", 0.8362), p("84", 0.8415), p("88", 0.8831), ),
  ("", "TOTAL lower priority", p("12", 0.1213), p("15", 0.1548), p("14", 0.1380), p("12", 0.1173), p("7", 0.0683), ),
  ("", "NET priority", n("71", 0.7061), n("61", 0.6070), n("70", 0.6982), n("72", 0.7242), n("81", 0.8148), ),
  ("Immigration", "TOTAL high priority", p("73", 0.7334), p("55", 0.5505), p("73", 0.7322), p("81", 0.8127), p("88", 0.8773), ),
  ("", "TOTAL lower priority", p("23", 0.2273), p("36", 0.3554), p("25", 0.2466), p("17", 0.1681), p("11", 0.1111), ),
  ("", "NET priority", n("51", 0.5060), n("20", 0.1951), n("49", 0.4856), n("64", 0.6446), n("77", 0.7663), ),
  ("Health care", "TOTAL high priority", p("92", 0.9248), p("85", 0.8497), p("94", 0.9390), p("95", 0.9498), p("98", 0.9762), ),
  ("", "TOTAL lower priority", p("5", 0.0474), p("8", 0.0798), p("4", 0.0409), p("5", 0.0461), p("2", 0.0170), ),
  ("", "NET priority", n("88", 0.8774), n("77", 0.7700), n("90", 0.8981), n("90", 0.9037), n("96", 0.9592), ),
  ("Crime", "TOTAL high priority", p("89", 0.8948), p("80", 0.7976), p("90", 0.9028), p("93", 0.9338), p("97", 0.9654), ),
  ("", "TOTAL lower priority", p("7", 0.0735), p("12", 0.1229), p("7", 0.0725), p("6", 0.0643), p("2", 0.0244), ),
  ("", "NET priority", n("82", 0.8213), n("67", 0.6748), n("83", 0.8303), n("87", 0.8695), n("94", 0.9410), ),
  ("Climate change", "TOTAL high priority", p("69", 0.6935), p("70", 0.7020), p("71", 0.7147), p("70", 0.6980), p("66", 0.6579), ),
  ("", "TOTAL lower priority", p("26", 0.2565), p("20", 0.2024), p("24", 0.2377), p("28", 0.2843), p("31", 0.3136), ),
  ("", "NET priority", n("44", 0.4370), n("50", 0.4996), n("48", 0.4769), n("41", 0.4137), n("34", 0.3443), ),
))

#heading(level: 3, "By Ethnicity")
#xtab(("Item", "Metric", ), ("Total", "White", "Black", "Hispanic", ), ("1815", "706", "518", "452", ), (
  ("Jobs", "TOTAL high priority", p("89", 0.8858), p("87", 0.8742), p("88", 0.8828), p("92", 0.9182), ),
  ("", "TOTAL lower priority", p("8", 0.0804), p("9", 0.0909), p("7", 0.0707), p("6", 0.0582), ),
  ("", "NET priority", n("81", 0.8053), n("78", 0.7834), n("81", 0.8121), n("86", 0.8600), ),
  ("Inflation", "TOTAL high priority", p("93", 0.9292), p("94", 0.9375), p("91", 0.9080), p("92", 0.9184), ),
  ("", "TOTAL lower priority", p("4", 0.0386), p("3", 0.0335), p("5", 0.0497), p("5", 0.0544), ),
  ("", "NET priority", n("89", 0.8906), n("90", 0.9040), n("86", 0.8583), n("86", 0.8640), ),
  ("AI harms", "TOTAL high priority", p("83", 0.8274), p("84", 0.8379), p("76", 0.7550), p("81", 0.8148), ),
  ("", "TOTAL lower priority", p("12", 0.1213), p("11", 0.1101), p("18", 0.1844), p("13", 0.1313), ),
  ("", "NET priority", n("71", 0.7061), n("73", 0.7277), n("57", 0.5706), n("68", 0.6835), ),
  ("Immigration", "TOTAL high priority", p("73", 0.7334), p("77", 0.7711), p("70", 0.6950), p("70", 0.6962), ),
  ("", "TOTAL lower priority", p("23", 0.2273), p("19", 0.1929), p("25", 0.2546), p("25", 0.2523), ),
  ("", "NET priority", n("51", 0.5060), n("58", 0.5782), n("44", 0.4404), n("44", 0.4439), ),
  ("Health care", "TOTAL high priority", p("92", 0.9248), p("94", 0.9410), p("91", 0.9117), p("89", 0.8947), ),
  ("", "TOTAL lower priority", p("5", 0.0474), p("4", 0.0402), p("5", 0.0543), p("6", 0.0606), ),
  ("", "NET priority", n("88", 0.8774), n("90", 0.9007), n("86", 0.8574), n("83", 0.8341), ),
  ("Crime", "TOTAL high priority", p("89", 0.8948), p("92", 0.9157), p("88", 0.8813), p("86", 0.8637), ),
  ("", "TOTAL lower priority", p("7", 0.0735), p("6", 0.0601), p("8", 0.0764), p("10", 0.0957), ),
  ("", "NET priority", n("82", 0.8213), n("86", 0.8556), n("80", 0.8049), n("77", 0.7680), ),
  ("Climate change", "TOTAL high priority", p("69", 0.6935), p("65", 0.6538), p("80", 0.8036), p("69", 0.6939), ),
  ("", "TOTAL lower priority", p("26", 0.2565), p("30", 0.3024), p("13", 0.1284), p("24", 0.2426), ),
  ("", "NET priority", n("44", 0.4370), n("35", 0.3514), n("68", 0.6752), n("45", 0.4513), ),
))

#heading(level: 3, "By Education")
#xtab(("Item", "Metric", ), ("Total", "HS or less", "Some college", "BA+", ), ("1815", "551", "648", "616", ), (
  ("Jobs", "TOTAL high priority", p("89", 0.8858), p("83", 0.8330), p("92", 0.9223), p("91", 0.9120), ),
  ("", "TOTAL lower priority", p("8", 0.0804), p("10", 0.0965), p("6", 0.0586), p("8", 0.0801), ),
  ("", "NET priority", n("81", 0.8053), n("74", 0.7365), n("86", 0.8637), n("83", 0.8319), ),
  ("Inflation", "TOTAL high priority", p("93", 0.9292), p("88", 0.8775), p("98", 0.9771), p("95", 0.9461), ),
  ("", "TOTAL lower priority", p("4", 0.0386), p("6", 0.0562), p("1", 0.0145), p("4", 0.0383), ),
  ("", "NET priority", n("89", 0.8906), n("82", 0.8214), n("96", 0.9626), n("91", 0.9078), ),
  ("AI harms", "TOTAL high priority", p("83", 0.8274), p("77", 0.7650), p("88", 0.8814), p("85", 0.8507), ),
  ("", "TOTAL lower priority", p("12", 0.1213), p("14", 0.1398), p("9", 0.0904), p("12", 0.1248), ),
  ("", "NET priority", n("71", 0.7061), n("63", 0.6251), n("79", 0.7909), n("73", 0.7258), ),
  ("Immigration", "TOTAL high priority", p("73", 0.7334), p("69", 0.6948), p("79", 0.7922), p("73", 0.7296), ),
  ("", "TOTAL lower priority", p("23", 0.2273), p("22", 0.2181), p("19", 0.1922), p("26", 0.2614), ),
  ("", "NET priority", n("51", 0.5060), n("48", 0.4767), n("60", 0.5999), n("47", 0.4683), ),
  ("Health care", "TOTAL high priority", p("92", 0.9248), p("88", 0.8848), p("95", 0.9536), p("94", 0.9439), ),
  ("", "TOTAL lower priority", p("5", 0.0474), p("5", 0.0534), p("3", 0.0332), p("5", 0.0516), ),
  ("", "NET priority", n("88", 0.8774), n("83", 0.8313), n("92", 0.9203), n("89", 0.8923), ),
  ("Crime", "TOTAL high priority", p("89", 0.8948), p("87", 0.8734), p("94", 0.9445), p("88", 0.8805), ),
  ("", "TOTAL lower priority", p("7", 0.0735), p("7", 0.0651), p("4", 0.0374), p("11", 0.1075), ),
  ("", "NET priority", n("82", 0.8213), n("81", 0.8084), n("91", 0.9071), n("77", 0.7730), ),
  ("Climate change", "TOTAL high priority", p("69", 0.6935), p("67", 0.6692), p("69", 0.6875), p("72", 0.7218), ),
  ("", "TOTAL lower priority", p("26", 0.2565), p("25", 0.2542), p("26", 0.2579), p("26", 0.2577), ),
  ("", "NET priority", n("44", 0.4370), n("42", 0.4150), n("43", 0.4295), n("46", 0.4642), ),
))

#heading(level: 3, "By Household income")
#xtab(("Item", "Metric", ), ("Total", "<50k", "50k-<100k", "100k+", ), ("1815", "715", "574", "526", ), (
  ("Jobs", "TOTAL high priority", p("89", 0.8858), p("88", 0.8766), p("89", 0.8869), p("90", 0.8964), ),
  ("", "TOTAL lower priority", p("8", 0.0804), p("7", 0.0721), p("9", 0.0876), p("8", 0.0837), ),
  ("", "NET priority", n("81", 0.8053), n("80", 0.8045), n("80", 0.7993), n("81", 0.8127), ),
  ("Inflation", "TOTAL high priority", p("93", 0.9292), p("90", 0.9005), p("93", 0.9340), p("96", 0.9612), ),
  ("", "TOTAL lower priority", p("4", 0.0386), p("5", 0.0460), p("3", 0.0341), p("3", 0.0336), ),
  ("", "NET priority", n("89", 0.8906), n("85", 0.8546), n("90", 0.9000), n("93", 0.9276), ),
  ("AI harms", "TOTAL high priority", p("83", 0.8274), p("81", 0.8060), p("83", 0.8289), p("85", 0.8535), ),
  ("", "TOTAL lower priority", p("12", 0.1213), p("12", 0.1205), p("12", 0.1229), p("12", 0.1206), ),
  ("", "NET priority", n("71", 0.7061), n("69", 0.6855), n("71", 0.7060), n("73", 0.7329), ),
  ("Immigration", "TOTAL high priority", p("73", 0.7334), p("73", 0.7262), p("73", 0.7305), p("75", 0.7456), ),
  ("", "TOTAL lower priority", p("23", 0.2273), p("21", 0.2091), p("24", 0.2366), p("24", 0.2413), ),
  ("", "NET priority", n("51", 0.5060), n("52", 0.5171), n("49", 0.4939), n("50", 0.5043), ),
  ("Health care", "TOTAL high priority", p("92", 0.9248), p("92", 0.9175), p("92", 0.9186), p("94", 0.9406), ),
  ("", "TOTAL lower priority", p("5", 0.0474), p("4", 0.0372), p("6", 0.0599), p("5", 0.0479), ),
  ("", "NET priority", n("88", 0.8774), n("88", 0.8803), n("86", 0.8588), n("89", 0.8928), ),
  ("Crime", "TOTAL high priority", p("89", 0.8948), p("88", 0.8846), p("91", 0.9116), p("89", 0.8906), ),
  ("", "TOTAL lower priority", p("7", 0.0735), p("7", 0.0667), p("6", 0.0591), p("10", 0.0971), ),
  ("", "NET priority", n("82", 0.8213), n("82", 0.8179), n("85", 0.8525), n("79", 0.7935), ),
  ("Climate change", "TOTAL high priority", p("69", 0.6935), p("66", 0.6596), p("69", 0.6913), p("74", 0.7397), ),
  ("", "TOTAL lower priority", p("26", 0.2565), p("26", 0.2561), p("27", 0.2657), p("25", 0.2474), ),
  ("", "NET priority", n("44", 0.4370), n("40", 0.4035), n("43", 0.4257), n("49", 0.4923), ),
))

#heading(level: 2, "Affect")

#stem("Thinking about AI's growing role in society, which of these options comes closest to how you feel, even if none are exactly right?")

#defs("Each total combines multiple responses:", ("Total", "Responses", ), (
  ("TOTAL excited", "\"Very excited\" or \"Somewhat excited\"", ),
  ("TOTAL concerned", "\"Somewhat concerned\" or \"Very concerned\"", ),
))

#note[Cells (weighted): totals (%) and net (percentage points).]
#heading(level: 3, "By Sex")
#xtab(("Metric", ), ("Total", "Female", "Male", ), ("1815", "908", "907", ), (
  ("TOTAL excited", p("19", 0.1945), p("18", 0.1758), p("21", 0.2147), ),
  ("TOTAL concerned", p("72", 0.7187), p("72", 0.7165), p("72", 0.7210), ),
  ("None of these", p("8", 0.0835), p("10", 0.1023), p("6", 0.0632), ),
  ("No answer", p("<1", 0.0033), p("1", 0.0053), p("<1", 0.0011), ),
  ("NET concerned", n("52", 0.5241), n("54", 0.5407), n("51", 0.5063), ),
))

#heading(level: 3, "By Party")
#xtab(("Metric", ), ("Total", "Dem", "Rep", "Ind", ), ("1815", "938", "482", "387", ), (
  ("TOTAL excited", p("19", 0.1945), p("19", 0.1933), p("19", 0.1860), p("21", 0.2123), ),
  ("TOTAL concerned", p("72", 0.7187), p("76", 0.7577), p("72", 0.7222), p("67", 0.6678), ),
  ("None of these", p("8", 0.0835), p("4", 0.0440), p("9", 0.0908), p("12", 0.1190), ),
  ("No answer", p("<1", 0.0033), p("1", 0.0051), p("<1", 0.0011), p("<1", 0.0008), ),
  ("NET concerned", n("52", 0.5241), n("56", 0.5644), n("54", 0.5362), n("46", 0.4555), ),
))

#heading(level: 3, "By Age")
#xtab(("Metric", ), ("Total", "18–34", "35–49", "50–64", "65+", ), ("1815", "479", "456", "474", "406", ), (
  ("TOTAL excited", p("19", 0.1945), p("23", 0.2260), p("22", 0.2227), p("22", 0.2188), p("11", 0.1061), ),
  ("TOTAL concerned", p("72", 0.7187), p("67", 0.6706), p("68", 0.6808), p("70", 0.7022), p("83", 0.8294), ),
  ("None of these", p("8", 0.0835), p("10", 0.0969), p("10", 0.0959), p("8", 0.0784), p("6", 0.0596), ),
  ("No answer", p("<1", 0.0033), p("1", 0.0064), p("<1", 0.0005), p("<1", 0.0006), p("<1", 0.0049), ),
  ("NET concerned", n("52", 0.5241), n("44", 0.4446), n("46", 0.4581), n("48", 0.4834), n("72", 0.7233), ),
))

#heading(level: 3, "By Ethnicity")
#xtab(("Metric", ), ("Total", "White", "Black", "Hispanic", ), ("1815", "706", "518", "452", ), (
  ("TOTAL excited", p("19", 0.1945), p("17", 0.1670), p("21", 0.2132), p("21", 0.2113), ),
  ("TOTAL concerned", p("72", 0.7187), p("74", 0.7428), p("68", 0.6829), p("72", 0.7185), ),
  ("None of these", p("8", 0.0835), p("9", 0.0867), p("10", 0.1015), p("7", 0.0660), ),
  ("No answer", p("<1", 0.0033), p("<1", 0.0035), p("<1", 0.0024), p("<1", 0.0042), ),
  ("NET concerned", n("52", 0.5241), n("58", 0.5758), n("47", 0.4697), n("51", 0.5071), ),
))

#heading(level: 3, "By Education")
#xtab(("Metric", ), ("Total", "HS or less", "Some college", "BA+", ), ("1815", "551", "648", "616", ), (
  ("TOTAL excited", p("19", 0.1945), p("18", 0.1813), p("14", 0.1416), p("25", 0.2453), ),
  ("TOTAL concerned", p("72", 0.7187), p("67", 0.6665), p("79", 0.7930), p("72", 0.7174), ),
  ("None of these", p("8", 0.0835), p("15", 0.1456), p("6", 0.0631), p("4", 0.0365), ),
  ("No answer", p("<1", 0.0033), p("1", 0.0066), p("<1", 0.0023), p("<1", 0.0007), ),
  ("NET concerned", n("52", 0.5241), n("49", 0.4851), n("65", 0.6515), n("47", 0.4722), ),
))

#heading(level: 3, "By Household income")
#xtab(("Metric", ), ("Total", "<50k", "50k-<100k", "100k+", ), ("1815", "715", "574", "526", ), (
  ("TOTAL excited", p("19", 0.1945), p("18", 0.1772), p("18", 0.1798), p("23", 0.2323), ),
  ("TOTAL concerned", p("72", 0.7187), p("69", 0.6904), p("76", 0.7553), p("72", 0.7176), ),
  ("None of these", p("8", 0.0835), p("13", 0.1302), p("6", 0.0583), p("5", 0.0488), ),
  ("No answer", p("<1", 0.0033), p("<1", 0.0022), p("1", 0.0066), p("<1", 0.0013), ),
  ("NET concerned", n("52", 0.5241), n("51", 0.5133), n("58", 0.5755), n("49", 0.4853), ),
))

#heading(level: 2, "Agency")

#stem("Again, thinking about AI, which statement comes closer to your view, even if neither is exactly right?")

#note[Cells (weighted): totals (%) and net (percentage points).]
#heading(level: 3, "By Sex")
#xtab(("Metric", ), ("Total", "Female", "Male", ), ("1815", "908", "907", ), (
  ("TOTAL can shape", p("13", 0.1346), p("12", 0.1201), p("15", 0.1502), ),
  ("TOTAL inevitable", p("72", 0.7203), p("71", 0.7085), p("73", 0.7331), ),
  ("Neither of these", p("14", 0.1368), p("16", 0.1634), p("11", 0.1082), ),
  ("No answer", p("1", 0.0083), p("1", 0.0081), p("1", 0.0085), ),
  ("NET inevitable", n("59", 0.5857), n("59", 0.5884), n("58", 0.5829), ),
))

#heading(level: 3, "By Party")
#xtab(("Metric", ), ("Total", "Dem", "Rep", "Ind", ), ("1815", "938", "482", "387", ), (
  ("TOTAL can shape", p("13", 0.1346), p("13", 0.1300), p("16", 0.1594), p("11", 0.1093), ),
  ("TOTAL inevitable", p("72", 0.7203), p("76", 0.7637), p("74", 0.7400), p("64", 0.6394), ),
  ("Neither of these", p("14", 0.1368), p("10", 0.0950), p("10", 0.0989), p("24", 0.2403), ),
  ("No answer", p("1", 0.0083), p("1", 0.0113), p("<1", 0.0017), p("1", 0.0110), ),
  ("NET inevitable", n("59", 0.5857), n("63", 0.6337), n("58", 0.5805), n("53", 0.5301), ),
))

#heading(level: 3, "By Age")
#xtab(("Metric", ), ("Total", "18–34", "35–49", "50–64", "65+", ), ("1815", "479", "456", "474", "406", ), (
  ("TOTAL can shape", p("13", 0.1346), p("20", 0.2002), p("13", 0.1253), p("11", 0.1111), p("9", 0.0881), ),
  ("TOTAL inevitable", p("72", 0.7203), p("60", 0.6003), p("76", 0.7586), p("76", 0.7614), p("79", 0.7856), ),
  ("Neither of these", p("14", 0.1368), p("18", 0.1825), p("11", 0.1148), p("13", 0.1275), p("11", 0.1136), ),
  ("No answer", p("1", 0.0083), p("2", 0.0169), p("<1", 0.0014), p("0", 0.0000), p("1", 0.0128), ),
  ("NET inevitable", n("59", 0.5857), n("40", 0.4001), n("63", 0.6333), n("65", 0.6503), n("70", 0.6975), ),
))

#heading(level: 3, "By Ethnicity")
#xtab(("Metric", ), ("Total", "White", "Black", "Hispanic", ), ("1815", "706", "518", "452", ), (
  ("TOTAL can shape", p("13", 0.1346), p("11", 0.1110), p("17", 0.1683), p("16", 0.1573), ),
  ("TOTAL inevitable", p("72", 0.7203), p("75", 0.7496), p("66", 0.6649), p("68", 0.6821), ),
  ("Neither of these", p("14", 0.1368), p("13", 0.1282), p("16", 0.1599), p("16", 0.1554), ),
  ("No answer", p("1", 0.0083), p("1", 0.0111), p("1", 0.0070), p("1", 0.0053), ),
  ("NET inevitable", n("59", 0.5857), n("64", 0.6386), n("50", 0.4966), n("52", 0.5248), ),
))

#heading(level: 3, "By Education")
#xtab(("Metric", ), ("Total", "HS or less", "Some college", "BA+", ), ("1815", "551", "648", "616", ), (
  ("TOTAL can shape", p("13", 0.1346), p("13", 0.1259), p("10", 0.1011), p("17", 0.1670), ),
  ("TOTAL inevitable", p("72", 0.7203), p("65", 0.6513), p("76", 0.7586), p("76", 0.7614), ),
  ("Neither of these", p("14", 0.1368), p("21", 0.2065), p("14", 0.1391), p("7", 0.0662), ),
  ("No answer", p("1", 0.0083), p("2", 0.0163), p("<1", 0.0012), p("1", 0.0054), ),
  ("NET inevitable", n("59", 0.5857), n("53", 0.5254), n("66", 0.6575), n("59", 0.5944), ),
))

#heading(level: 3, "By Household income")
#xtab(("Metric", ), ("Total", "<50k", "50k-<100k", "100k+", ), ("1815", "715", "574", "526", ), (
  ("TOTAL can shape", p("13", 0.1346), p("12", 0.1163), p("14", 0.1416), p("15", 0.1511), ),
  ("TOTAL inevitable", p("72", 0.7203), p("67", 0.6666), p("73", 0.7335), p("78", 0.7764), ),
  ("Neither of these", p("14", 0.1368), p("20", 0.2028), p("12", 0.1162), p("7", 0.0725), ),
  ("No answer", p("1", 0.0083), p("1", 0.0143), p("1", 0.0087), p("0", 0.0000), ),
  ("NET inevitable", n("59", 0.5857), n("55", 0.5503), n("59", 0.5918), n("63", 0.6253), ),
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
#xtab(("Item", "Metric", ), ("Total", "Female", "Male", ), ("1815", "908", "907", ), (
  ("Saving time", "TOTAL realized", p("44", 0.4378), p("42", 0.4226), p("45", 0.4540), ),
  ("", "TOTAL not yet", p("33", 0.3319), p("30", 0.3047), p("36", 0.3610), ),
  ("", "NET realized", n("11", 0.1059), n("12", 0.1179), n("9", 0.0930), ),
  ("Pressured to do more", "TOTAL realized", p("47", 0.4683), p("49", 0.4865), p("45", 0.4487), ),
  ("", "TOTAL not yet", p("27", 0.2740), p("24", 0.2367), p("31", 0.3141), ),
  ("", "NET realized", n("19", 0.1942), n("25", 0.2498), n("13", 0.1345), ),
  ("Losing connections", "TOTAL realized", p("60", 0.6011), p("62", 0.6198), p("58", 0.5811), ),
  ("", "TOTAL not yet", p("24", 0.2423), p("20", 0.2041), p("28", 0.2833), ),
  ("", "NET realized", n("36", 0.3589), n("42", 0.4157), n("30", 0.2977), ),
  ("Real vs. fake", "TOTAL realized", p("81", 0.8104), p("80", 0.8004), p("82", 0.8211), ),
  ("", "TOTAL not yet", p("11", 0.1091), p("10", 0.1017), p("12", 0.1170), ),
  ("", "NET realized", n("70", 0.7013), n("70", 0.6987), n("70", 0.7041), ),
  ("Better health care", "TOTAL realized", p("15", 0.1502), p("13", 0.1349), p("17", 0.1666), ),
  ("", "TOTAL not yet", p("55", 0.5516), p("54", 0.5447), p("56", 0.5590), ),
  ("", "NET realized", n("−40", -0.4014), n("−41", -0.4097), n("−39", -0.3924), ),
))

#heading(level: 3, "By Party")
#xtab(("Item", "Metric", ), ("Total", "Dem", "Rep", "Ind", ), ("1815", "938", "482", "387", ), (
  ("Saving time", "TOTAL realized", p("44", 0.4378), p("47", 0.4655), p("44", 0.4385), p("41", 0.4056), ),
  ("", "TOTAL not yet", p("33", 0.3319), p("33", 0.3339), p("32", 0.3249), p("35", 0.3471), ),
  ("", "NET realized", n("11", 0.1059), n("13", 0.1316), n("11", 0.1136), n("6", 0.0585), ),
  ("Pressured to do more", "TOTAL realized", p("47", 0.4683), p("50", 0.4958), p("44", 0.4360), p("48", 0.4842), ),
  ("", "TOTAL not yet", p("27", 0.2740), p("27", 0.2697), p("30", 0.3010), p("25", 0.2459), ),
  ("", "NET realized", n("19", 0.1942), n("23", 0.2261), n("14", 0.1350), n("24", 0.2383), ),
  ("Losing connections", "TOTAL realized", p("60", 0.6011), p("63", 0.6313), p("62", 0.6167), p("55", 0.5477), ),
  ("", "TOTAL not yet", p("24", 0.2423), p("24", 0.2402), p("24", 0.2395), p("25", 0.2521), ),
  ("", "NET realized", n("36", 0.3589), n("39", 0.3912), n("38", 0.3773), n("30", 0.2956), ),
  ("Real vs. fake", "TOTAL realized", p("81", 0.8104), p("86", 0.8630), p("82", 0.8195), p("74", 0.7356), ),
  ("", "TOTAL not yet", p("11", 0.1091), p("9", 0.0858), p("12", 0.1207), p("13", 0.1295), ),
  ("", "NET realized", n("70", 0.7013), n("78", 0.7771), n("70", 0.6987), n("61", 0.6062), ),
  ("Better health care", "TOTAL realized", p("15", 0.1502), p("13", 0.1324), p("18", 0.1751), p("14", 0.1435), ),
  ("", "TOTAL not yet", p("55", 0.5516), p("60", 0.6015), p("52", 0.5213), p("54", 0.5353), ),
  ("", "NET realized", n("−40", -0.4014), n("−47", -0.4690), n("−35", -0.3462), n("−39", -0.3918), ),
))

#heading(level: 3, "By Age")
#xtab(("Item", "Metric", ), ("Total", "18–34", "35–49", "50–64", "65+", ), ("1815", "479", "456", "474", "406", ), (
  ("Saving time", "TOTAL realized", p("44", 0.4378), p("49", 0.4868), p("53", 0.5276), p("42", 0.4224), p("30", 0.3030), ),
  ("", "TOTAL not yet", p("33", 0.3319), p("28", 0.2802), p("34", 0.3367), p("30", 0.3023), p("42", 0.4157), ),
  ("", "NET realized", n("11", 0.1059), n("21", 0.2066), n("19", 0.1909), n("12", 0.1201), n("−11", -0.1128), ),
  ("Pressured to do more", "TOTAL realized", p("47", 0.4683), p("50", 0.4958), p("58", 0.5785), p("46", 0.4559), p("34", 0.3354), ),
  ("", "TOTAL not yet", p("27", 0.2740), p("26", 0.2649), p("26", 0.2574), p("30", 0.3012), p("28", 0.2764), ),
  ("", "NET realized", n("19", 0.1942), n("23", 0.2309), n("32", 0.3211), n("15", 0.1548), n("6", 0.0590), ),
  ("Losing connections", "TOTAL realized", p("60", 0.6011), p("61", 0.6095), p("66", 0.6564), p("61", 0.6135), p("52", 0.5237), ),
  ("", "TOTAL not yet", p("24", 0.2423), p("21", 0.2133), p("23", 0.2284), p("24", 0.2412), p("29", 0.2917), ),
  ("", "NET realized", n("36", 0.3589), n("40", 0.3963), n("43", 0.4280), n("37", 0.3723), n("23", 0.2320), ),
  ("Real vs. fake", "TOTAL realized", p("81", 0.8104), p("75", 0.7515), p("89", 0.8865), p("84", 0.8394), p("78", 0.7760), ),
  ("", "TOTAL not yet", p("11", 0.1091), p("14", 0.1353), p("7", 0.0651), p("10", 0.0970), p("13", 0.1338), ),
  ("", "NET realized", n("70", 0.7013), n("62", 0.6162), n("82", 0.8214), n("74", 0.7424), n("64", 0.6422), ),
  ("Better health care", "TOTAL realized", p("15", 0.1502), p("14", 0.1436), p("17", 0.1654), p("15", 0.1509), p("14", 0.1420), ),
  ("", "TOTAL not yet", p("55", 0.5516), p("57", 0.5691), p("56", 0.5580), p("51", 0.5138), p("56", 0.5595), ),
  ("", "NET realized", n("−40", -0.4014), n("−43", -0.4255), n("−39", -0.3926), n("−36", -0.3629), n("−42", -0.4174), ),
))

#heading(level: 3, "By Ethnicity")
#xtab(("Item", "Metric", ), ("Total", "White", "Black", "Hispanic", ), ("1815", "706", "518", "452", ), (
  ("Saving time", "TOTAL realized", p("44", 0.4378), p("40", 0.4013), p("50", 0.4978), p("48", 0.4800), ),
  ("", "TOTAL not yet", p("33", 0.3319), p("35", 0.3505), p("25", 0.2547), p("33", 0.3347), ),
  ("", "NET realized", n("11", 0.1059), n("5", 0.0508), n("24", 0.2432), n("15", 0.1453), ),
  ("Pressured to do more", "TOTAL realized", p("47", 0.4683), p("43", 0.4320), p("49", 0.4910), p("50", 0.5024), ),
  ("", "TOTAL not yet", p("27", 0.2740), p("28", 0.2840), p("23", 0.2329), p("29", 0.2895), ),
  ("", "NET realized", n("19", 0.1942), n("15", 0.1480), n("26", 0.2581), n("21", 0.2130), ),
  ("Losing connections", "TOTAL realized", p("60", 0.6011), p("59", 0.5875), p("59", 0.5921), p("60", 0.6025), ),
  ("", "TOTAL not yet", p("24", 0.2423), p("25", 0.2513), p("22", 0.2216), p("23", 0.2346), ),
  ("", "NET realized", n("36", 0.3589), n("34", 0.3362), n("37", 0.3705), n("37", 0.3680), ),
  ("Real vs. fake", "TOTAL realized", p("81", 0.8104), p("81", 0.8080), p("76", 0.7608), p("80", 0.7996), ),
  ("", "TOTAL not yet", p("11", 0.1091), p("11", 0.1100), p("14", 0.1440), p("12", 0.1172), ),
  ("", "NET realized", n("70", 0.7013), n("70", 0.6980), n("62", 0.6168), n("68", 0.6824), ),
  ("Better health care", "TOTAL realized", p("15", 0.1502), p("13", 0.1268), p("21", 0.2114), p("19", 0.1850), ),
  ("", "TOTAL not yet", p("55", 0.5516), p("57", 0.5737), p("48", 0.4809), p("53", 0.5344), ),
  ("", "NET realized", n("−40", -0.4014), n("−45", -0.4469), n("−27", -0.2695), n("−35", -0.3493), ),
))

#heading(level: 3, "By Education")
#xtab(("Item", "Metric", ), ("Total", "HS or less", "Some college", "BA+", ), ("1815", "551", "648", "616", ), (
  ("Saving time", "TOTAL realized", p("44", 0.4378), p("38", 0.3785), p("37", 0.3720), p("54", 0.5431), ),
  ("", "TOTAL not yet", p("33", 0.3319), p("33", 0.3298), p("37", 0.3704), p("31", 0.3065), ),
  ("", "NET realized", n("11", 0.1059), n("5", 0.0488), n("0", 0.0016), n("24", 0.2366), ),
  ("Pressured to do more", "TOTAL realized", p("47", 0.4683), p("41", 0.4103), p("49", 0.4884), p("51", 0.5112), ),
  ("", "TOTAL not yet", p("27", 0.2740), p("26", 0.2568), p("27", 0.2660), p("30", 0.2968), ),
  ("", "NET realized", n("19", 0.1942), n("15", 0.1535), n("22", 0.2224), n("21", 0.2144), ),
  ("Losing connections", "TOTAL realized", p("60", 0.6011), p("56", 0.5583), p("64", 0.6386), p("62", 0.6169), ),
  ("", "TOTAL not yet", p("24", 0.2423), p("22", 0.2185), p("23", 0.2340), p("27", 0.2717), ),
  ("", "NET realized", n("36", 0.3589), n("34", 0.3398), n("40", 0.4046), n("35", 0.3452), ),
  ("Real vs. fake", "TOTAL realized", p("81", 0.8104), p("72", 0.7158), p("86", 0.8605), p("87", 0.8683), ),
  ("", "TOTAL not yet", p("11", 0.1091), p("13", 0.1300), p("8", 0.0828), p("11", 0.1070), ),
  ("", "NET realized", n("70", 0.7013), n("59", 0.5857), n("78", 0.7777), n("76", 0.7612), ),
  ("Better health care", "TOTAL realized", p("15", 0.1502), p("17", 0.1680), p("12", 0.1227), p("15", 0.1522), ),
  ("", "TOTAL not yet", p("55", 0.5516), p("46", 0.4576), p("60", 0.5954), p("61", 0.6133), ),
  ("", "NET realized", n("−40", -0.4014), n("−29", -0.2895), n("−47", -0.4727), n("−46", -0.4611), ),
))

#heading(level: 3, "By Household income")
#xtab(("Item", "Metric", ), ("Total", "<50k", "50k-<100k", "100k+", ), ("1815", "715", "574", "526", ), (
  ("Saving time", "TOTAL realized", p("44", 0.4378), p("35", 0.3457), p("46", 0.4575), p("54", 0.5367), ),
  ("", "TOTAL not yet", p("33", 0.3319), p("37", 0.3684), p("33", 0.3293), p("29", 0.2871), ),
  ("", "NET realized", n("11", 0.1059), n("−2", -0.0227), n("13", 0.1282), n("25", 0.2496), ),
  ("Pressured to do more", "TOTAL realized", p("47", 0.4683), p("43", 0.4282), p("49", 0.4947), p("49", 0.4929), ),
  ("", "TOTAL not yet", p("27", 0.2740), p("27", 0.2673), p("27", 0.2726), p("28", 0.2842), ),
  ("", "NET realized", n("19", 0.1942), n("16", 0.1609), n("22", 0.2221), n("21", 0.2087), ),
  ("Losing connections", "TOTAL realized", p("60", 0.6011), p("54", 0.5352), p("65", 0.6450), p("64", 0.6414), ),
  ("", "TOTAL not yet", p("24", 0.2423), p("25", 0.2497), p("23", 0.2260), p("25", 0.2495), ),
  ("", "NET realized", n("36", 0.3589), n("29", 0.2855), n("42", 0.4191), n("39", 0.3919), ),
  ("Real vs. fake", "TOTAL realized", p("81", 0.8104), p("74", 0.7389), p("82", 0.8175), p("90", 0.8958), ),
  ("", "TOTAL not yet", p("11", 0.1091), p("14", 0.1423), p("10", 0.1005), p("7", 0.0748), ),
  ("", "NET realized", n("70", 0.7013), n("60", 0.5965), n("72", 0.7169), n("82", 0.8210), ),
  ("Better health care", "TOTAL realized", p("15", 0.1502), p("16", 0.1569), p("15", 0.1547), p("14", 0.1370), ),
  ("", "TOTAL not yet", p("55", 0.5516), p("51", 0.5113), p("56", 0.5640), p("59", 0.5910), ),
  ("", "NET realized", n("−40", -0.4014), n("−35", -0.3544), n("−41", -0.4093), n("−45", -0.4540), ),
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
#xtab(("Item", "Metric", ), ("Total", "Female", "Male", ), ("1815", "908", "907", ), (
  ("Jobs", "TOTAL better", p("11", 0.1095), p("10", 0.0977), p("12", 0.1221), ),
  ("", "TOTAL worse", p("76", 0.7590), p("77", 0.7736), p("74", 0.7432), ),
  ("", "NET worse", n("65", 0.6495), n("68", 0.6760), n("62", 0.6211), ),
  ("Future", "TOTAL better", p("27", 0.2735), p("23", 0.2311), p("32", 0.3191), ),
  ("", "TOTAL worse", p("59", 0.5920), p("60", 0.6049), p("58", 0.5781), ),
  ("", "NET worse", n("32", 0.3185), n("37", 0.3739), n("26", 0.2591), ),
  ("Children", "TOTAL better", p("14", 0.1396), p("12", 0.1173), p("16", 0.1636), ),
  ("", "TOTAL worse", p("69", 0.6860), p("69", 0.6942), p("68", 0.6772), ),
  ("", "NET worse", n("55", 0.5464), n("58", 0.5768), n("51", 0.5136), ),
  ("Finances", "TOTAL better", p("20", 0.2006), p("18", 0.1789), p("22", 0.2240), ),
  ("", "TOTAL worse", p("43", 0.4280), p("45", 0.4510), p("40", 0.4033), ),
  ("", "NET worse", n("23", 0.2274), n("27", 0.2721), n("18", 0.1793), ),
))

#heading(level: 3, "By Party")
#xtab(("Item", "Metric", ), ("Total", "Dem", "Rep", "Ind", ), ("1815", "938", "482", "387", ), (
  ("Jobs", "TOTAL better", p("11", 0.1095), p("8", 0.0775), p("13", 0.1255), p("14", 0.1365), ),
  ("", "TOTAL worse", p("76", 0.7590), p("82", 0.8242), p("73", 0.7325), p("71", 0.7119), ),
  ("", "NET worse", n("65", 0.6495), n("75", 0.7467), n("61", 0.6070), n("58", 0.5754), ),
  ("Future", "TOTAL better", p("27", 0.2735), p("24", 0.2365), p("32", 0.3197), p("27", 0.2675), ),
  ("", "TOTAL worse", p("59", 0.5920), p("65", 0.6484), p("56", 0.5610), p("56", 0.5621), ),
  ("", "NET worse", n("32", 0.3185), n("41", 0.4118), n("24", 0.2413), n("29", 0.2946), ),
  ("Children", "TOTAL better", p("14", 0.1396), p("11", 0.1082), p("16", 0.1582), p("16", 0.1632), ),
  ("", "TOTAL worse", p("69", 0.6860), p("73", 0.7304), p("68", 0.6828), p("63", 0.6347), ),
  ("", "NET worse", n("55", 0.5464), n("62", 0.6222), n("52", 0.5246), n("47", 0.4716), ),
  ("Finances", "TOTAL better", p("20", 0.2006), p("18", 0.1810), p("21", 0.2147), p("21", 0.2145), ),
  ("", "TOTAL worse", p("43", 0.4280), p("46", 0.4577), p("39", 0.3928), p("44", 0.4380), ),
  ("", "NET worse", n("23", 0.2274), n("28", 0.2766), n("18", 0.1781), n("22", 0.2236), ),
))

#heading(level: 3, "By Age")
#xtab(("Item", "Metric", ), ("Total", "18–34", "35–49", "50–64", "65+", ), ("1815", "479", "456", "474", "406", ), (
  ("Jobs", "TOTAL better", p("11", 0.1095), p("16", 0.1577), p("11", 0.1142), p("8", 0.0826), p("7", 0.0725), ),
  ("", "TOTAL worse", p("76", 0.7590), p("70", 0.6986), p("79", 0.7854), p("80", 0.8031), p("76", 0.7627), ),
  ("", "NET worse", n("65", 0.6495), n("54", 0.5409), n("67", 0.6711), n("72", 0.7205), n("69", 0.6902), ),
  ("Future", "TOTAL better", p("27", 0.2735), p("26", 0.2597), p("27", 0.2726), p("28", 0.2769), p("29", 0.2875), ),
  ("", "TOTAL worse", p("59", 0.5920), p("62", 0.6207), p("60", 0.6008), p("61", 0.6063), p("54", 0.5357), ),
  ("", "NET worse", n("32", 0.3185), n("36", 0.3610), n("33", 0.3283), n("33", 0.3294), n("25", 0.2482), ),
  ("Children", "TOTAL better", p("14", 0.1396), p("14", 0.1447), p("14", 0.1371), p("15", 0.1471), p("13", 0.1293), ),
  ("", "TOTAL worse", p("69", 0.6860), p("70", 0.7011), p("73", 0.7263), p("66", 0.6571), p("65", 0.6542), ),
  ("", "NET worse", n("55", 0.5464), n("56", 0.5564), n("59", 0.5892), n("51", 0.5100), n("52", 0.5249), ),
  ("Finances", "TOTAL better", p("20", 0.2006), p("22", 0.2232), p("23", 0.2291), p("16", 0.1629), p("18", 0.1802), ),
  ("", "TOTAL worse", p("43", 0.4280), p("45", 0.4465), p("40", 0.3979), p("45", 0.4527), p("41", 0.4136), ),
  ("", "NET worse", n("23", 0.2274), n("22", 0.2233), n("17", 0.1688), n("29", 0.2898), n("23", 0.2334), ),
))

#heading(level: 3, "By Ethnicity")
#xtab(("Item", "Metric", ), ("Total", "White", "Black", "Hispanic", ), ("1815", "706", "518", "452", ), (
  ("Jobs", "TOTAL better", p("11", 0.1095), p("8", 0.0836), p("19", 0.1929), p("14", 0.1374), ),
  ("", "TOTAL worse", p("76", 0.7590), p("78", 0.7825), p("65", 0.6545), p("71", 0.7121), ),
  ("", "NET worse", n("65", 0.6495), n("70", 0.6990), n("46", 0.4616), n("57", 0.5747), ),
  ("Future", "TOTAL better", p("27", 0.2735), p("25", 0.2480), p("34", 0.3375), p("27", 0.2738), ),
  ("", "TOTAL worse", p("59", 0.5920), p("60", 0.6031), p("51", 0.5094), p("61", 0.6146), ),
  ("", "NET worse", n("32", 0.3185), n("36", 0.3550), n("17", 0.1719), n("34", 0.3407), ),
  ("Children", "TOTAL better", p("14", 0.1396), p("11", 0.1111), p("19", 0.1929), p("16", 0.1602), ),
  ("", "TOTAL worse", p("69", 0.6860), p("71", 0.7114), p("59", 0.5907), p("65", 0.6486), ),
  ("", "NET worse", n("55", 0.5464), n("60", 0.6004), n("40", 0.3978), n("49", 0.4884), ),
  ("Finances", "TOTAL better", p("20", 0.2006), p("15", 0.1490), p("30", 0.3008), p("27", 0.2723), ),
  ("", "TOTAL worse", p("43", 0.4280), p("42", 0.4209), p("39", 0.3893), p("44", 0.4363), ),
  ("", "NET worse", n("23", 0.2274), n("27", 0.2719), n("9", 0.0885), n("16", 0.1641), ),
))

#heading(level: 3, "By Education")
#xtab(("Item", "Metric", ), ("Total", "HS or less", "Some college", "BA+", ), ("1815", "551", "648", "616", ), (
  ("Jobs", "TOTAL better", p("11", 0.1095), p("15", 0.1485), p("9", 0.0938), p("8", 0.0820), ),
  ("", "TOTAL worse", p("76", 0.7590), p("65", 0.6501), p("79", 0.7928), p("84", 0.8425), ),
  ("", "NET worse", n("65", 0.6495), n("50", 0.5016), n("70", 0.6990), n("76", 0.7605), ),
  ("Future", "TOTAL better", p("27", 0.2735), p("27", 0.2707), p("24", 0.2352), p("30", 0.3035), ),
  ("", "TOTAL worse", p("59", 0.5920), p("56", 0.5634), p("65", 0.6450), p("58", 0.5825), ),
  ("", "NET worse", n("32", 0.3185), n("29", 0.2927), n("41", 0.4099), n("28", 0.2790), ),
  ("Children", "TOTAL better", p("14", 0.1396), p("16", 0.1626), p("12", 0.1152), p("13", 0.1344), ),
  ("", "TOTAL worse", p("69", 0.6860), p("62", 0.6237), p("70", 0.6961), p("74", 0.7404), ),
  ("", "NET worse", n("55", 0.5464), n("46", 0.4611), n("58", 0.5809), n("61", 0.6060), ),
  ("Finances", "TOTAL better", p("20", 0.2006), p("18", 0.1840), p("19", 0.1895), p("23", 0.2250), ),
  ("", "TOTAL worse", p("43", 0.4280), p("41", 0.4137), p("46", 0.4621), p("42", 0.4179), ),
  ("", "NET worse", n("23", 0.2274), n("23", 0.2296), n("27", 0.2726), n("19", 0.1930), ),
))

#heading(level: 3, "By Household income")
#xtab(("Item", "Metric", ), ("Total", "<50k", "50k-<100k", "100k+", ), ("1815", "715", "574", "526", ), (
  ("Jobs", "TOTAL better", p("11", 0.1095), p("14", 0.1398), p("11", 0.1087), p("7", 0.0709), ),
  ("", "TOTAL worse", p("76", 0.7590), p("68", 0.6758), p("78", 0.7842), p("84", 0.8407), ),
  ("", "NET worse", n("65", 0.6495), n("54", 0.5360), n("68", 0.6755), n("77", 0.7698), ),
  ("Future", "TOTAL better", p("27", 0.2735), p("27", 0.2680), p("29", 0.2907), p("26", 0.2628), ),
  ("", "TOTAL worse", p("59", 0.5920), p("57", 0.5727), p("58", 0.5814), p("63", 0.6279), ),
  ("", "NET worse", n("32", 0.3185), n("30", 0.3047), n("29", 0.2907), n("37", 0.3652), ),
  ("Children", "TOTAL better", p("14", 0.1396), p("16", 0.1613), p("13", 0.1283), p("12", 0.1233), ),
  ("", "TOTAL worse", p("69", 0.6860), p("62", 0.6155), p("73", 0.7294), p("73", 0.7327), ),
  ("", "NET worse", n("55", 0.5464), n("45", 0.4542), n("60", 0.6011), n("61", 0.6094), ),
  ("Finances", "TOTAL better", p("20", 0.2006), p("20", 0.1994), p("22", 0.2198), p("18", 0.1825), ),
  ("", "TOTAL worse", p("43", 0.4280), p("41", 0.4083), p("44", 0.4417), p("44", 0.4394), ),
  ("", "NET worse", n("23", 0.2274), n("21", 0.2089), n("22", 0.2220), n("26", 0.2569), ),
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
#xtab(("Item", "Metric", ), ("Total", "Female", "Male", ), ("1815", "908", "907", ), (
  ("Children", "TOTAL too much", p("25", 0.2548), p("27", 0.2667), p("24", 0.2420), ),
  ("", "TOTAL too little", p("44", 0.4352), p("42", 0.4162), p("46", 0.4557), ),
  ("", "NET too little", n("18", 0.1804), n("15", 0.1495), n("21", 0.2137), ),
  ("Environment", "TOTAL too much", p("24", 0.2351), p("24", 0.2368), p("23", 0.2332), ),
  ("", "TOTAL too little", p("46", 0.4589), p("45", 0.4487), p("47", 0.4698), ),
  ("", "NET too little", n("22", 0.2238), n("21", 0.2119), n("24", 0.2366), ),
  ("Workers", "TOTAL too much", p("23", 0.2324), p("26", 0.2558), p("21", 0.2072), ),
  ("", "TOTAL too little", p("43", 0.4250), p("41", 0.4088), p("44", 0.4424), ),
  ("", "NET too little", n("19", 0.1926), n("15", 0.1530), n("24", 0.2352), ),
  ("Competitiveness", "TOTAL too much", p("21", 0.2114), p("21", 0.2089), p("21", 0.2141), ),
  ("", "TOTAL too little", p("31", 0.3139), p("30", 0.3017), p("33", 0.3270), ),
  ("", "NET too little", n("10", 0.1025), n("9", 0.0928), n("11", 0.1129), ),
))

#heading(level: 3, "By Party")
#xtab(("Item", "Metric", ), ("Total", "Dem", "Rep", "Ind", ), ("1815", "938", "482", "387", ), (
  ("Children", "TOTAL too much", p("25", 0.2548), p("21", 0.2130), p("28", 0.2753), p("29", 0.2909), ),
  ("", "TOTAL too little", p("44", 0.4352), p("56", 0.5605), p("38", 0.3799), p("34", 0.3400), ),
  ("", "NET too little", n("18", 0.1804), n("35", 0.3475), n("10", 0.1046), n("5", 0.0491), ),
  ("Environment", "TOTAL too much", p("24", 0.2351), p("20", 0.2038), p("24", 0.2428), p("27", 0.2732), ),
  ("", "TOTAL too little", p("46", 0.4589), p("60", 0.5973), p("38", 0.3752), p("39", 0.3858), ),
  ("", "NET too little", n("22", 0.2238), n("39", 0.3935), n("13", 0.1323), n("11", 0.1125), ),
  ("Workers", "TOTAL too much", p("23", 0.2324), p("21", 0.2114), p("23", 0.2278), p("27", 0.2728), ),
  ("", "TOTAL too little", p("43", 0.4250), p("56", 0.5584), p("34", 0.3361), p("37", 0.3660), ),
  ("", "NET too little", n("19", 0.1926), n("35", 0.3469), n("11", 0.1083), n("9", 0.0931), ),
  ("Competitiveness", "TOTAL too much", p("21", 0.2114), p("21", 0.2051), p("20", 0.1974), p("24", 0.2432), ),
  ("", "TOTAL too little", p("31", 0.3139), p("40", 0.4018), p("27", 0.2651), p("26", 0.2618), ),
  ("", "NET too little", n("10", 0.1025), n("20", 0.1967), n("7", 0.0677), n("2", 0.0186), ),
))

#heading(level: 3, "By Age")
#xtab(("Item", "Metric", ), ("Total", "18–34", "35–49", "50–64", "65+", ), ("1815", "479", "456", "474", "406", ), (
  ("Children", "TOTAL too much", p("25", 0.2548), p("30", 0.2979), p("28", 0.2811), p("22", 0.2196), p("21", 0.2100), ),
  ("", "TOTAL too little", p("44", 0.4352), p("40", 0.3954), p("44", 0.4394), p("47", 0.4656), p("45", 0.4501), ),
  ("", "NET too little", n("18", 0.1804), n("10", 0.0975), n("16", 0.1583), n("25", 0.2460), n("24", 0.2401), ),
  ("Environment", "TOTAL too much", p("24", 0.2351), p("27", 0.2724), p("23", 0.2291), p("24", 0.2389), p("19", 0.1932), ),
  ("", "TOTAL too little", p("46", 0.4589), p("45", 0.4472), p("47", 0.4707), p("46", 0.4567), p("46", 0.4627), ),
  ("", "NET too little", n("22", 0.2238), n("17", 0.1748), n("24", 0.2415), n("22", 0.2178), n("27", 0.2695), ),
  ("Workers", "TOTAL too much", p("23", 0.2324), p("28", 0.2769), p("24", 0.2393), p("22", 0.2205), p("18", 0.1836), ),
  ("", "TOTAL too little", p("43", 0.4250), p("39", 0.3949), p("42", 0.4199), p("45", 0.4546), p("44", 0.4383), ),
  ("", "NET too little", n("19", 0.1926), n("12", 0.1180), n("18", 0.1806), n("23", 0.2341), n("25", 0.2547), ),
  ("Competitiveness", "TOTAL too much", p("21", 0.2114), p("25", 0.2548), p("23", 0.2325), p("18", 0.1783), p("17", 0.1694), ),
  ("", "TOTAL too little", p("31", 0.3139), p("26", 0.2552), p("31", 0.3074), p("36", 0.3632), p("34", 0.3442), ),
  ("", "NET too little", n("10", 0.1025), n("0", 0.0004), n("7", 0.0749), n("18", 0.1849), n("17", 0.1747), ),
))

#heading(level: 3, "By Ethnicity")
#xtab(("Item", "Metric", ), ("Total", "White", "Black", "Hispanic", ), ("1815", "706", "518", "452", ), (
  ("Children", "TOTAL too much", p("25", 0.2548), p("21", 0.2148), p("33", 0.3325), p("30", 0.3036), ),
  ("", "TOTAL too little", p("44", 0.4352), p("49", 0.4877), p("32", 0.3152), p("36", 0.3602), ),
  ("", "NET too little", n("18", 0.1804), n("27", 0.2729), n("−2", -0.0173), n("6", 0.0567), ),
  ("Environment", "TOTAL too much", p("24", 0.2351), p("20", 0.2015), p("29", 0.2948), p("29", 0.2897), ),
  ("", "TOTAL too little", p("46", 0.4589), p("51", 0.5054), p("32", 0.3181), p("35", 0.3528), ),
  ("", "NET too little", n("22", 0.2238), n("30", 0.3039), n("2", 0.0233), n("6", 0.0630), ),
  ("Workers", "TOTAL too much", p("23", 0.2324), p("19", 0.1875), p("31", 0.3065), p("30", 0.3028), ),
  ("", "TOTAL too little", p("43", 0.4250), p("47", 0.4701), p("32", 0.3192), p("36", 0.3577), ),
  ("", "NET too little", n("19", 0.1926), n("28", 0.2825), n("1", 0.0127), n("5", 0.0548), ),
  ("Competitiveness", "TOTAL too much", p("21", 0.2114), p("17", 0.1668), p("30", 0.3026), p("25", 0.2536), ),
  ("", "TOTAL too little", p("31", 0.3139), p("34", 0.3395), p("26", 0.2554), p("25", 0.2487), ),
  ("", "NET too little", n("10", 0.1025), n("17", 0.1727), n("−5", -0.0472), n("0", -0.0049), ),
))

#heading(level: 3, "By Education")
#xtab(("Item", "Metric", ), ("Total", "HS or less", "Some college", "BA+", ), ("1815", "551", "648", "616", ), (
  ("Children", "TOTAL too much", p("25", 0.2548), p("30", 0.2987), p("26", 0.2645), p("20", 0.2046), ),
  ("", "TOTAL too little", p("44", 0.4352), p("32", 0.3220), p("43", 0.4329), p("55", 0.5489), ),
  ("", "NET too little", n("18", 0.1804), n("2", 0.0233), n("17", 0.1684), n("34", 0.3443), ),
  ("Environment", "TOTAL too much", p("24", 0.2351), p("28", 0.2827), p("26", 0.2596), p("17", 0.1705), ),
  ("", "TOTAL too little", p("46", 0.4589), p("36", 0.3605), p("44", 0.4401), p("57", 0.5694), ),
  ("", "NET too little", n("22", 0.2238), n("8", 0.0778), n("18", 0.1806), n("40", 0.3989), ),
  ("Workers", "TOTAL too much", p("23", 0.2324), p("27", 0.2733), p("26", 0.2573), p("17", 0.1742), ),
  ("", "TOTAL too little", p("43", 0.4250), p("34", 0.3430), p("42", 0.4241), p("51", 0.5068), ),
  ("", "NET too little", n("19", 0.1926), n("7", 0.0697), n("17", 0.1668), n("33", 0.3326), ),
  ("Competitiveness", "TOTAL too much", p("21", 0.2114), p("26", 0.2642), p("21", 0.2075), p("16", 0.1620), ),
  ("", "TOTAL too little", p("31", 0.3139), p("27", 0.2714), p("33", 0.3291), p("35", 0.3451), ),
  ("", "NET too little", n("10", 0.1025), n("1", 0.0073), n("12", 0.1216), n("18", 0.1830), ),
))

#heading(level: 3, "By Household income")
#xtab(("Item", "Metric", ), ("Total", "<50k", "50k-<100k", "100k+", ), ("1815", "715", "574", "526", ), (
  ("Children", "TOTAL too much", p("25", 0.2548), p("30", 0.2954), p("25", 0.2548), p("20", 0.2023), ),
  ("", "TOTAL too little", p("44", 0.4352), p("34", 0.3373), p("45", 0.4457), p("55", 0.5514), ),
  ("", "NET too little", n("18", 0.1804), n("4", 0.0419), n("19", 0.1909), n("35", 0.3492), ),
  ("Environment", "TOTAL too much", p("24", 0.2351), p("29", 0.2911), p("21", 0.2128), p("19", 0.1854), ),
  ("", "TOTAL too little", p("46", 0.4589), p("37", 0.3715), p("46", 0.4643), p("57", 0.5665), ),
  ("", "NET too little", n("22", 0.2238), n("8", 0.0804), n("25", 0.2516), n("38", 0.3811), ),
  ("Workers", "TOTAL too much", p("23", 0.2324), p("26", 0.2623), p("23", 0.2291), p("20", 0.1969), ),
  ("", "TOTAL too little", p("43", 0.4250), p("35", 0.3471), p("44", 0.4421), p("51", 0.5083), ),
  ("", "NET too little", n("19", 0.1926), n("8", 0.0848), n("21", 0.2131), n("31", 0.3114), ),
  ("Competitiveness", "TOTAL too much", p("21", 0.2114), p("26", 0.2617), p("19", 0.1876), p("17", 0.1708), ),
  ("", "TOTAL too little", p("31", 0.3139), p("27", 0.2740), p("34", 0.3409), p("34", 0.3377), ),
  ("", "NET too little", n("10", 0.1025), n("1", 0.0124), n("15", 0.1533), n("17", 0.1670), ),
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
#xtab(("Item", "Metric", ), ("Total", "Female", "Male", ), ("1815", "908", "907", ), (
  ("Superintelligence", "TOTAL likely", p("69", 0.6872), p("66", 0.6648), p("71", 0.7114), ),
  ("", "TOTAL unlikely", p("17", 0.1656), p("16", 0.1603), p("17", 0.1712), ),
  ("", "NET likely", n("52", 0.5217), n("50", 0.5045), n("54", 0.5401), ),
  ("Loss-of-control", "TOTAL likely", p("79", 0.7879), p("78", 0.7827), p("79", 0.7935), ),
  ("", "TOTAL unlikely", p("8", 0.0764), p("6", 0.0565), p("10", 0.0979), ),
  ("", "NET likely", n("71", 0.7115), n("73", 0.7263), n("70", 0.6957), ),
  ("Breakthroughs", "TOTAL likely", p("65", 0.6462), p("60", 0.6013), p("69", 0.6946), ),
  ("", "TOTAL unlikely", p("17", 0.1743), p("18", 0.1830), p("16", 0.1649), ),
  ("", "NET likely", n("47", 0.4720), n("42", 0.4183), n("53", 0.5296), ),
  ("WMDs", "TOTAL likely", p("67", 0.6705), p("65", 0.6475), p("70", 0.6953), ),
  ("", "TOTAL unlikely", p("11", 0.1105), p("9", 0.0882), p("13", 0.1345), ),
  ("", "NET likely", n("56", 0.5600), n("56", 0.5594), n("56", 0.5607), ),
))

#heading(level: 3, "By Party")
#xtab(("Item", "Metric", ), ("Total", "Dem", "Rep", "Ind", ), ("1815", "938", "482", "387", ), (
  ("Superintelligence", "TOTAL likely", p("69", 0.6872), p("71", 0.7129), p("70", 0.6961), p("65", 0.6500), ),
  ("", "TOTAL unlikely", p("17", 0.1656), p("16", 0.1559), p("16", 0.1553), p("20", 0.1986), ),
  ("", "NET likely", n("52", 0.5217), n("56", 0.5570), n("54", 0.5408), n("45", 0.4514), ),
  ("Loss-of-control", "TOTAL likely", p("79", 0.7879), p("85", 0.8538), p("79", 0.7886), p("71", 0.7057), ),
  ("", "TOTAL unlikely", p("8", 0.0764), p("5", 0.0486), p("7", 0.0736), p("12", 0.1233), ),
  ("", "NET likely", n("71", 0.7115), n("81", 0.8052), n("72", 0.7150), n("58", 0.5824), ),
  ("Breakthroughs", "TOTAL likely", p("65", 0.6462), p("66", 0.6628), p("69", 0.6879), p("57", 0.5747), ),
  ("", "TOTAL unlikely", p("17", 0.1743), p("16", 0.1629), p("15", 0.1462), p("24", 0.2354), ),
  ("", "NET likely", n("47", 0.4720), n("50", 0.4999), n("54", 0.5416), n("34", 0.3393), ),
  ("WMDs", "TOTAL likely", p("67", 0.6705), p("72", 0.7169), p("65", 0.6535), p("64", 0.6394), ),
  ("", "TOTAL unlikely", p("11", 0.1105), p("10", 0.0992), p("13", 0.1260), p("11", 0.1079), ),
  ("", "NET likely", n("56", 0.5600), n("62", 0.6177), n("53", 0.5275), n("53", 0.5314), ),
))

#heading(level: 3, "By Age")
#xtab(("Item", "Metric", ), ("Total", "18–34", "35–49", "50–64", "65+", ), ("1815", "479", "456", "474", "406", ), (
  ("Superintelligence", "TOTAL likely", p("69", 0.6872), p("59", 0.5947), p("69", 0.6880), p("76", 0.7630), p("73", 0.7256), ),
  ("", "TOTAL unlikely", p("17", 0.1656), p("22", 0.2248), p("17", 0.1740), p("10", 0.1011), p("15", 0.1467), ),
  ("", "NET likely", n("52", 0.5217), n("37", 0.3699), n("51", 0.5140), n("66", 0.6618), n("58", 0.5789), ),
  ("Loss-of-control", "TOTAL likely", p("79", 0.7879), p("73", 0.7349), p("83", 0.8339), p("79", 0.7868), p("81", 0.8053), ),
  ("", "TOTAL unlikely", p("8", 0.0764), p("10", 0.1024), p("7", 0.0650), p("7", 0.0656), p("7", 0.0671), ),
  ("", "NET likely", n("71", 0.7115), n("63", 0.6324), n("77", 0.7688), n("72", 0.7212), n("74", 0.7382), ),
  ("Breakthroughs", "TOTAL likely", p("65", 0.6462), p("54", 0.5404), p("65", 0.6450), p("71", 0.7077), p("72", 0.7157), ),
  ("", "TOTAL unlikely", p("17", 0.1743), p("26", 0.2584), p("20", 0.1957), p("10", 0.1027), p("12", 0.1194), ),
  ("", "NET likely", n("47", 0.4720), n("28", 0.2820), n("45", 0.4492), n("61", 0.6051), n("60", 0.5964), ),
  ("WMDs", "TOTAL likely", p("67", 0.6705), p("65", 0.6464), p("65", 0.6532), p("68", 0.6821), p("71", 0.7060), ),
  ("", "TOTAL unlikely", p("11", 0.1105), p("12", 0.1184), p("15", 0.1475), p("10", 0.0994), p("7", 0.0740), ),
  ("", "NET likely", n("56", 0.5600), n("53", 0.5280), n("51", 0.5056), n("58", 0.5827), n("63", 0.6320), ),
))

#heading(level: 3, "By Ethnicity")
#xtab(("Item", "Metric", ), ("Total", "White", "Black", "Hispanic", ), ("1815", "706", "518", "452", ), (
  ("Superintelligence", "TOTAL likely", p("69", 0.6872), p("68", 0.6823), p("65", 0.6513), p("68", 0.6816), ),
  ("", "TOTAL unlikely", p("17", 0.1656), p("17", 0.1730), p("17", 0.1713), p("15", 0.1549), ),
  ("", "NET likely", n("52", 0.5217), n("51", 0.5093), n("48", 0.4800), n("53", 0.5267), ),
  ("Loss-of-control", "TOTAL likely", p("79", 0.7879), p("82", 0.8195), p("71", 0.7083), p("73", 0.7345), ),
  ("", "TOTAL unlikely", p("8", 0.0764), p("6", 0.0627), p("11", 0.1056), p("10", 0.1011), ),
  ("", "NET likely", n("71", 0.7115), n("76", 0.7568), n("60", 0.6028), n("63", 0.6334), ),
  ("Breakthroughs", "TOTAL likely", p("65", 0.6462), p("66", 0.6622), p("62", 0.6248), p("60", 0.5991), ),
  ("", "TOTAL unlikely", p("17", 0.1743), p("17", 0.1660), p("16", 0.1564), p("20", 0.1965), ),
  ("", "NET likely", n("47", 0.4720), n("50", 0.4962), n("47", 0.4684), n("40", 0.4026), ),
  ("WMDs", "TOTAL likely", p("67", 0.6705), p("67", 0.6726), p("64", 0.6392), p("67", 0.6735), ),
  ("", "TOTAL unlikely", p("11", 0.1105), p("11", 0.1066), p("13", 0.1327), p("9", 0.0860), ),
  ("", "NET likely", n("56", 0.5600), n("57", 0.5660), n("51", 0.5065), n("59", 0.5874), ),
))

#heading(level: 3, "By Education")
#xtab(("Item", "Metric", ), ("Total", "HS or less", "Some college", "BA+", ), ("1815", "551", "648", "616", ), (
  ("Superintelligence", "TOTAL likely", p("69", 0.6872), p("63", 0.6295), p("73", 0.7322), p("71", 0.7123), ),
  ("", "TOTAL unlikely", p("17", 0.1656), p("16", 0.1593), p("14", 0.1406), p("19", 0.1895), ),
  ("", "NET likely", n("52", 0.5217), n("47", 0.4702), n("59", 0.5916), n("52", 0.5228), ),
  ("Loss-of-control", "TOTAL likely", p("79", 0.7879), p("69", 0.6868), p("83", 0.8266), p("86", 0.8604), ),
  ("", "TOTAL unlikely", p("8", 0.0764), p("10", 0.1009), p("4", 0.0368), p("8", 0.0804), ),
  ("", "NET likely", n("71", 0.7115), n("59", 0.5859), n("79", 0.7898), n("78", 0.7800), ),
  ("Breakthroughs", "TOTAL likely", p("65", 0.6462), p("57", 0.5699), p("63", 0.6339), p("73", 0.7305), ),
  ("", "TOTAL unlikely", p("17", 0.1743), p("19", 0.1894), p("14", 0.1404), p("18", 0.1833), ),
  ("", "NET likely", n("47", 0.4720), n("38", 0.3805), n("49", 0.4935), n("55", 0.5472), ),
  ("WMDs", "TOTAL likely", p("67", 0.6705), p("57", 0.5736), p("70", 0.7005), p("75", 0.7450), ),
  ("", "TOTAL unlikely", p("11", 0.1105), p("13", 0.1315), p("7", 0.0743), p("12", 0.1155), ),
  ("", "NET likely", n("56", 0.5600), n("44", 0.4421), n("63", 0.6262), n("63", 0.6295), ),
))

#heading(level: 3, "By Household income")
#xtab(("Item", "Metric", ), ("Total", "<50k", "50k-<100k", "100k+", ), ("1815", "715", "574", "526", ), (
  ("Superintelligence", "TOTAL likely", p("69", 0.6872), p("65", 0.6478), p("68", 0.6846), p("74", 0.7410), ),
  ("", "TOTAL unlikely", p("17", 0.1656), p("18", 0.1757), p("16", 0.1589), p("16", 0.1593), ),
  ("", "NET likely", n("52", 0.5217), n("47", 0.4721), n("53", 0.5257), n("58", 0.5817), ),
  ("Loss-of-control", "TOTAL likely", p("79", 0.7879), p("71", 0.7102), p("82", 0.8168), p("86", 0.8590), ),
  ("", "TOTAL unlikely", p("8", 0.0764), p("10", 0.1001), p("6", 0.0634), p("6", 0.0591), ),
  ("", "NET likely", n("71", 0.7115), n("61", 0.6101), n("75", 0.7534), n("80", 0.7999), ),
  ("Breakthroughs", "TOTAL likely", p("65", 0.6462), p("59", 0.5865), p("68", 0.6838), p("69", 0.6850), ),
  ("", "TOTAL unlikely", p("17", 0.1743), p("19", 0.1910), p("16", 0.1576), p("17", 0.1697), ),
  ("", "NET likely", n("47", 0.4720), n("40", 0.3955), n("53", 0.5262), n("52", 0.5153), ),
  ("WMDs", "TOTAL likely", p("67", 0.6705), p("59", 0.5932), p("71", 0.7076), p("73", 0.7326), ),
  ("", "TOTAL unlikely", p("11", 0.1105), p("13", 0.1281), p("9", 0.0885), p("11", 0.1105), ),
  ("", "NET likely", n("56", 0.5600), n("47", 0.4651), n("62", 0.6191), n("62", 0.6222), ),
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

This is the third tracking wave of the *Americans on AI* survey, a
project of Athena Insights.

Respondents were interviewed between July 23 and 28, 2026 as part of NORC's
AmeriSpeak Omnibus. AmeriSpeak is a probability-based household panel
recruited by address-based sampling from the NORC National Frame, designed
to be representative of the US household population. Interviews were
conducted online (96%) and by phone (4%), in English; 1,815 adults
completed the module.

Results are weighted with NORC's vote-choice study weights. NORC first
adjusts the panel base weights for sample selection and nonresponse and
rakes to Current Population Survey benchmarks on age, sex, census
division, race/ethnicity, and education; a second round of raking then
adds 2024 presidential vote choice. The voter shares are benchmarked to
the 2024 election results. This yields a design effect of 1.85 and
an effective sample size of 981. The subgroups reported in this
release were oversampled by design: the weights restore population
proportions, while the additional interviews improve the precision of
those subgroup estimates. Standard errors are design-based (Taylor
linearization over NORC's variance strata and units).

The full-sample margin of error is ±3.1 percentage points at 95%
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

Unweighted demographic composition of the achieved sample (n=1,815).

Several subgroups were oversampled by design, so their unweighted shares exceed their population shares; the report's figures are weighted to NORC's Current Population Survey benchmarks (see the methodology), which restores population proportions. *Party* is profiled by NORC, not a weighting dimension of this module's design.

#comp(("Dimension", "Group", "n", "%", ), (
  ("Sex", "Female", "908", "50", ),
  ("", "Male", "907", "50", ),
  ("Party", "Dem", "938", "52", ),
  ("", "Rep", "482", "27", ),
  ("", "Ind", "387", "21", ),
  ("", "Unknown", "8", "0", ),
  ("Age", "18–34", "479", "26", ),
  ("", "35–49", "456", "25", ),
  ("", "50–64", "474", "26", ),
  ("", "65+", "406", "22", ),
  ("Ethnicity", "White", "706", "39", ),
  ("", "Black", "518", "29", ),
  ("", "Hispanic", "452", "25", ),
  ("", "Asian/PI", "93", "5", ),
  ("", "Two or more", "33", "2", ),
  ("", "Other", "13", "1", ),
  ("Education", "HS or less", "551", "30", ),
  ("", "Some college", "648", "36", ),
  ("", "BA+", "616", "34", ),
  ("Household income", "<50k", "715", "39", ),
  ("", "50k-<100k", "574", "32", ),
  ("", "100k+", "526", "29", ),
))
