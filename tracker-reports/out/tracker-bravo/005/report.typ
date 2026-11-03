#import "/tracker-reports/report.typ": *
#show: report.with(title: "Americans on AI — 31 August 2026")

Athena Insights surveyed 2,430 US adults from August 27-31, 2026, via NORC's AmeriSpeak Panel, a probability-based panel designed to be representative of the US household population.

This release includes the results of that survey as a whole-sample topline, then as crosstabs broken out by subgroup, followed by appendices covering the questionnaire, methodology, and unweighted sample composition.

Results are weighted to US population benchmarks; the full-sample margin of error is ±2.5 percentage points at 95% confidence, accounting for the design effect of weighting. 

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
  ("Jobs", p("49", 0.4925), p("38", 0.3816), p("7", 0.0679), p("1", 0.0119), p("3", 0.0333), ),
  ("Inflation", p("69", 0.6857), p("23", 0.2261), p("4", 0.0351), p("1", 0.0096), p("4", 0.0352), ),
  ("AI harms", p("36", 0.3644), p("42", 0.4152), p("11", 0.1126), p("5", 0.0508), p("5", 0.0474), ),
  ("Immigration", p("33", 0.3337), p("35", 0.3515), p("19", 0.1886), p("8", 0.0814), p("3", 0.0340), ),
  ("Health care", p("68", 0.6836), p("22", 0.2238), p("4", 0.0437), p("1", 0.0137), p("3", 0.0266), ),
  ("Crime", p("53", 0.5349), p("33", 0.3318), p("8", 0.0781), p("1", 0.0130), p("3", 0.0297), ),
  ("Climate change", p("38", 0.3778), p("31", 0.3063), p("15", 0.1511), p("12", 0.1161), p("4", 0.0402), ),
))

#heading(level: 2, "Affect")

#stem("Thinking about AI's growing role in society, which of these options comes closest to how you feel, even if none are exactly right?")

#note[*Response distribution (weighted)* — % of all respondents. "No answer" (2% or less) is not shown.]
#dist(("Response", "%", ), (
  ("Very excited", p("6", 0.0600), ),
  ("Somewhat excited", p("16", 0.1599), ),
  ("Somewhat concerned", p("40", 0.3991), ),
  ("Very concerned", p("30", 0.2950), ),
  ("None of these are close to how I feel", p("8", 0.0776), ),
))

#heading(level: 2, "Agency")

#stem("Again, thinking about AI, which statement comes closer to your view, even if neither is exactly right?")

#note[*Response distribution (weighted)* — % of all respondents. "No answer" (2% or less) is not shown.]
#dist(("Response", "%", ), (
  ("People like me can shape how much AI is part of our lives", p("16", 0.1560), ),
  ("AI is coming into our lives whether we want it or not", p("68", 0.6831), ),
  ("Neither of these are close to how I feel", p("14", 0.1432), ),
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
  ("Saving time", p("20", 0.1971), p("27", 0.2740), p("15", 0.1521), p("14", 0.1441), p("22", 0.2170), ),
  ("Pressured to do more", p("25", 0.2466), p("26", 0.2596), p("20", 0.1972), p("8", 0.0760), p("21", 0.2089), ),
  ("Losing connections", p("32", 0.3224), p("27", 0.2749), p("15", 0.1452), p("10", 0.0964), p("15", 0.1493), ),
  ("Real vs. fake", p("55", 0.5458), p("26", 0.2557), p("9", 0.0882), p("2", 0.0229), p("8", 0.0751), ),
  ("Better health care", p("6", 0.0571), p("12", 0.1201), p("18", 0.1824), p("34", 0.3421), p("29", 0.2861), ),
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
  ("Jobs", p("3", 0.0326), p("11", 0.1147), p("41", 0.4130), p("32", 0.3237), p("9", 0.0905), p("3", 0.0254), ),
  ("Future", p("5", 0.0478), p("27", 0.2713), p("34", 0.3407), p("21", 0.2142), p("10", 0.0973), p("3", 0.0288), ),
  ("Children", p("4", 0.0429), p("15", 0.1477), p("35", 0.3508), p("29", 0.2900), p("14", 0.1445), p("2", 0.0242), ),
  ("Finances", p("4", 0.0383), p("24", 0.2383), p("29", 0.2884), p("14", 0.1435), p("26", 0.2584), p("3", 0.0332), ),
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
  ("Children", p("13", 0.1287), p("15", 0.1484), p("12", 0.1162), p("18", 0.1808), p("26", 0.2595), p("15", 0.1521), ),
  ("Environment", p("14", 0.1423), p("12", 0.1167), p("14", 0.1353), p("14", 0.1433), p("29", 0.2909), p("16", 0.1559), ),
  ("Workers", p("11", 0.1061), p("13", 0.1349), p("16", 0.1611), p("18", 0.1820), p("24", 0.2438), p("16", 0.1561), ),
  ("Competitiveness", p("9", 0.0860), p("13", 0.1269), p("22", 0.2154), p("16", 0.1582), p("15", 0.1514), p("24", 0.2448), ),
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
  ("Superintelligence", p("28", 0.2837), p("41", 0.4110), p("12", 0.1192), p("6", 0.0574), p("11", 0.1137), ),
  ("Loss-of-control", p("36", 0.3559), p("43", 0.4263), p("7", 0.0656), p("2", 0.0243), p("11", 0.1111), ),
  ("Breakthroughs", p("20", 0.2045), p("47", 0.4673), p("13", 0.1277), p("4", 0.0367), p("15", 0.1501), ),
  ("WMDs", p("21", 0.2066), p("51", 0.5085), p("8", 0.0803), p("3", 0.0265), p("16", 0.1636), ),
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
#xtab(("Item", "Metric", ), ("Total", "Female", "Male", ), ("2430", "1292", "1138", ), (
  ("Jobs", "TOTAL high priority", p("87", 0.8741), p("89", 0.8948), p("85", 0.8519), ),
  ("", "TOTAL lower priority", p("8", 0.0798), p("6", 0.0573), p("10", 0.1041), ),
  ("", "NET priority", n("79", 0.7943), n("84", 0.8375), n("75", 0.7478), ),
  ("Inflation", "TOTAL high priority", p("91", 0.9118), p("91", 0.9113), p("91", 0.9123), ),
  ("", "TOTAL lower priority", p("4", 0.0447), p("4", 0.0408), p("5", 0.0489), ),
  ("", "NET priority", n("87", 0.8671), n("87", 0.8705), n("86", 0.8633), ),
  ("AI harms", "TOTAL high priority", p("78", 0.7796), p("81", 0.8101), p("75", 0.7468), ),
  ("", "TOTAL lower priority", p("16", 0.1634), p("13", 0.1297), p("20", 0.1997), ),
  ("", "NET priority", n("62", 0.6162), n("68", 0.6804), n("55", 0.5472), ),
  ("Immigration", "TOTAL high priority", p("69", 0.6852), p("69", 0.6933), p("68", 0.6765), ),
  ("", "TOTAL lower priority", p("27", 0.2700), p("27", 0.2650), p("28", 0.2754), ),
  ("", "NET priority", n("42", 0.4152), n("43", 0.4283), n("40", 0.4012), ),
  ("Health care", "TOTAL high priority", p("91", 0.9074), p("92", 0.9167), p("90", 0.8974), ),
  ("", "TOTAL lower priority", p("6", 0.0574), p("5", 0.0467), p("7", 0.0688), ),
  ("", "NET priority", n("85", 0.8500), n("87", 0.8700), n("83", 0.8286), ),
  ("Crime", "TOTAL high priority", p("87", 0.8667), p("87", 0.8737), p("86", 0.8591), ),
  ("", "TOTAL lower priority", p("9", 0.0911), p("8", 0.0828), p("10", 0.1000), ),
  ("", "NET priority", n("78", 0.7756), n("79", 0.7909), n("76", 0.7591), ),
  ("Climate change", "TOTAL high priority", p("68", 0.6841), p("74", 0.7360), p("63", 0.6283), ),
  ("", "TOTAL lower priority", p("27", 0.2672), p("21", 0.2133), p("33", 0.3253), ),
  ("", "NET priority", n("42", 0.4169), n("52", 0.5228), n("30", 0.3030), ),
))

#heading(level: 3, "By Party")
#xtab(("Item", "Metric", ), ("Total", "Dem", "Rep", "Ind", ), ("2430", "1192", "786", "429", ), (
  ("Jobs", "TOTAL high priority", p("87", 0.8741), p("91", 0.9096), p("86", 0.8606), p("84", 0.8400), ),
  ("", "TOTAL lower priority", p("8", 0.0798), p("7", 0.0718), p("9", 0.0937), p("7", 0.0728), ),
  ("", "NET priority", n("79", 0.7943), n("84", 0.8378), n("77", 0.7669), n("77", 0.7672), ),
  ("Inflation", "TOTAL high priority", p("91", 0.9118), p("94", 0.9352), p("93", 0.9348), p("84", 0.8369), ),
  ("", "TOTAL lower priority", p("4", 0.0447), p("5", 0.0495), p("3", 0.0295), p("6", 0.0637), ),
  ("", "NET priority", n("87", 0.8671), n("89", 0.8858), n("91", 0.9052), n("77", 0.7732), ),
  ("AI harms", "TOTAL high priority", p("78", 0.7796), p("83", 0.8348), p("77", 0.7740), p("70", 0.6967), ),
  ("", "TOTAL lower priority", p("16", 0.1634), p("14", 0.1352), p("18", 0.1787), p("19", 0.1931), ),
  ("", "NET priority", n("62", 0.6162), n("70", 0.6996), n("60", 0.5953), n("50", 0.5036), ),
  ("Immigration", "TOTAL high priority", p("69", 0.6852), p("55", 0.5527), p("89", 0.8876), p("60", 0.5960), ),
  ("", "TOTAL lower priority", p("27", 0.2700), p("42", 0.4210), p("8", 0.0814), p("31", 0.3148), ),
  ("", "NET priority", n("42", 0.4152), n("13", 0.1317), n("81", 0.8062), n("28", 0.2811), ),
  ("Health care", "TOTAL high priority", p("91", 0.9074), p("95", 0.9530), p("90", 0.8983), p("85", 0.8457), ),
  ("", "TOTAL lower priority", p("6", 0.0574), p("3", 0.0316), p("7", 0.0726), p("8", 0.0833), ),
  ("", "NET priority", n("85", 0.8500), n("92", 0.9214), n("83", 0.8257), n("76", 0.7625), ),
  ("Crime", "TOTAL high priority", p("87", 0.8667), p("85", 0.8455), p("92", 0.9198), p("83", 0.8314), ),
  ("", "TOTAL lower priority", p("9", 0.0911), p("14", 0.1390), p("4", 0.0444), p("8", 0.0792), ),
  ("", "NET priority", n("78", 0.7756), n("71", 0.7065), n("88", 0.8754), n("75", 0.7522), ),
  ("Climate change", "TOTAL high priority", p("68", 0.6841), p("89", 0.8856), p("45", 0.4531), p("71", 0.7128), ),
  ("", "TOTAL lower priority", p("27", 0.2672), p("9", 0.0905), p("50", 0.5020), p("20", 0.1965), ),
  ("", "NET priority", n("42", 0.4169), n("80", 0.7951), n("−5", -0.0489), n("52", 0.5163), ),
))

#heading(level: 3, "By Age")
#xtab(("Item", "Metric", ), ("Total", "18–34", "35–49", "50–64", "65+", ), ("2430", "516", "597", "614", "703", ), (
  ("Jobs", "TOTAL high priority", p("87", 0.8741), p("86", 0.8609), p("87", 0.8658), p("90", 0.8964), p("88", 0.8774), ),
  ("", "TOTAL lower priority", p("8", 0.0798), p("9", 0.0943), p("8", 0.0796), p("6", 0.0631), p("8", 0.0785), ),
  ("", "NET priority", n("79", 0.7943), n("77", 0.7666), n("79", 0.7862), n("83", 0.8333), n("80", 0.7988), ),
  ("Inflation", "TOTAL high priority", p("91", 0.9118), p("87", 0.8670), p("90", 0.9045), p("94", 0.9368), p("95", 0.9490), ),
  ("", "TOTAL lower priority", p("4", 0.0447), p("9", 0.0865), p("3", 0.0344), p("3", 0.0259), p("2", 0.0232), ),
  ("", "NET priority", n("87", 0.8671), n("78", 0.7805), n("87", 0.8700), n("91", 0.9109), n("93", 0.9258), ),
  ("AI harms", "TOTAL high priority", p("78", 0.7796), p("74", 0.7417), p("74", 0.7365), p("80", 0.7966), p("85", 0.8524), ),
  ("", "TOTAL lower priority", p("16", 0.1634), p("21", 0.2131), p("19", 0.1938), p("15", 0.1522), p("8", 0.0842), ),
  ("", "NET priority", n("62", 0.6162), n("53", 0.5285), n("54", 0.5427), n("64", 0.6445), n("77", 0.7682), ),
  ("Immigration", "TOTAL high priority", p("69", 0.6852), p("60", 0.5954), p("61", 0.6100), p("74", 0.7442), p("81", 0.8130), ),
  ("", "TOTAL lower priority", p("27", 0.2700), p("35", 0.3483), p("32", 0.3200), p("23", 0.2305), p("16", 0.1633), ),
  ("", "NET priority", n("42", 0.4152), n("25", 0.2470), n("29", 0.2900), n("51", 0.5136), n("65", 0.6497), ),
  ("Health care", "TOTAL high priority", p("91", 0.9074), p("87", 0.8737), p("88", 0.8816), p("93", 0.9344), p("95", 0.9483), ),
  ("", "TOTAL lower priority", p("6", 0.0574), p("10", 0.0970), p("6", 0.0591), p("4", 0.0428), p("2", 0.0222), ),
  ("", "NET priority", n("85", 0.8500), n("78", 0.7766), n("82", 0.8225), n("89", 0.8916), n("93", 0.9261), ),
  ("Crime", "TOTAL high priority", p("87", 0.8667), p("80", 0.8038), p("86", 0.8573), p("91", 0.9149), p("91", 0.9059), ),
  ("", "TOTAL lower priority", p("9", 0.0911), p("14", 0.1448), p("10", 0.0962), p("5", 0.0491), p("6", 0.0613), ),
  ("", "NET priority", n("78", 0.7756), n("66", 0.6589), n("76", 0.7610), n("87", 0.8659), n("84", 0.8446), ),
  ("Climate change", "TOTAL high priority", p("68", 0.6841), p("71", 0.7148), p("69", 0.6868), p("65", 0.6483), p("68", 0.6783), ),
  ("", "TOTAL lower priority", p("27", 0.2672), p("23", 0.2297), p("25", 0.2460), p("31", 0.3084), p("29", 0.2948), ),
  ("", "NET priority", n("42", 0.4169), n("49", 0.4851), n("44", 0.4408), n("34", 0.3399), n("38", 0.3835), ),
))

#heading(level: 3, "By Ethnicity")
#xtab(("Item", "Metric", ), ("Total", "White", "Black", "Hispanic", "Asian/PI", ), ("2430", "1345", "401", "418", "162", ), (
  ("Jobs", "TOTAL high priority", p("87", 0.8741), p("88", 0.8835), p("90", 0.8953), p("82", 0.8218), p("90", 0.8974), ),
  ("", "TOTAL lower priority", p("8", 0.0798), p("7", 0.0724), p("6", 0.0577), p("12", 0.1154), p("7", 0.0731), ),
  ("", "NET priority", n("79", 0.7943), n("81", 0.8111), n("84", 0.8376), n("71", 0.7064), n("82", 0.8243), ),
  ("Inflation", "TOTAL high priority", p("91", 0.9118), p("92", 0.9214), p("90", 0.9045), p("89", 0.8890), p("90", 0.8982), ),
  ("", "TOTAL lower priority", p("4", 0.0447), p("4", 0.0384), p("4", 0.0381), p("6", 0.0572), p("8", 0.0761), ),
  ("", "NET priority", n("87", 0.8671), n("88", 0.8829), n("87", 0.8664), n("83", 0.8318), n("82", 0.8221), ),
  ("AI harms", "TOTAL high priority", p("78", 0.7796), p("80", 0.7958), p("77", 0.7747), p("75", 0.7474), p("72", 0.7150), ),
  ("", "TOTAL lower priority", p("16", 0.1634), p("15", 0.1543), p("14", 0.1420), p("18", 0.1841), p("22", 0.2192), ),
  ("", "NET priority", n("62", 0.6162), n("64", 0.6415), n("63", 0.6327), n("56", 0.5633), n("50", 0.4958), ),
  ("Immigration", "TOTAL high priority", p("69", 0.6852), p("71", 0.7087), p("68", 0.6760), p("62", 0.6221), p("64", 0.6353), ),
  ("", "TOTAL lower priority", p("27", 0.2700), p("25", 0.2524), p("27", 0.2712), p("31", 0.3141), p("31", 0.3096), ),
  ("", "NET priority", n("42", 0.4152), n("46", 0.4562), n("40", 0.4048), n("31", 0.3080), n("33", 0.3257), ),
  ("Health care", "TOTAL high priority", p("91", 0.9074), p("92", 0.9161), p("91", 0.9098), p("88", 0.8820), p("88", 0.8815), ),
  ("", "TOTAL lower priority", p("6", 0.0574), p("5", 0.0508), p("4", 0.0413), p("8", 0.0810), p("8", 0.0772), ),
  ("", "NET priority", n("85", 0.8500), n("87", 0.8652), n("87", 0.8685), n("80", 0.8009), n("80", 0.8044), ),
  ("Crime", "TOTAL high priority", p("87", 0.8667), p("87", 0.8745), p("87", 0.8737), p("82", 0.8196), p("86", 0.8614), ),
  ("", "TOTAL lower priority", p("9", 0.0911), p("9", 0.0856), p("6", 0.0622), p("13", 0.1341), p("10", 0.1009), ),
  ("", "NET priority", n("78", 0.7756), n("79", 0.7889), n("81", 0.8115), n("69", 0.6855), n("76", 0.7604), ),
  ("Climate change", "TOTAL high priority", p("68", 0.6841), p("65", 0.6488), p("79", 0.7911), p("69", 0.6947), p("77", 0.7683), ),
  ("", "TOTAL lower priority", p("27", 0.2672), p("31", 0.3062), p("13", 0.1301), p("26", 0.2576), p("18", 0.1791), ),
  ("", "NET priority", n("42", 0.4169), n("34", 0.3426), n("66", 0.6610), n("44", 0.4370), n("59", 0.5893), ),
))

#heading(level: 3, "By Education")
#xtab(("Item", "Metric", ), ("Total", "HS or less", "Some college", "BA+", ), ("2430", "579", "893", "958", ), (
  ("Jobs", "TOTAL high priority", p("87", 0.8741), p("82", 0.8226), p("90", 0.8990), p("91", 0.9073), ),
  ("", "TOTAL lower priority", p("8", 0.0798), p("10", 0.0997), p("7", 0.0681), p("7", 0.0685), ),
  ("", "NET priority", n("79", 0.7943), n("72", 0.7228), n("83", 0.8309), n("84", 0.8388), ),
  ("Inflation", "TOTAL high priority", p("91", 0.9118), p("85", 0.8542), p("95", 0.9451), p("95", 0.9450), ),
  ("", "TOTAL lower priority", p("4", 0.0447), p("7", 0.0707), p("2", 0.0203), p("4", 0.0364), ),
  ("", "NET priority", n("87", 0.8671), n("78", 0.7835), n("92", 0.9248), n("91", 0.9086), ),
  ("AI harms", "TOTAL high priority", p("78", 0.7796), p("70", 0.6959), p("81", 0.8145), p("84", 0.8376), ),
  ("", "TOTAL lower priority", p("16", 0.1634), p("21", 0.2116), p("13", 0.1296), p("14", 0.1398), ),
  ("", "NET priority", n("62", 0.6162), n("48", 0.4842), n("68", 0.6848), n("70", 0.6978), ),
  ("Immigration", "TOTAL high priority", p("69", 0.6852), p("68", 0.6763), p("73", 0.7276), p("66", 0.6638), ),
  ("", "TOTAL lower priority", p("27", 0.2700), p("26", 0.2561), p("24", 0.2379), p("31", 0.3065), ),
  ("", "NET priority", n("42", 0.4152), n("42", 0.4202), n("49", 0.4898), n("36", 0.3573), ),
  ("Health care", "TOTAL high priority", p("91", 0.9074), p("86", 0.8627), p("93", 0.9285), p("94", 0.9366), ),
  ("", "TOTAL lower priority", p("6", 0.0574), p("8", 0.0751), p("5", 0.0461), p("5", 0.0479), ),
  ("", "NET priority", n("85", 0.8500), n("79", 0.7875), n("88", 0.8824), n("89", 0.8887), ),
  ("Crime", "TOTAL high priority", p("87", 0.8667), p("84", 0.8356), p("90", 0.9032), p("87", 0.8715), ),
  ("", "TOTAL lower priority", p("9", 0.0911), p("9", 0.0911), p("7", 0.0651), p("11", 0.1095), ),
  ("", "NET priority", n("78", 0.7756), n("74", 0.7444), n("84", 0.8381), n("76", 0.7619), ),
  ("Climate change", "TOTAL high priority", p("68", 0.6841), p("62", 0.6165), p("67", 0.6730), p("76", 0.7588), ),
  ("", "TOTAL lower priority", p("27", 0.2672), p("29", 0.2913), p("30", 0.2961), p("22", 0.2229), ),
  ("", "NET priority", n("42", 0.4169), n("33", 0.3253), n("38", 0.3769), n("54", 0.5358), ),
))

#heading(level: 3, "By Household income")
#xtab(("Item", "Metric", ), ("Total", "<50k", "50k-<100k", "100k+", ), ("2430", "828", "766", "836", ), (
  ("Jobs", "TOTAL high priority", p("87", 0.8741), p("85", 0.8531), p("89", 0.8935), p("88", 0.8797), ),
  ("", "TOTAL lower priority", p("8", 0.0798), p("8", 0.0810), p("6", 0.0628), p("9", 0.0936), ),
  ("", "NET priority", n("79", 0.7943), n("77", 0.7721), n("83", 0.8307), n("79", 0.7862), ),
  ("Inflation", "TOTAL high priority", p("91", 0.9118), p("88", 0.8817), p("92", 0.9226), p("93", 0.9348), ),
  ("", "TOTAL lower priority", p("4", 0.0447), p("5", 0.0505), p("4", 0.0364), p("5", 0.0457), ),
  ("", "NET priority", n("87", 0.8671), n("83", 0.8312), n("89", 0.8861), n("89", 0.8890), ),
  ("AI harms", "TOTAL high priority", p("78", 0.7796), p("75", 0.7466), p("82", 0.8205), p("78", 0.7793), ),
  ("", "TOTAL lower priority", p("16", 0.1634), p("17", 0.1665), p("15", 0.1464), p("18", 0.1751), ),
  ("", "NET priority", n("62", 0.6162), n("58", 0.5801), n("67", 0.6741), n("60", 0.6042), ),
  ("Immigration", "TOTAL high priority", p("69", 0.6852), p("67", 0.6737), p("70", 0.6993), p("69", 0.6853), ),
  ("", "TOTAL lower priority", p("27", 0.2700), p("26", 0.2553), p("27", 0.2650), p("29", 0.2902), ),
  ("", "NET priority", n("42", 0.4152), n("42", 0.4183), n("43", 0.4343), n("40", 0.3951), ),
  ("Health care", "TOTAL high priority", p("91", 0.9074), p("89", 0.8940), p("90", 0.9027), p("93", 0.9260), ),
  ("", "TOTAL lower priority", p("6", 0.0574), p("6", 0.0576), p("6", 0.0631), p("5", 0.0521), ),
  ("", "NET priority", n("85", 0.8500), n("84", 0.8364), n("84", 0.8396), n("87", 0.8739), ),
  ("Crime", "TOTAL high priority", p("87", 0.8667), p("85", 0.8471), p("89", 0.8934), p("86", 0.8643), ),
  ("", "TOTAL lower priority", p("9", 0.0911), p("9", 0.0905), p("7", 0.0677), p("11", 0.1123), ),
  ("", "NET priority", n("78", 0.7756), n("76", 0.7566), n("83", 0.8257), n("75", 0.7521), ),
  ("Climate change", "TOTAL high priority", p("68", 0.6841), p("67", 0.6745), p("68", 0.6764), p("70", 0.7012), ),
  ("", "TOTAL lower priority", p("27", 0.2672), p("25", 0.2474), p("29", 0.2864), p("27", 0.2718), ),
  ("", "NET priority", n("42", 0.4169), n("43", 0.4271), n("39", 0.3900), n("43", 0.4294), ),
))

#heading(level: 2, "Affect")

#stem("Thinking about AI's growing role in society, which of these options comes closest to how you feel, even if none are exactly right?")

#defs("Each total combines multiple responses:", ("Total", "Responses", ), (
  ("TOTAL excited", "\"Very excited\" or \"Somewhat excited\"", ),
  ("TOTAL concerned", "\"Somewhat concerned\" or \"Very concerned\"", ),
))

#note[Cells (weighted): totals (%) and net (percentage points).]
#heading(level: 3, "By Sex")
#xtab(("Metric", ), ("Total", "Female", "Male", ), ("2430", "1292", "1138", ), (
  ("TOTAL excited", p("22", 0.2199), p("18", 0.1798), p("26", 0.2630), ),
  ("TOTAL concerned", p("69", 0.6941), p("72", 0.7220), p("66", 0.6642), ),
  ("None of these", p("8", 0.0776), p("9", 0.0857), p("7", 0.0690), ),
  ("No answer", p("1", 0.0084), p("1", 0.0125), p("<1", 0.0039), ),
  ("NET concerned", n("47", 0.4742), n("54", 0.5422), n("40", 0.4012), ),
))

#heading(level: 3, "By Party")
#xtab(("Metric", ), ("Total", "Dem", "Rep", "Ind", ), ("2430", "1192", "786", "429", ), (
  ("TOTAL excited", p("22", 0.2199), p("22", 0.2183), p("24", 0.2357), p("20", 0.2019), ),
  ("TOTAL concerned", p("69", 0.6941), p("73", 0.7281), p("69", 0.6926), p("64", 0.6383), ),
  ("None of these", p("8", 0.0776), p("5", 0.0533), p("6", 0.0635), p("14", 0.1449), ),
  ("No answer", p("1", 0.0084), p("<1", 0.0004), p("1", 0.0081), p("1", 0.0148), ),
  ("NET concerned", n("47", 0.4742), n("51", 0.5098), n("46", 0.4569), n("44", 0.4364), ),
))

#heading(level: 3, "By Age")
#xtab(("Metric", ), ("Total", "18–34", "35–49", "50–64", "65+", ), ("2430", "516", "597", "614", "703", ), (
  ("TOTAL excited", p("22", 0.2199), p("25", 0.2504), p("24", 0.2423), p("21", 0.2113), p("17", 0.1689), ),
  ("TOTAL concerned", p("69", 0.6941), p("66", 0.6554), p("65", 0.6495), p("71", 0.7132), p("77", 0.7675), ),
  ("None of these", p("8", 0.0776), p("8", 0.0826), p("9", 0.0949), p("7", 0.0703), p("6", 0.0611), ),
  ("No answer", p("1", 0.0084), p("1", 0.0116), p("1", 0.0133), p("1", 0.0052), p("<1", 0.0025), ),
  ("NET concerned", n("47", 0.4742), n("40", 0.4049), n("41", 0.4071), n("50", 0.5019), n("60", 0.5986), ),
))

#heading(level: 3, "By Ethnicity")
#xtab(("Metric", ), ("Total", "White", "Black", "Hispanic", "Asian/PI", ), ("2430", "1345", "401", "418", "162", ), (
  ("TOTAL excited", p("22", 0.2199), p("18", 0.1794), p("27", 0.2705), p("26", 0.2606), p("35", 0.3537), ),
  ("TOTAL concerned", p("69", 0.6941), p("74", 0.7442), p("59", 0.5936), p("63", 0.6303), p("60", 0.6022), ),
  ("None of these", p("8", 0.0776), p("7", 0.0680), p("13", 0.1328), p("10", 0.0959), p("4", 0.0350), ),
  ("No answer", p("1", 0.0084), p("1", 0.0084), p("<1", 0.0030), p("1", 0.0132), p("1", 0.0091), ),
  ("NET concerned", n("47", 0.4742), n("56", 0.5648), n("32", 0.3231), n("37", 0.3696), n("25", 0.2484), ),
))

#heading(level: 3, "By Education")
#xtab(("Metric", ), ("Total", "HS or less", "Some college", "BA+", ), ("2430", "579", "893", "958", ), (
  ("TOTAL excited", p("22", 0.2199), p("21", 0.2057), p("21", 0.2086), p("24", 0.2419), ),
  ("TOTAL concerned", p("69", 0.6941), p("67", 0.6694), p("71", 0.7072), p("71", 0.7093), ),
  ("None of these", p("8", 0.0776), p("11", 0.1084), p("8", 0.0812), p("4", 0.0447), ),
  ("No answer", p("1", 0.0084), p("2", 0.0165), p("<1", 0.0030), p("<1", 0.0042), ),
  ("NET concerned", n("47", 0.4742), n("46", 0.4637), n("50", 0.4986), n("47", 0.4674), ),
))

#heading(level: 3, "By Household income")
#xtab(("Metric", ), ("Total", "<50k", "50k-<100k", "100k+", ), ("2430", "828", "766", "836", ), (
  ("TOTAL excited", p("22", 0.2199), p("20", 0.1974), p("21", 0.2145), p("25", 0.2489), ),
  ("TOTAL concerned", p("69", 0.6941), p("68", 0.6807), p("70", 0.6964), p("71", 0.7067), ),
  ("None of these", p("8", 0.0776), p("10", 0.1037), p("9", 0.0863), p("4", 0.0420), ),
  ("No answer", p("1", 0.0084), p("2", 0.0183), p("<1", 0.0028), p("<1", 0.0025), ),
  ("NET concerned", n("47", 0.4742), n("48", 0.4833), n("48", 0.4818), n("46", 0.4578), ),
))

#heading(level: 2, "Agency")

#stem("Again, thinking about AI, which statement comes closer to your view, even if neither is exactly right?")

#note[Cells (weighted): totals (%) and net (percentage points).]
#heading(level: 3, "By Sex")
#xtab(("Metric", ), ("Total", "Female", "Male", ), ("2430", "1292", "1138", ), (
  ("TOTAL can shape", p("16", 0.1560), p("14", 0.1411), p("17", 0.1720), ),
  ("TOTAL inevitable", p("68", 0.6831), p("69", 0.6944), p("67", 0.6711), ),
  ("Neither of these", p("14", 0.1432), p("15", 0.1454), p("14", 0.1408), ),
  ("No answer", p("2", 0.0177), p("2", 0.0192), p("2", 0.0161), ),
  ("NET inevitable", n("53", 0.5272), n("55", 0.5533), n("50", 0.4991), ),
))

#heading(level: 3, "By Party")
#xtab(("Metric", ), ("Total", "Dem", "Rep", "Ind", ), ("2430", "1192", "786", "429", ), (
  ("TOTAL can shape", p("16", 0.1560), p("16", 0.1591), p("15", 0.1548), p("16", 0.1598), ),
  ("TOTAL inevitable", p("68", 0.6831), p("71", 0.7064), p("72", 0.7162), p("59", 0.5943), ),
  ("Neither of these", p("14", 0.1432), p("13", 0.1265), p("12", 0.1189), p("21", 0.2100), ),
  ("No answer", p("2", 0.0177), p("1", 0.0080), p("1", 0.0101), p("4", 0.0358), ),
  ("NET inevitable", n("53", 0.5272), n("55", 0.5473), n("56", 0.5614), n("43", 0.4345), ),
))

#heading(level: 3, "By Age")
#xtab(("Metric", ), ("Total", "18–34", "35–49", "50–64", "65+", ), ("2430", "516", "597", "614", "703", ), (
  ("TOTAL can shape", p("16", 0.1560), p("20", 0.2032), p("16", 0.1642), p("15", 0.1475), p("10", 0.0995), ),
  ("TOTAL inevitable", p("68", 0.6831), p("59", 0.5919), p("66", 0.6562), p("73", 0.7336), p("77", 0.7715), ),
  ("Neither of these", p("14", 0.1432), p("18", 0.1799), p("15", 0.1539), p("11", 0.1074), p("12", 0.1223), ),
  ("No answer", p("2", 0.0177), p("3", 0.0250), p("3", 0.0257), p("1", 0.0115), p("1", 0.0067), ),
  ("NET inevitable", n("53", 0.5272), n("39", 0.3887), n("49", 0.4920), n("59", 0.5861), n("67", 0.6720), ),
))

#heading(level: 3, "By Ethnicity")
#xtab(("Metric", ), ("Total", "White", "Black", "Hispanic", "Asian/PI", ), ("2430", "1345", "401", "418", "162", ), (
  ("TOTAL can shape", p("16", 0.1560), p("14", 0.1403), p("18", 0.1785), p("18", 0.1765), p("21", 0.2069), ),
  ("TOTAL inevitable", p("68", 0.6831), p("71", 0.7074), p("62", 0.6221), p("65", 0.6467), p("65", 0.6525), ),
  ("Neither of these", p("14", 0.1432), p("14", 0.1418), p("17", 0.1725), p("15", 0.1499), p("9", 0.0899), ),
  ("No answer", p("2", 0.0177), p("1", 0.0104), p("3", 0.0268), p("3", 0.0269), p("5", 0.0507), ),
  ("NET inevitable", n("53", 0.5272), n("57", 0.5671), n("44", 0.4437), n("47", 0.4702), n("45", 0.4457), ),
))

#heading(level: 3, "By Education")
#xtab(("Metric", ), ("Total", "HS or less", "Some college", "BA+", ), ("2430", "579", "893", "958", ), (
  ("TOTAL can shape", p("16", 0.1560), p("15", 0.1517), p("16", 0.1576), p("16", 0.1590), ),
  ("TOTAL inevitable", p("68", 0.6831), p("63", 0.6250), p("69", 0.6916), p("73", 0.7346), ),
  ("Neither of these", p("14", 0.1432), p("19", 0.1862), p("14", 0.1401), p("10", 0.1029), ),
  ("No answer", p("2", 0.0177), p("4", 0.0371), p("1", 0.0107), p("<1", 0.0035), ),
  ("NET inevitable", n("53", 0.5272), n("47", 0.4733), n("53", 0.5340), n("58", 0.5756), ),
))

#heading(level: 3, "By Household income")
#xtab(("Metric", ), ("Total", "<50k", "50k-<100k", "100k+", ), ("2430", "828", "766", "836", ), (
  ("TOTAL can shape", p("16", 0.1560), p("15", 0.1494), p("14", 0.1440), p("17", 0.1735), ),
  ("TOTAL inevitable", p("68", 0.6831), p("64", 0.6364), p("70", 0.6967), p("72", 0.7216), ),
  ("Neither of these", p("14", 0.1432), p("19", 0.1856), p("14", 0.1448), p("10", 0.0961), ),
  ("No answer", p("2", 0.0177), p("3", 0.0285), p("1", 0.0145), p("1", 0.0088), ),
  ("NET inevitable", n("53", 0.5272), n("49", 0.4870), n("55", 0.5526), n("55", 0.5481), ),
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
#xtab(("Item", "Metric", ), ("Total", "Female", "Male", ), ("2430", "1292", "1138", ), (
  ("Saving time", "TOTAL realized", p("47", 0.4711), p("45", 0.4460), p("50", 0.4980), ),
  ("", "TOTAL not yet", p("30", 0.2962), p("30", 0.3019), p("29", 0.2901), ),
  ("", "NET realized", n("17", 0.1749), n("14", 0.1441), n("21", 0.2079), ),
  ("Pressured to do more", "TOTAL realized", p("51", 0.5061), p("51", 0.5052), p("51", 0.5071), ),
  ("", "TOTAL not yet", p("27", 0.2732), p("25", 0.2493), p("30", 0.2988), ),
  ("", "NET realized", n("23", 0.2329), n("26", 0.2559), n("21", 0.2083), ),
  ("Losing connections", "TOTAL realized", p("60", 0.5973), p("62", 0.6234), p("57", 0.5692), ),
  ("", "TOTAL not yet", p("24", 0.2416), p("22", 0.2212), p("26", 0.2636), ),
  ("", "NET realized", n("36", 0.3557), n("40", 0.4023), n("31", 0.3057), ),
  ("Real vs. fake", "TOTAL realized", p("80", 0.8016), p("82", 0.8222), p("78", 0.7794), ),
  ("", "TOTAL not yet", p("11", 0.1111), p("10", 0.0969), p("13", 0.1265), ),
  ("", "NET realized", n("69", 0.6904), n("73", 0.7254), n("65", 0.6529), ),
  ("Better health care", "TOTAL realized", p("18", 0.1772), p("16", 0.1632), p("19", 0.1922), ),
  ("", "TOTAL not yet", p("52", 0.5245), p("52", 0.5230), p("53", 0.5260), ),
  ("", "NET realized", n("−35", -0.3473), n("−36", -0.3599), n("−33", -0.3338), ),
))

#heading(level: 3, "By Party")
#xtab(("Item", "Metric", ), ("Total", "Dem", "Rep", "Ind", ), ("2430", "1192", "786", "429", ), (
  ("Saving time", "TOTAL realized", p("47", 0.4711), p("49", 0.4929), p("49", 0.4892), p("41", 0.4118), ),
  ("", "TOTAL not yet", p("30", 0.2962), p("31", 0.3091), p("27", 0.2741), p("32", 0.3190), ),
  ("", "NET realized", n("17", 0.1749), n("18", 0.1839), n("22", 0.2151), n("9", 0.0928), ),
  ("Pressured to do more", "TOTAL realized", p("51", 0.5061), p("58", 0.5802), p("45", 0.4546), p("47", 0.4655), ),
  ("", "TOTAL not yet", p("27", 0.2732), p("25", 0.2523), p("30", 0.2974), p("28", 0.2818), ),
  ("", "NET realized", n("23", 0.2329), n("33", 0.3279), n("16", 0.1572), n("18", 0.1837), ),
  ("Losing connections", "TOTAL realized", p("60", 0.5973), p("63", 0.6328), p("59", 0.5900), p("55", 0.5527), ),
  ("", "TOTAL not yet", p("24", 0.2416), p("23", 0.2259), p("26", 0.2568), p("26", 0.2552), ),
  ("", "NET realized", n("36", 0.3557), n("41", 0.4069), n("33", 0.3332), n("30", 0.2975), ),
  ("Real vs. fake", "TOTAL realized", p("80", 0.8016), p("84", 0.8400), p("80", 0.7988), p("75", 0.7501), ),
  ("", "TOTAL not yet", p("11", 0.1111), p("10", 0.0973), p("11", 0.1106), p("14", 0.1408), ),
  ("", "NET realized", n("69", 0.6904), n("74", 0.7427), n("69", 0.6882), n("61", 0.6093), ),
  ("Better health care", "TOTAL realized", p("18", 0.1772), p("16", 0.1611), p("17", 0.1749), p("22", 0.2171), ),
  ("", "TOTAL not yet", p("52", 0.5245), p("57", 0.5695), p("53", 0.5338), p("44", 0.4407), ),
  ("", "NET realized", n("−35", -0.3473), n("−41", -0.4083), n("−36", -0.3589), n("−22", -0.2236), ),
))

#heading(level: 3, "By Age")
#xtab(("Item", "Metric", ), ("Total", "18–34", "35–49", "50–64", "65+", ), ("2430", "516", "597", "614", "703", ), (
  ("Saving time", "TOTAL realized", p("47", 0.4711), p("55", 0.5539), p("52", 0.5234), p("43", 0.4325), p("36", 0.3559), ),
  ("", "TOTAL not yet", p("30", 0.2962), p("27", 0.2738), p("26", 0.2646), p("31", 0.3075), p("34", 0.3443), ),
  ("", "NET realized", n("17", 0.1749), n("28", 0.2801), n("26", 0.2588), n("13", 0.1250), n("1", 0.0116), ),
  ("Pressured to do more", "TOTAL realized", p("51", 0.5061), p("57", 0.5738), p("56", 0.5645), p("50", 0.4961), p("38", 0.3760), ),
  ("", "TOTAL not yet", p("27", 0.2732), p("26", 0.2599), p("24", 0.2417), p("28", 0.2843), p("31", 0.3105), ),
  ("", "NET realized", n("23", 0.2329), n("31", 0.3140), n("32", 0.3228), n("21", 0.2118), n("7", 0.0656), ),
  ("Losing connections", "TOTAL realized", p("60", 0.5973), p("62", 0.6228), p("64", 0.6398), p("62", 0.6190), p("50", 0.5039), ),
  ("", "TOTAL not yet", p("24", 0.2416), p("23", 0.2343), p("22", 0.2157), p("25", 0.2535), p("27", 0.2655), ),
  ("", "NET realized", n("36", 0.3557), n("39", 0.3885), n("42", 0.4241), n("37", 0.3655), n("24", 0.2385), ),
  ("Real vs. fake", "TOTAL realized", p("80", 0.8016), p("81", 0.8055), p("79", 0.7911), p("84", 0.8426), p("77", 0.7693), ),
  ("", "TOTAL not yet", p("11", 0.1111), p("12", 0.1185), p("11", 0.1086), p("10", 0.0973), p("12", 0.1179), ),
  ("", "NET realized", n("69", 0.6904), n("69", 0.6870), n("68", 0.6825), n("75", 0.7453), n("65", 0.6514), ),
  ("Better health care", "TOTAL realized", p("18", 0.1772), p("21", 0.2145), p("17", 0.1650), p("16", 0.1551), p("17", 0.1659), ),
  ("", "TOTAL not yet", p("52", 0.5245), p("55", 0.5473), p("50", 0.4999), p("54", 0.5444), p("50", 0.5037), ),
  ("", "NET realized", n("−35", -0.3473), n("−33", -0.3328), n("−34", -0.3350), n("−39", -0.3893), n("−34", -0.3379), ),
))

#heading(level: 3, "By Ethnicity")
#xtab(("Item", "Metric", ), ("Total", "White", "Black", "Hispanic", "Asian/PI", ), ("2430", "1345", "401", "418", "162", ), (
  ("Saving time", "TOTAL realized", p("47", 0.4711), p("44", 0.4444), p("48", 0.4821), p("50", 0.5009), p("61", 0.6081), ),
  ("", "TOTAL not yet", p("30", 0.2962), p("31", 0.3112), p("25", 0.2530), p("30", 0.2994), p("21", 0.2101), ),
  ("", "NET realized", n("17", 0.1749), n("13", 0.1332), n("23", 0.2291), n("20", 0.2014), n("40", 0.3980), ),
  ("Pressured to do more", "TOTAL realized", p("51", 0.5061), p("49", 0.4885), p("56", 0.5552), p("49", 0.4901), p("60", 0.5952), ),
  ("", "TOTAL not yet", p("27", 0.2732), p("28", 0.2793), p("23", 0.2324), p("28", 0.2814), p("25", 0.2452), ),
  ("", "NET realized", n("23", 0.2329), n("21", 0.2091), n("32", 0.3229), n("21", 0.2087), n("35", 0.3500), ),
  ("Losing connections", "TOTAL realized", p("60", 0.5973), p("60", 0.6041), p("59", 0.5856), p("59", 0.5868), p("58", 0.5822), ),
  ("", "TOTAL not yet", p("24", 0.2416), p("24", 0.2431), p("22", 0.2152), p("23", 0.2329), p("28", 0.2800), ),
  ("", "NET realized", n("36", 0.3557), n("36", 0.3610), n("37", 0.3704), n("35", 0.3538), n("30", 0.3022), ),
  ("Real vs. fake", "TOTAL realized", p("80", 0.8016), p("82", 0.8159), p("79", 0.7874), p("76", 0.7646), p("77", 0.7716), ),
  ("", "TOTAL not yet", p("11", 0.1111), p("10", 0.1002), p("10", 0.0989), p("15", 0.1483), p("14", 0.1362), ),
  ("", "NET realized", n("69", 0.6904), n("72", 0.7157), n("69", 0.6886), n("62", 0.6164), n("64", 0.6355), ),
  ("Better health care", "TOTAL realized", p("18", 0.1772), p("14", 0.1409), p("24", 0.2428), p("21", 0.2064), p("24", 0.2433), ),
  ("", "TOTAL not yet", p("52", 0.5245), p("56", 0.5642), p("44", 0.4411), p("50", 0.4964), p("46", 0.4575), ),
  ("", "NET realized", n("−35", -0.3473), n("−42", -0.4232), n("−20", -0.1983), n("−29", -0.2900), n("−21", -0.2142), ),
))

#heading(level: 3, "By Education")
#xtab(("Item", "Metric", ), ("Total", "HS or less", "Some college", "BA+", ), ("2430", "579", "893", "958", ), (
  ("Saving time", "TOTAL realized", p("47", 0.4711), p("39", 0.3891), p("42", 0.4229), p("59", 0.5863), ),
  ("", "TOTAL not yet", p("30", 0.2962), p("33", 0.3251), p("30", 0.2988), p("27", 0.2658), ),
  ("", "NET realized", n("17", 0.1749), n("6", 0.0640), n("12", 0.1241), n("32", 0.3205), ),
  ("Pressured to do more", "TOTAL realized", p("51", 0.5061), p("47", 0.4709), p("46", 0.4574), p("58", 0.5756), ),
  ("", "TOTAL not yet", p("27", 0.2732), p("26", 0.2600), p("30", 0.2979), p("27", 0.2686), ),
  ("", "NET realized", n("23", 0.2329), n("21", 0.2109), n("16", 0.1594), n("31", 0.3071), ),
  ("Losing connections", "TOTAL realized", p("60", 0.5973), p("55", 0.5537), p("62", 0.6237), p("62", 0.6216), ),
  ("", "TOTAL not yet", p("24", 0.2416), p("24", 0.2445), p("23", 0.2260), p("25", 0.2498), ),
  ("", "NET realized", n("36", 0.3557), n("31", 0.3092), n("40", 0.3977), n("37", 0.3718), ),
  ("Real vs. fake", "TOTAL realized", p("80", 0.8016), p("71", 0.7091), p("82", 0.8203), p("88", 0.8796), ),
  ("", "TOTAL not yet", p("11", 0.1111), p("15", 0.1542), p("10", 0.0976), p("8", 0.0782), ),
  ("", "NET realized", n("69", 0.6904), n("55", 0.5549), n("72", 0.7227), n("80", 0.8014), ),
  ("Better health care", "TOTAL realized", p("18", 0.1772), p("20", 0.1981), p("17", 0.1714), p("16", 0.1605), ),
  ("", "TOTAL not yet", p("52", 0.5245), p("47", 0.4711), p("53", 0.5255), p("58", 0.5764), ),
  ("", "NET realized", n("−35", -0.3473), n("−27", -0.2730), n("−35", -0.3541), n("−42", -0.4159), ),
))

#heading(level: 3, "By Household income")
#xtab(("Item", "Metric", ), ("Total", "<50k", "50k-<100k", "100k+", ), ("2430", "828", "766", "836", ), (
  ("Saving time", "TOTAL realized", p("47", 0.4711), p("37", 0.3726), p("48", 0.4841), p("57", 0.5657), ),
  ("", "TOTAL not yet", p("30", 0.2962), p("33", 0.3272), p("30", 0.2955), p("26", 0.2634), ),
  ("", "NET realized", n("17", 0.1749), n("5", 0.0455), n("19", 0.1885), n("30", 0.3023), ),
  ("Pressured to do more", "TOTAL realized", p("51", 0.5061), p("48", 0.4796), p("51", 0.5110), p("53", 0.5304), ),
  ("", "TOTAL not yet", p("27", 0.2732), p("26", 0.2617), p("28", 0.2806), p("28", 0.2790), ),
  ("", "NET realized", n("23", 0.2329), n("22", 0.2179), n("23", 0.2304), n("25", 0.2514), ),
  ("Losing connections", "TOTAL realized", p("60", 0.5973), p("58", 0.5841), p("62", 0.6228), p("59", 0.5892), ),
  ("", "TOTAL not yet", p("24", 0.2416), p("22", 0.2194), p("25", 0.2460), p("26", 0.2617), ),
  ("", "NET realized", n("36", 0.3557), n("36", 0.3647), n("38", 0.3768), n("33", 0.3275), ),
  ("Real vs. fake", "TOTAL realized", p("80", 0.8016), p("74", 0.7365), p("82", 0.8228), p("85", 0.8531), ),
  ("", "TOTAL not yet", p("11", 0.1111), p("14", 0.1370), p("10", 0.1019), p("9", 0.0913), ),
  ("", "NET realized", n("69", 0.6904), n("60", 0.5994), n("72", 0.7209), n("76", 0.7618), ),
  ("Better health care", "TOTAL realized", p("18", 0.1772), p("18", 0.1754), p("18", 0.1771), p("18", 0.1791), ),
  ("", "TOTAL not yet", p("52", 0.5245), p("49", 0.4905), p("52", 0.5238), p("56", 0.5617), ),
  ("", "NET realized", n("−35", -0.3473), n("−32", -0.3151), n("−35", -0.3467), n("−38", -0.3826), ),
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
#xtab(("Item", "Metric", ), ("Total", "Female", "Male", ), ("2430", "1292", "1138", ), (
  ("Jobs", "TOTAL better", p("15", 0.1473), p("14", 0.1446), p("15", 0.1503), ),
  ("", "TOTAL worse", p("74", 0.7367), p("75", 0.7465), p("73", 0.7262), ),
  ("", "NET worse", n("59", 0.5894), n("60", 0.6019), n("58", 0.5759), ),
  ("Future", "TOTAL better", p("32", 0.3191), p("27", 0.2698), p("37", 0.3721), ),
  ("", "TOTAL worse", p("55", 0.5548), p("61", 0.6071), p("50", 0.4986), ),
  ("", "NET worse", n("24", 0.2358), n("34", 0.3373), n("13", 0.1266), ),
  ("Children", "TOTAL better", p("19", 0.1906), p("16", 0.1646), p("22", 0.2185), ),
  ("", "TOTAL worse", p("64", 0.6408), p("68", 0.6760), p("60", 0.6029), ),
  ("", "NET worse", n("45", 0.4502), n("51", 0.5114), n("38", 0.3844), ),
  ("Finances", "TOTAL better", p("28", 0.2766), p("23", 0.2348), p("32", 0.3215), ),
  ("", "TOTAL worse", p("43", 0.4319), p("47", 0.4736), p("39", 0.3870), ),
  ("", "NET worse", n("16", 0.1553), n("24", 0.2388), n("7", 0.0655), ),
))

#heading(level: 3, "By Party")
#xtab(("Item", "Metric", ), ("Total", "Dem", "Rep", "Ind", ), ("2430", "1192", "786", "429", ), (
  ("Jobs", "TOTAL better", p("15", 0.1473), p("12", 0.1244), p("15", 0.1526), p("19", 0.1856), ),
  ("", "TOTAL worse", p("74", 0.7367), p("79", 0.7863), p("74", 0.7354), p("66", 0.6578), ),
  ("", "NET worse", n("59", 0.5894), n("66", 0.6619), n("58", 0.5828), n("47", 0.4721), ),
  ("Future", "TOTAL better", p("32", 0.3191), p("27", 0.2697), p("37", 0.3738), p("33", 0.3283), ),
  ("", "TOTAL worse", p("55", 0.5548), p("63", 0.6291), p("50", 0.4972), p("52", 0.5211), ),
  ("", "NET worse", n("24", 0.2358), n("36", 0.3594), n("12", 0.1233), n("19", 0.1928), ),
  ("Children", "TOTAL better", p("19", 0.1906), p("18", 0.1825), p("19", 0.1903), p("21", 0.2116), ),
  ("", "TOTAL worse", p("64", 0.6408), p("68", 0.6770), p("64", 0.6358), p("59", 0.5905), ),
  ("", "NET worse", n("45", 0.4502), n("49", 0.4945), n("45", 0.4455), n("38", 0.3789), ),
  ("Finances", "TOTAL better", p("28", 0.2766), p("25", 0.2529), p("32", 0.3205), p("25", 0.2471), ),
  ("", "TOTAL worse", p("43", 0.4319), p("49", 0.4873), p("37", 0.3697), p("44", 0.4446), ),
  ("", "NET worse", n("16", 0.1553), n("23", 0.2343), n("5", 0.0492), n("20", 0.1975), ),
))

#heading(level: 3, "By Age")
#xtab(("Item", "Metric", ), ("Total", "18–34", "35–49", "50–64", "65+", ), ("2430", "516", "597", "614", "703", ), (
  ("Jobs", "TOTAL better", p("15", 0.1473), p("20", 0.1963), p("16", 0.1595), p("11", 0.1122), p("11", 0.1097), ),
  ("", "TOTAL worse", p("74", 0.7367), p("70", 0.6986), p("73", 0.7304), p("77", 0.7719), p("76", 0.7556), ),
  ("", "NET worse", n("59", 0.5894), n("50", 0.5022), n("57", 0.5709), n("66", 0.6597), n("65", 0.6459), ),
  ("Future", "TOTAL better", p("32", 0.3191), p("29", 0.2934), p("29", 0.2933), p("32", 0.3150), p("38", 0.3794), ),
  ("", "TOTAL worse", p("55", 0.5548), p("59", 0.5866), p("56", 0.5635), p("56", 0.5635), p("50", 0.5003), ),
  ("", "NET worse", n("24", 0.2358), n("29", 0.2931), n("27", 0.2702), n("25", 0.2486), n("12", 0.1209), ),
  ("Children", "TOTAL better", p("19", 0.1906), p("18", 0.1809), p("16", 0.1638), p("20", 0.2010), p("22", 0.2194), ),
  ("", "TOTAL worse", p("64", 0.6408), p("66", 0.6562), p("66", 0.6648), p("65", 0.6476), p("59", 0.5918), ),
  ("", "NET worse", n("45", 0.4502), n("48", 0.4753), n("50", 0.5009), n("45", 0.4466), n("37", 0.3724), ),
  ("Finances", "TOTAL better", p("28", 0.2766), p("30", 0.2986), p("28", 0.2819), p("26", 0.2565), p("26", 0.2638), ),
  ("", "TOTAL worse", p("43", 0.4319), p("42", 0.4174), p("43", 0.4342), p("48", 0.4802), p("40", 0.4018), ),
  ("", "NET worse", n("16", 0.1553), n("12", 0.1188), n("15", 0.1523), n("22", 0.2237), n("14", 0.1381), ),
))

#heading(level: 3, "By Ethnicity")
#xtab(("Item", "Metric", ), ("Total", "White", "Black", "Hispanic", "Asian/PI", ), ("2430", "1345", "401", "418", "162", ), (
  ("Jobs", "TOTAL better", p("15", 0.1473), p("11", 0.1077), p("26", 0.2561), p("19", 0.1851), p("21", 0.2082), ),
  ("", "TOTAL worse", p("74", 0.7367), p("78", 0.7815), p("60", 0.5971), p("69", 0.6900), p("69", 0.6937), ),
  ("", "NET worse", n("59", 0.5894), n("67", 0.6738), n("34", 0.3410), n("50", 0.5049), n("49", 0.4855), ),
  ("Future", "TOTAL better", p("32", 0.3191), p("29", 0.2934), p("36", 0.3555), p("35", 0.3499), p("43", 0.4265), ),
  ("", "TOTAL worse", p("55", 0.5548), p("58", 0.5836), p("48", 0.4762), p("53", 0.5278), p("44", 0.4442), ),
  ("", "NET worse", n("24", 0.2358), n("29", 0.2903), n("12", 0.1207), n("18", 0.1779), n("2", 0.0176), ),
  ("Children", "TOTAL better", p("19", 0.1906), p("15", 0.1517), p("27", 0.2729), p("22", 0.2163), p("32", 0.3224), ),
  ("", "TOTAL worse", p("64", 0.6408), p("68", 0.6844), p("54", 0.5418), p("61", 0.6056), p("51", 0.5121), ),
  ("", "NET worse", n("45", 0.4502), n("53", 0.5327), n("27", 0.2690), n("39", 0.3892), n("19", 0.1897), ),
  ("Finances", "TOTAL better", p("28", 0.2766), p("25", 0.2536), p("28", 0.2830), p("32", 0.3215), p("39", 0.3885), ),
  ("", "TOTAL worse", p("43", 0.4319), p("44", 0.4422), p("43", 0.4299), p("42", 0.4170), p("37", 0.3718), ),
  ("", "NET worse", n("16", 0.1553), n("19", 0.1886), n("15", 0.1469), n("10", 0.0955), n("−2", -0.0167), ),
))

#heading(level: 3, "By Education")
#xtab(("Item", "Metric", ), ("Total", "HS or less", "Some college", "BA+", ), ("2430", "579", "893", "958", ), (
  ("Jobs", "TOTAL better", p("15", 0.1473), p("21", 0.2073), p("16", 0.1559), p("8", 0.0820), ),
  ("", "TOTAL worse", p("74", 0.7367), p("64", 0.6393), p("74", 0.7435), p("83", 0.8281), ),
  ("", "NET worse", n("59", 0.5894), n("43", 0.4320), n("59", 0.5877), n("75", 0.7460), ),
  ("Future", "TOTAL better", p("32", 0.3191), p("30", 0.2962), p("37", 0.3706), p("31", 0.3051), ),
  ("", "TOTAL worse", p("55", 0.5548), p("55", 0.5513), p("51", 0.5133), p("59", 0.5879), ),
  ("", "NET worse", n("24", 0.2358), n("26", 0.2551), n("14", 0.1427), n("28", 0.2828), ),
  ("Children", "TOTAL better", p("19", 0.1906), p("19", 0.1932), p("23", 0.2324), p("16", 0.1582), ),
  ("", "TOTAL worse", p("64", 0.6408), p("61", 0.6079), p("60", 0.6018), p("70", 0.7009), ),
  ("", "NET worse", n("45", 0.4502), n("41", 0.4148), n("37", 0.3694), n("54", 0.5427), ),
  ("Finances", "TOTAL better", p("28", 0.2766), p("24", 0.2386), p("29", 0.2928), p("30", 0.3026), ),
  ("", "TOTAL worse", p("43", 0.4319), p("46", 0.4587), p("42", 0.4248), p("41", 0.4105), ),
  ("", "NET worse", n("16", 0.1553), n("22", 0.2201), n("13", 0.1320), n("11", 0.1079), ),
))

#heading(level: 3, "By Household income")
#xtab(("Item", "Metric", ), ("Total", "<50k", "50k-<100k", "100k+", ), ("2430", "828", "766", "836", ), (
  ("Jobs", "TOTAL better", p("15", 0.1473), p("18", 0.1840), p("14", 0.1362), p("12", 0.1176), ),
  ("", "TOTAL worse", p("74", 0.7367), p("66", 0.6625), p("75", 0.7540), p("80", 0.8015), ),
  ("", "NET worse", n("59", 0.5894), n("48", 0.4785), n("62", 0.6178), n("68", 0.6839), ),
  ("Future", "TOTAL better", p("32", 0.3191), p("33", 0.3283), p("31", 0.3126), p("31", 0.3148), ),
  ("", "TOTAL worse", p("55", 0.5548), p("50", 0.5037), p("58", 0.5766), p("59", 0.5908), ),
  ("", "NET worse", n("24", 0.2358), n("18", 0.1754), n("26", 0.2640), n("28", 0.2760), ),
  ("Children", "TOTAL better", p("19", 0.1906), p("22", 0.2200), p("17", 0.1668), p("18", 0.1797), ),
  ("", "TOTAL worse", p("64", 0.6408), p("58", 0.5766), p("67", 0.6690), p("69", 0.6851), ),
  ("", "NET worse", n("45", 0.4502), n("36", 0.3566), n("50", 0.5021), n("51", 0.5055), ),
  ("Finances", "TOTAL better", p("28", 0.2766), p("26", 0.2621), p("29", 0.2896), p("28", 0.2808), ),
  ("", "TOTAL worse", p("43", 0.4319), p("41", 0.4129), p("45", 0.4522), p("43", 0.4345), ),
  ("", "NET worse", n("16", 0.1553), n("15", 0.1509), n("16", 0.1626), n("15", 0.1537), ),
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
#xtab(("Item", "Metric", ), ("Total", "Female", "Male", ), ("2430", "1292", "1138", ), (
  ("Children", "TOTAL too much", p("28", 0.2771), p("29", 0.2899), p("26", 0.2633), ),
  ("", "TOTAL too little", p("44", 0.4403), p("44", 0.4410), p("44", 0.4394), ),
  ("", "NET too little", n("16", 0.1632), n("15", 0.1512), n("18", 0.1761), ),
  ("Environment", "TOTAL too much", p("26", 0.2591), p("25", 0.2478), p("27", 0.2712), ),
  ("", "TOTAL too little", p("43", 0.4341), p("44", 0.4447), p("42", 0.4228), ),
  ("", "NET too little", n("18", 0.1751), n("20", 0.1969), n("15", 0.1516), ),
  ("Workers", "TOTAL too much", p("24", 0.2410), p("26", 0.2608), p("22", 0.2197), ),
  ("", "TOTAL too little", p("43", 0.4259), p("42", 0.4247), p("43", 0.4271), ),
  ("", "NET too little", n("18", 0.1849), n("16", 0.1639), n("21", 0.2074), ),
  ("Competitiveness", "TOTAL too much", p("21", 0.2128), p("23", 0.2292), p("20", 0.1952), ),
  ("", "TOTAL too little", p("31", 0.3097), p("29", 0.2935), p("33", 0.3271), ),
  ("", "NET too little", n("10", 0.0969), n("6", 0.0643), n("13", 0.1319), ),
))

#heading(level: 3, "By Party")
#xtab(("Item", "Metric", ), ("Total", "Dem", "Rep", "Ind", ), ("2430", "1192", "786", "429", ), (
  ("Children", "TOTAL too much", p("28", 0.2771), p("25", 0.2524), p("30", 0.2983), p("29", 0.2943), ),
  ("", "TOTAL too little", p("44", 0.4403), p("53", 0.5284), p("39", 0.3900), p("37", 0.3684), ),
  ("", "NET too little", n("16", 0.1632), n("28", 0.2761), n("9", 0.0917), n("7", 0.0742), ),
  ("Environment", "TOTAL too much", p("26", 0.2591), p("25", 0.2549), p("27", 0.2705), p("25", 0.2540), ),
  ("", "TOTAL too little", p("43", 0.4341), p("55", 0.5465), p("37", 0.3675), p("34", 0.3440), ),
  ("", "NET too little", n("18", 0.1751), n("29", 0.2916), n("10", 0.0969), n("9", 0.0900), ),
  ("Workers", "TOTAL too much", p("24", 0.2410), p("21", 0.2148), p("26", 0.2592), p("27", 0.2666), ),
  ("", "TOTAL too little", p("43", 0.4259), p("54", 0.5418), p("34", 0.3443), p("35", 0.3531), ),
  ("", "NET too little", n("18", 0.1849), n("33", 0.3269), n("9", 0.0851), n("9", 0.0865), ),
  ("Competitiveness", "TOTAL too much", p("21", 0.2128), p("21", 0.2065), p("21", 0.2101), p("24", 0.2356), ),
  ("", "TOTAL too little", p("31", 0.3097), p("39", 0.3850), p("26", 0.2574), p("26", 0.2606), ),
  ("", "NET too little", n("10", 0.0969), n("18", 0.1784), n("5", 0.0473), n("3", 0.0250), ),
))

#heading(level: 3, "By Age")
#xtab(("Item", "Metric", ), ("Total", "18–34", "35–49", "50–64", "65+", ), ("2430", "516", "597", "614", "703", ), (
  ("Children", "TOTAL too much", p("28", 0.2771), p("28", 0.2815), p("30", 0.2952), p("30", 0.2989), p("23", 0.2333), ),
  ("", "TOTAL too little", p("44", 0.4403), p("45", 0.4465), p("37", 0.3738), p("46", 0.4608), p("48", 0.4810), ),
  ("", "NET too little", n("16", 0.1632), n("17", 0.1651), n("8", 0.0786), n("16", 0.1619), n("25", 0.2478), ),
  ("Environment", "TOTAL too much", p("26", 0.2591), p("25", 0.2512), p("28", 0.2790), p("28", 0.2763), p("23", 0.2321), ),
  ("", "TOTAL too little", p("43", 0.4341), p("44", 0.4426), p("39", 0.3931), p("45", 0.4461), p("45", 0.4545), ),
  ("", "NET too little", n("18", 0.1751), n("19", 0.1915), n("11", 0.1141), n("17", 0.1697), n("22", 0.2223), ),
  ("Workers", "TOTAL too much", p("24", 0.2410), p("26", 0.2606), p("24", 0.2445), p("24", 0.2373), p("22", 0.2177), ),
  ("", "TOTAL too little", p("43", 0.4259), p("41", 0.4127), p("38", 0.3750), p("45", 0.4465), p("47", 0.4737), ),
  ("", "NET too little", n("18", 0.1849), n("15", 0.1521), n("13", 0.1305), n("21", 0.2092), n("26", 0.2561), ),
  ("Competitiveness", "TOTAL too much", p("21", 0.2128), p("22", 0.2196), p("24", 0.2377), p("20", 0.2046), p("19", 0.1871), ),
  ("", "TOTAL too little", p("31", 0.3097), p("28", 0.2811), p("25", 0.2521), p("34", 0.3378), p("38", 0.3756), ),
  ("", "NET too little", n("10", 0.0969), n("6", 0.0615), n("1", 0.0144), n("13", 0.1332), n("19", 0.1885), ),
))

#heading(level: 3, "By Ethnicity")
#xtab(("Item", "Metric", ), ("Total", "White", "Black", "Hispanic", "Asian/PI", ), ("2430", "1345", "401", "418", "162", ), (
  ("Children", "TOTAL too much", p("28", 0.2771), p("24", 0.2391), p("39", 0.3898), p("29", 0.2911), p("33", 0.3339), ),
  ("", "TOTAL too little", p("44", 0.4403), p("50", 0.4956), p("31", 0.3085), p("34", 0.3432), p("42", 0.4185), ),
  ("", "NET too little", n("16", 0.1632), n("26", 0.2565), n("−8", -0.0813), n("5", 0.0521), n("8", 0.0846), ),
  ("Environment", "TOTAL too much", p("26", 0.2591), p("24", 0.2397), p("35", 0.3508), p("27", 0.2722), p("24", 0.2420), ),
  ("", "TOTAL too little", p("43", 0.4341), p("48", 0.4789), p("31", 0.3115), p("37", 0.3698), p("41", 0.4125), ),
  ("", "NET too little", n("18", 0.1751), n("24", 0.2392), n("−4", -0.0393), n("10", 0.0976), n("17", 0.1704), ),
  ("Workers", "TOTAL too much", p("24", 0.2410), p("21", 0.2115), p("35", 0.3524), p("26", 0.2590), p("26", 0.2580), ),
  ("", "TOTAL too little", p("43", 0.4259), p("48", 0.4762), p("30", 0.2966), p("34", 0.3382), p("37", 0.3661), ),
  ("", "NET too little", n("18", 0.1849), n("26", 0.2647), n("−6", -0.0558), n("8", 0.0792), n("11", 0.1081), ),
  ("Competitiveness", "TOTAL too much", p("21", 0.2128), p("19", 0.1863), p("34", 0.3429), p("19", 0.1931), p("26", 0.2647), ),
  ("", "TOTAL too little", p("31", 0.3097), p("33", 0.3275), p("26", 0.2584), p("30", 0.3009), p("27", 0.2741), ),
  ("", "NET too little", n("10", 0.0969), n("14", 0.1411), n("−8", -0.0845), n("11", 0.1077), n("1", 0.0094), ),
))

#heading(level: 3, "By Education")
#xtab(("Item", "Metric", ), ("Total", "HS or less", "Some college", "BA+", ), ("2430", "579", "893", "958", ), (
  ("Children", "TOTAL too much", p("28", 0.2771), p("35", 0.3495), p("28", 0.2765), p("21", 0.2060), ),
  ("", "TOTAL too little", p("44", 0.4403), p("32", 0.3154), p("43", 0.4250), p("57", 0.5745), ),
  ("", "NET too little", n("16", 0.1632), n("−3", -0.0341), n("15", 0.1484), n("37", 0.3685), ),
  ("Environment", "TOTAL too much", p("26", 0.2591), p("31", 0.3119), p("28", 0.2793), p("19", 0.1925), ),
  ("", "TOTAL too little", p("43", 0.4341), p("29", 0.2855), p("42", 0.4247), p("59", 0.5877), ),
  ("", "NET too little", n("18", 0.1751), n("−3", -0.0264), n("15", 0.1455), n("40", 0.3952), ),
  ("Workers", "TOTAL too much", p("24", 0.2410), p("30", 0.3028), p("25", 0.2526), p("17", 0.1717), ),
  ("", "TOTAL too little", p("43", 0.4259), p("32", 0.3212), p("43", 0.4292), p("53", 0.5269), ),
  ("", "NET too little", n("18", 0.1849), n("2", 0.0184), n("18", 0.1766), n("36", 0.3552), ),
  ("Competitiveness", "TOTAL too much", p("21", 0.2128), p("25", 0.2467), p("20", 0.2003), p("19", 0.1882), ),
  ("", "TOTAL too little", p("31", 0.3097), p("23", 0.2269), p("33", 0.3328), p("38", 0.3750), ),
  ("", "NET too little", n("10", 0.0969), n("−2", -0.0199), n("13", 0.1325), n("19", 0.1868), ),
))

#heading(level: 3, "By Household income")
#xtab(("Item", "Metric", ), ("Total", "<50k", "50k-<100k", "100k+", ), ("2430", "828", "766", "836", ), (
  ("Children", "TOTAL too much", p("28", 0.2771), p("30", 0.2987), p("28", 0.2848), p("25", 0.2471), ),
  ("", "TOTAL too little", p("44", 0.4403), p("35", 0.3518), p("45", 0.4475), p("53", 0.5293), ),
  ("", "NET too little", n("16", 0.1632), n("5", 0.0531), n("16", 0.1627), n("28", 0.2822), ),
  ("Environment", "TOTAL too much", p("26", 0.2591), p("29", 0.2856), p("27", 0.2692), p("22", 0.2216), ),
  ("", "TOTAL too little", p("43", 0.4341), p("34", 0.3382), p("44", 0.4383), p("53", 0.5339), ),
  ("", "NET too little", n("18", 0.1751), n("5", 0.0526), n("17", 0.1691), n("31", 0.3123), ),
  ("Workers", "TOTAL too much", p("24", 0.2410), p("27", 0.2661), p("24", 0.2441), p("21", 0.2111), ),
  ("", "TOTAL too little", p("43", 0.4259), p("35", 0.3532), p("45", 0.4526), p("48", 0.4806), ),
  ("", "NET too little", n("18", 0.1849), n("9", 0.0871), n("21", 0.2085), n("27", 0.2694), ),
  ("Competitiveness", "TOTAL too much", p("21", 0.2128), p("23", 0.2250), p("22", 0.2240), p("19", 0.1899), ),
  ("", "TOTAL too little", p("31", 0.3097), p("28", 0.2771), p("32", 0.3210), p("33", 0.3348), ),
  ("", "NET too little", n("10", 0.0969), n("5", 0.0521), n("10", 0.0971), n("14", 0.1448), ),
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
#xtab(("Item", "Metric", ), ("Total", "Female", "Male", ), ("2430", "1292", "1138", ), (
  ("Superintelligence", "TOTAL likely", p("69", 0.6947), p("69", 0.6859), p("70", 0.7042), ),
  ("", "TOTAL unlikely", p("18", 0.1766), p("17", 0.1698), p("18", 0.1838), ),
  ("", "NET likely", n("52", 0.5181), n("52", 0.5161), n("52", 0.5203), ),
  ("Loss-of-control", "TOTAL likely", p("78", 0.7822), p("78", 0.7806), p("78", 0.7840), ),
  ("", "TOTAL unlikely", p("9", 0.0899), p("8", 0.0764), p("10", 0.1045), ),
  ("", "NET likely", n("69", 0.6923), n("70", 0.7042), n("68", 0.6796), ),
  ("Breakthroughs", "TOTAL likely", p("67", 0.6719), p("65", 0.6540), p("69", 0.6911), ),
  ("", "TOTAL unlikely", p("16", 0.1645), p("16", 0.1554), p("17", 0.1742), ),
  ("", "NET likely", n("51", 0.5074), n("50", 0.4985), n("52", 0.5169), ),
  ("WMDs", "TOTAL likely", p("72", 0.7151), p("71", 0.7130), p("72", 0.7173), ),
  ("", "TOTAL unlikely", p("11", 0.1068), p("9", 0.0858), p("13", 0.1293), ),
  ("", "NET likely", n("61", 0.6083), n("63", 0.6271), n("59", 0.5881), ),
))

#heading(level: 3, "By Party")
#xtab(("Item", "Metric", ), ("Total", "Dem", "Rep", "Ind", ), ("2430", "1192", "786", "429", ), (
  ("Superintelligence", "TOTAL likely", p("69", 0.6947), p("68", 0.6834), p("75", 0.7501), p("64", 0.6380), ),
  ("", "TOTAL unlikely", p("18", 0.1766), p("20", 0.1990), p("16", 0.1577), p("17", 0.1687), ),
  ("", "NET likely", n("52", 0.5181), n("48", 0.4844), n("59", 0.5923), n("47", 0.4693), ),
  ("Loss-of-control", "TOTAL likely", p("78", 0.7822), p("82", 0.8208), p("82", 0.8190), p("66", 0.6628), ),
  ("", "TOTAL unlikely", p("9", 0.0899), p("8", 0.0802), p("8", 0.0797), p("13", 0.1321), ),
  ("", "NET likely", n("69", 0.6923), n("74", 0.7406), n("74", 0.7393), n("53", 0.5307), ),
  ("Breakthroughs", "TOTAL likely", p("67", 0.6719), p("68", 0.6824), p("70", 0.7012), p("61", 0.6117), ),
  ("", "TOTAL unlikely", p("16", 0.1645), p("17", 0.1732), p("16", 0.1560), p("17", 0.1688), ),
  ("", "NET likely", n("51", 0.5074), n("51", 0.5092), n("55", 0.5452), n("44", 0.4429), ),
  ("WMDs", "TOTAL likely", p("72", 0.7151), p("77", 0.7682), p("71", 0.7099), p("64", 0.6416), ),
  ("", "TOTAL unlikely", p("11", 0.1068), p("8", 0.0810), p("13", 0.1302), p("12", 0.1180), ),
  ("", "NET likely", n("61", 0.6083), n("69", 0.6872), n("58", 0.5797), n("52", 0.5236), ),
))

#heading(level: 3, "By Age")
#xtab(("Item", "Metric", ), ("Total", "18–34", "35–49", "50–64", "65+", ), ("2430", "516", "597", "614", "703", ), (
  ("Superintelligence", "TOTAL likely", p("69", 0.6947), p("63", 0.6292), p("71", 0.7060), p("72", 0.7222), p("74", 0.7354), ),
  ("", "TOTAL unlikely", p("18", 0.1766), p("24", 0.2389), p("15", 0.1538), p("16", 0.1606), p("14", 0.1406), ),
  ("", "NET likely", n("52", 0.5181), n("39", 0.3903), n("55", 0.5522), n("56", 0.5616), n("59", 0.5947), ),
  ("Loss-of-control", "TOTAL likely", p("78", 0.7822), p("74", 0.7443), p("76", 0.7622), p("80", 0.8017), p("83", 0.8295), ),
  ("", "TOTAL unlikely", p("9", 0.0899), p("13", 0.1298), p("9", 0.0936), p("8", 0.0784), p("5", 0.0496), ),
  ("", "NET likely", n("69", 0.6923), n("61", 0.6144), n("67", 0.6686), n("72", 0.7233), n("78", 0.7799), ),
  ("Breakthroughs", "TOTAL likely", p("67", 0.6719), p("63", 0.6274), p("66", 0.6596), p("66", 0.6559), p("75", 0.7518), ),
  ("", "TOTAL unlikely", p("16", 0.1645), p("22", 0.2210), p("17", 0.1730), p("14", 0.1433), p("11", 0.1085), ),
  ("", "NET likely", n("51", 0.5074), n("41", 0.4064), n("49", 0.4866), n("51", 0.5126), n("64", 0.6433), ),
  ("WMDs", "TOTAL likely", p("72", 0.7151), p("68", 0.6826), p("71", 0.7074), p("76", 0.7554), p("72", 0.7237), ),
  ("", "TOTAL unlikely", p("11", 0.1068), p("15", 0.1509), p("10", 0.0958), p("8", 0.0848), p("9", 0.0860), ),
  ("", "NET likely", n("61", 0.6083), n("53", 0.5317), n("61", 0.6116), n("67", 0.6706), n("64", 0.6378), ),
))

#heading(level: 3, "By Ethnicity")
#xtab(("Item", "Metric", ), ("Total", "White", "Black", "Hispanic", "Asian/PI", ), ("2430", "1345", "401", "418", "162", ), (
  ("Superintelligence", "TOTAL likely", p("69", 0.6947), p("70", 0.7016), p("68", 0.6758), p("67", 0.6676), p("74", 0.7440), ),
  ("", "TOTAL unlikely", p("18", 0.1766), p("17", 0.1711), p("17", 0.1729), p("20", 0.2023), p("13", 0.1272), ),
  ("", "NET likely", n("52", 0.5181), n("53", 0.5305), n("50", 0.5030), n("47", 0.4654), n("62", 0.6168), ),
  ("Loss-of-control", "TOTAL likely", p("78", 0.7822), p("81", 0.8077), p("73", 0.7326), p("73", 0.7326), p("72", 0.7217), ),
  ("", "TOTAL unlikely", p("9", 0.0899), p("7", 0.0738), p("10", 0.0982), p("13", 0.1251), p("14", 0.1428), ),
  ("", "NET likely", n("69", 0.6923), n("73", 0.7339), n("63", 0.6344), n("61", 0.6074), n("58", 0.5789), ),
  ("Breakthroughs", "TOTAL likely", p("67", 0.6719), p("68", 0.6813), p("68", 0.6757), p("63", 0.6346), p("71", 0.7124), ),
  ("", "TOTAL unlikely", p("16", 0.1645), p("15", 0.1506), p("12", 0.1242), p("21", 0.2081), p("17", 0.1691), ),
  ("", "NET likely", n("51", 0.5074), n("53", 0.5306), n("55", 0.5514), n("43", 0.4265), n("54", 0.5433), ),
  ("WMDs", "TOTAL likely", p("72", 0.7151), p("71", 0.7093), p("72", 0.7190), p("73", 0.7300), p("71", 0.7091), ),
  ("", "TOTAL unlikely", p("11", 0.1068), p("10", 0.1015), p("10", 0.1032), p("10", 0.1013), p("13", 0.1306), ),
  ("", "NET likely", n("61", 0.6083), n("61", 0.6078), n("62", 0.6158), n("63", 0.6287), n("58", 0.5785), ),
))

#heading(level: 3, "By Education")
#xtab(("Item", "Metric", ), ("Total", "HS or less", "Some college", "BA+", ), ("2430", "579", "893", "958", ), (
  ("Superintelligence", "TOTAL likely", p("69", 0.6947), p("64", 0.6430), p("73", 0.7288), p("72", 0.7215), ),
  ("", "TOTAL unlikely", p("18", 0.1766), p("18", 0.1800), p("16", 0.1572), p("19", 0.1870), ),
  ("", "NET likely", n("52", 0.5181), n("46", 0.4630), n("57", 0.5716), n("53", 0.5345), ),
  ("Loss-of-control", "TOTAL likely", p("78", 0.7822), p("69", 0.6945), p("80", 0.8034), p("85", 0.8539), ),
  ("", "TOTAL unlikely", p("9", 0.0899), p("12", 0.1201), p("8", 0.0809), p("7", 0.0665), ),
  ("", "NET likely", n("69", 0.6923), n("57", 0.5744), n("72", 0.7225), n("79", 0.7874), ),
  ("Breakthroughs", "TOTAL likely", p("67", 0.6719), p("56", 0.5555), p("72", 0.7223), p("75", 0.7509), ),
  ("", "TOTAL unlikely", p("16", 0.1645), p("22", 0.2156), p("13", 0.1265), p("14", 0.1409), ),
  ("", "NET likely", n("51", 0.5074), n("34", 0.3399), n("60", 0.5957), n("61", 0.6100), ),
  ("WMDs", "TOTAL likely", p("72", 0.7151), p("64", 0.6412), p("75", 0.7480), p("76", 0.7646), ),
  ("", "TOTAL unlikely", p("11", 0.1068), p("13", 0.1260), p("9", 0.0935), p("10", 0.0972), ),
  ("", "NET likely", n("61", 0.6083), n("52", 0.5153), n("65", 0.6545), n("67", 0.6674), ),
))

#heading(level: 3, "By Household income")
#xtab(("Item", "Metric", ), ("Total", "<50k", "50k-<100k", "100k+", ), ("2430", "828", "766", "836", ), (
  ("Superintelligence", "TOTAL likely", p("69", 0.6947), p("68", 0.6780), p("68", 0.6836), p("72", 0.7224), ),
  ("", "TOTAL unlikely", p("18", 0.1766), p("15", 0.1516), p("20", 0.1998), p("18", 0.1831), ),
  ("", "NET likely", n("52", 0.5181), n("53", 0.5264), n("48", 0.4838), n("54", 0.5393), ),
  ("Loss-of-control", "TOTAL likely", p("78", 0.7822), p("74", 0.7449), p("76", 0.7586), p("84", 0.8432), ),
  ("", "TOTAL unlikely", p("9", 0.0899), p("9", 0.0855), p("12", 0.1227), p("7", 0.0659), ),
  ("", "NET likely", n("69", 0.6923), n("66", 0.6594), n("64", 0.6359), n("78", 0.7774), ),
  ("Breakthroughs", "TOTAL likely", p("67", 0.6719), p("60", 0.6010), p("64", 0.6415), p("77", 0.7749), ),
  ("", "TOTAL unlikely", p("16", 0.1645), p("17", 0.1658), p("21", 0.2088), p("12", 0.1241), ),
  ("", "NET likely", n("51", 0.5074), n("44", 0.4352), n("43", 0.4328), n("65", 0.6508), ),
  ("WMDs", "TOTAL likely", p("72", 0.7151), p("66", 0.6604), p("72", 0.7202), p("77", 0.7694), ),
  ("", "TOTAL unlikely", p("11", 0.1068), p("12", 0.1160), p("12", 0.1151), p("9", 0.0894), ),
  ("", "NET likely", n("61", 0.6083), n("54", 0.5444), n("61", 0.6051), n("68", 0.6800), ),
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

This is the fifth tracking wave of the *Americans on AI* survey, a
project of Athena Insights.

Respondents were interviewed between August 27 and 31, 2026 as part of NORC's
AmeriSpeak Omnibus. AmeriSpeak is a probability-based household panel
recruited by address-based sampling from the NORC National Frame, designed
to be representative of the US household population. Interviews were
conducted online (98%) and by phone (2%), in English; 2,430 adults
completed the module.

Results are weighted with NORC's vote-choice study weights. NORC first
adjusts the panel base weights for sample selection and nonresponse and
rakes to Current Population Survey benchmarks on age, sex, census
division, race/ethnicity, and education; a second round of raking then
adds 2024 presidential vote choice. The voter shares are benchmarked to
the 2024 election results. This yields a design effect of 1.62 and
an effective sample size of 1,504. The subgroups reported in this
release were oversampled by design: the weights restore population
proportions, while the additional interviews improve the precision of
those subgroup estimates. Standard errors are design-based (Taylor
linearization over NORC's variance strata and units).

The full-sample margin of error is ±2.5 percentage points at 95%
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

Unweighted demographic composition of the achieved sample (n=2,430).

Several subgroups were oversampled by design, so their unweighted shares exceed their population shares; the report's figures are weighted to NORC's Current Population Survey benchmarks (see the methodology), which restores population proportions. *Party* is profiled by NORC, not a weighting dimension of this module's design.

#comp(("Dimension", "Group", "n", "%", ), (
  ("Sex", "Female", "1292", "53", ),
  ("", "Male", "1138", "47", ),
  ("Party", "Dem", "1192", "49", ),
  ("", "Rep", "786", "32", ),
  ("", "Ind", "429", "18", ),
  ("", "Unknown", "23", "1", ),
  ("Age", "18–34", "516", "21", ),
  ("", "35–49", "597", "25", ),
  ("", "50–64", "614", "25", ),
  ("", "65+", "703", "29", ),
  ("Ethnicity", "White", "1345", "55", ),
  ("", "Black", "401", "17", ),
  ("", "Hispanic", "418", "17", ),
  ("", "Asian/PI", "162", "7", ),
  ("", "Two or more", "80", "3", ),
  ("", "Other", "24", "1", ),
  ("Education", "HS or less", "579", "24", ),
  ("", "Some college", "893", "37", ),
  ("", "BA+", "958", "39", ),
  ("Household income", "<50k", "828", "34", ),
  ("", "50k-<100k", "766", "32", ),
  ("", "100k+", "836", "34", ),
))
