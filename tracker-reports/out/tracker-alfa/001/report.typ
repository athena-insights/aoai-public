#import "/tracker-reports/report.typ": *
#show: report.with(title: "Americans on AI — Pilot Release")

Athena Insights surveyed 1,799 US adults from June 12-18, 2026, via an opt-in web panel, with quotas balanced to US population benchmarks on sex, age, ethnicity, and political affiliation.

This release includes the results of that survey as a whole-sample topline, then as crosstabs broken out by subgroup, followed by appendices covering the questionnaire, methodology, and unweighted sample composition. 

Results are weighted to US population targets; the full-sample margin of error is ±2.4 percentage points at 95% confidence, accounting for the design effect of weighting. Percentages are out of all respondents, with "Not sure" and "None" answers included.

You can find the underlying data and live visuals for this and other surveys at #link("https://www.americanson.ai/")[americanson.ai].

#outline(title: [Contents], depth: 1)
#set page(margin: (x: margin, y: margin))

= Topline

These are the whole-sample results: for each question, the distribution table gives the full breakdown: the share choosing each option.

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

#note[*Response distribution (weighted)* — % of all respondents.]
#dist(("Item", "Top priority", "Important but lower priority", "Not too important", "Not a priority at all", "Not sure", ), (
  ("Jobs", p("51", 0.5074), p("40", 0.4025), p("7", 0.0694), p("2", 0.0187), p("<1", 0.0021), ),
  ("Inflation", p("71", 0.7096), p("25", 0.2518), p("3", 0.0290), p("1", 0.0064), p("<1", 0.0032), ),
  ("AI harms", p("30", 0.2989), p("43", 0.4302), p("19", 0.1904), p("7", 0.0695), p("1", 0.0109), ),
  ("Immigration", p("29", 0.2853), p("34", 0.3438), p("24", 0.2393), p("12", 0.1213), p("1", 0.0103), ),
  ("Health care", p("70", 0.6976), p("25", 0.2517), p("4", 0.0375), p("1", 0.0104), p("<1", 0.0028), ),
  ("Crime", p("47", 0.4715), p("37", 0.3737), p("12", 0.1203), p("3", 0.0298), p("<1", 0.0047), ),
  ("Climate change", p("41", 0.4084), p("31", 0.3123), p("13", 0.1327), p("14", 0.1376), p("1", 0.0090), ),
))

#heading(level: 2, "Affect")

#stem("Thinking about AI's growing role in society, which of these options comes closest to how you feel, even if none are exactly right?")

#note[*Response distribution (weighted)* — % of all respondents.]
#dist(("Response", "%", ), (
  ("Very excited", p("13", 0.1290), ),
  ("Somewhat excited", p("27", 0.2746), ),
  ("Somewhat concerned", p("36", 0.3558), ),
  ("Very concerned", p("22", 0.2228), ),
  ("None of these are close to how I feel", p("2", 0.0178), ),
))

#heading(level: 2, "Agency")

#stem("Again, thinking about AI, which statement comes closer to your view, even if neither is exactly right?")

#note[*Response distribution (weighted)* — % of all respondents.]
#dist(("Response", "%", ), (
  ("People like me can shape how much AI is part of our lives", p("31", 0.3051), ),
  ("AI is coming into our lives whether we want it or not", p("69", 0.6949), ),
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

#note[*Response distribution (weighted)* — % of all respondents.]
#dist(("Item", "Have seen", "Starting to see", "Expect to see soon", "Don't expect to see", "Not sure", ), (
  ("Saving time", p("34", 0.3351), p("32", 0.3173), p("17", 0.1670), p("10", 0.1025), p("8", 0.0780), ),
  ("Pressured to do more", p("24", 0.2419), p("29", 0.2891), p("26", 0.2559), p("14", 0.1362), p("8", 0.0769), ),
  ("Losing connections", p("33", 0.3273), p("31", 0.3051), p("17", 0.1710), p("14", 0.1445), p("5", 0.0522), ),
  ("Real vs. fake", p("67", 0.6709), p("24", 0.2448), p("4", 0.0437), p("3", 0.0254), p("2", 0.0152), ),
  ("Better health care", p("4", 0.0366), p("13", 0.1302), p("27", 0.2743), p("42", 0.4173), p("14", 0.1417), ),
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
#dist(("Item", "Making it much better", "Making it somewhat better", "Making it somewhat worse", "Making it much worse", "Having no effect", ), (
  ("Jobs", p("2", 0.0218), p("8", 0.0775), p("41", 0.4122), p("44", 0.4445), p("4", 0.0440), ),
  ("Future", p("6", 0.0627), p("34", 0.3355), p("33", 0.3308), p("22", 0.2238), p("5", 0.0470), ),
  ("Children", p("3", 0.0276), p("16", 0.1565), p("35", 0.3495), p("34", 0.3377), p("13", 0.1287), ),
  ("Finances", p("4", 0.0443), p("30", 0.2958), p("26", 0.2588), p("15", 0.1475), p("25", 0.2535), ),
))

#heading(level: 2, "Government")

#stem("When it comes to each of the following issues, is the government doing too much, too little, or about the right amount in response?")

#defs("Each label stands for a full item:", ("Label", "Item", ), (
  ("Children", "AI's effects on children and young people", ),
  ("Environment", "AI's environmental footprint, including from data centers", ),
  ("Workers", "AI's effects on workers and jobs", ),
  ("Competitiveness", "AI's effect on American competitiveness", ),
))

#note[*Response distribution (weighted)* — % of all respondents.]
#dist(("Item", "Way too much", "Somewhat too much", "About the right amount", "Somewhat too little", "Way too little", "Not sure", ), (
  ("Children", p("8", 0.0763), p("9", 0.0886), p("13", 0.1294), p("23", 0.2292), p("39", 0.3930), p("8", 0.0835), ),
  ("Environment", p("10", 0.0977), p("8", 0.0808), p("13", 0.1325), p("17", 0.1727), p("47", 0.4672), p("5", 0.0492), ),
  ("Workers", p("8", 0.0769), p("10", 0.0963), p("14", 0.1393), p("25", 0.2456), p("39", 0.3896), p("5", 0.0523), ),
  ("Competitiveness", p("5", 0.0501), p("10", 0.0980), p("30", 0.3033), p("20", 0.2025), p("18", 0.1799), p("17", 0.1662), ),
))

#heading(level: 2, "Futures")

#stem("Thinking about the next 20 years, how likely is each of the following to happen?")

#defs("Each label stands for a full item:", ("Label", "Item", ), (
  ("Superintelligence", "AI becoming smarter than humans at most tasks", ),
  ("Loss-of-control", "AI systems behaving in ways their developers did not intend", ),
  ("Breakthroughs", "AI making major scientific and medical breakthroughs", ),
  ("WMDs", "AI being used to create weapons of mass destruction", ),
))

#note[*Response distribution (weighted)* — % of all respondents.]
#dist(("Item", "Already happening", "Likely to happen", "Unlikely to happen", "Not at all likely to happen", "Not sure", ), (
  ("Superintelligence", p("30", 0.2993), p("43", 0.4284), p("15", 0.1518), p("7", 0.0660), p("5", 0.0545), ),
  ("Loss-of-control", p("35", 0.3459), p("45", 0.4528), p("12", 0.1157), p("3", 0.0312), p("5", 0.0544), ),
  ("Breakthroughs", p("22", 0.2245), p("53", 0.5345), p("12", 0.1239), p("4", 0.0429), p("7", 0.0742), ),
  ("WMDs", p("19", 0.1891), p("50", 0.5018), p("13", 0.1333), p("5", 0.0505), p("13", 0.1252), ),
))

= Crosstabs

Here we are reporting totals and nets for response options, shown for the whole sample and then broken out by sex, party, age, and ethnicity (the _banner_).

- A total is a combination of response options which indicate a common lean, for example: the total excited includes "very excited" and "somewhat excited" responses.

- A net is the gap, in percentage points, between the two leans of a question, for example: the total concerned minus the total excited.

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
#xtab(("Item", "Metric", ), ("Total", "Female", "Male", ), ("1799", "915", "884", ), (
  ("Jobs", "TOTAL high priority", p("91", 0.9098), p("93", 0.9306), p("89", 0.8882), ),
  ("", "TOTAL lower priority", p("9", 0.0880), p("7", 0.0684), p("11", 0.1084), ),
  ("", "NET priority", n("82", 0.8218), n("86", 0.8622), n("78", 0.7798), ),
  ("Inflation", "TOTAL high priority", p("96", 0.9614), p("98", 0.9771), p("95", 0.9451), ),
  ("", "TOTAL lower priority", p("4", 0.0354), p("2", 0.0189), p("5", 0.0526), ),
  ("", "NET priority", n("93", 0.9260), n("96", 0.9582), n("89", 0.8925), ),
  ("AI harms", "TOTAL high priority", p("73", 0.7291), p("77", 0.7718), p("68", 0.6847), ),
  ("", "TOTAL lower priority", p("26", 0.2600), p("22", 0.2160), p("31", 0.3058), ),
  ("", "NET priority", n("47", 0.4692), n("56", 0.5559), n("38", 0.3789), ),
  ("Immigration", "TOTAL high priority", p("63", 0.6291), p("65", 0.6486), p("61", 0.6089), ),
  ("", "TOTAL lower priority", p("36", 0.3606), p("34", 0.3412), p("38", 0.3807), ),
  ("", "NET priority", n("27", 0.2686), n("31", 0.3074), n("23", 0.2282), ),
  ("Health care", "TOTAL high priority", p("95", 0.9493), p("97", 0.9735), p("92", 0.9241), ),
  ("", "TOTAL lower priority", p("5", 0.0480), p("3", 0.0256), p("7", 0.0713), ),
  ("", "NET priority", n("90", 0.9013), n("95", 0.9479), n("85", 0.8528), ),
  ("Crime", "TOTAL high priority", p("85", 0.8452), p("89", 0.8874), p("80", 0.8012), ),
  ("", "TOTAL lower priority", p("15", 0.1501), p("11", 0.1105), p("19", 0.1914), ),
  ("", "NET priority", n("70", 0.6950), n("78", 0.7769), n("61", 0.6098), ),
  ("Climate change", "TOTAL high priority", p("72", 0.7207), p("76", 0.7588), p("68", 0.6811), ),
  ("", "TOTAL lower priority", p("27", 0.2703), p("23", 0.2324), p("31", 0.3098), ),
  ("", "NET priority", n("45", 0.4504), n("53", 0.5264), n("37", 0.3713), ),
))

#heading(level: 3, "By Party")
#xtab(("Item", "Metric", ), ("Total", "Dem", "Rep", "Ind", ), ("1799", "529", "489", "781", ), (
  ("Jobs", "TOTAL high priority", p("91", 0.9098), p("93", 0.9299), p("87", 0.8673), p("92", 0.9226), ),
  ("", "TOTAL lower priority", p("9", 0.0880), p("7", 0.0683), p("13", 0.1327), p("7", 0.0737), ),
  ("", "NET priority", n("82", 0.8218), n("86", 0.8615), n("73", 0.7345), n("85", 0.8489), ),
  ("Inflation", "TOTAL high priority", p("96", 0.9614), p("96", 0.9593), p("97", 0.9727), p("96", 0.9557), ),
  ("", "TOTAL lower priority", p("4", 0.0354), p("4", 0.0354), p("3", 0.0251), p("4", 0.0420), ),
  ("", "NET priority", n("93", 0.9260), n("92", 0.9240), n("95", 0.9475), n("91", 0.9137), ),
  ("AI harms", "TOTAL high priority", p("73", 0.7291), p("78", 0.7772), p("64", 0.6350), p("75", 0.7546), ),
  ("", "TOTAL lower priority", p("26", 0.2600), p("21", 0.2130), p("35", 0.3546), p("23", 0.2333), ),
  ("", "NET priority", n("47", 0.4692), n("56", 0.5642), n("28", 0.2804), n("52", 0.5213), ),
  ("Immigration", "TOTAL high priority", p("63", 0.6291), p("44", 0.4352), p("88", 0.8750), p("61", 0.6115), ),
  ("", "TOTAL lower priority", p("36", 0.3606), p("55", 0.5475), p("12", 0.1208), p("38", 0.3793), ),
  ("", "NET priority", n("27", 0.2686), n("−11", -0.1123), n("75", 0.7541), n("23", 0.2322), ),
  ("Health care", "TOTAL high priority", p("95", 0.9493), p("99", 0.9929), p("90", 0.8979), p("95", 0.9507), ),
  ("", "TOTAL lower priority", p("5", 0.0480), p("1", 0.0053), p("10", 0.0979), p("5", 0.0468), ),
  ("", "NET priority", n("90", 0.9013), n("99", 0.9876), n("80", 0.8000), n("90", 0.9039), ),
  ("Crime", "TOTAL high priority", p("85", 0.8452), p("76", 0.7611), p("93", 0.9341), p("85", 0.8487), ),
  ("", "TOTAL lower priority", p("15", 0.1501), p("23", 0.2342), p("6", 0.0615), p("15", 0.1464), ),
  ("", "NET priority", n("70", 0.6950), n("53", 0.5270), n("87", 0.8726), n("70", 0.7023), ),
  ("Climate change", "TOTAL high priority", p("72", 0.7207), p("92", 0.9159), p("48", 0.4778), p("74", 0.7355), ),
  ("", "TOTAL lower priority", p("27", 0.2703), p("8", 0.0795), p("51", 0.5072), p("26", 0.2561), ),
  ("", "NET priority", n("45", 0.4504), n("84", 0.8364), n("−3", -0.0294), n("48", 0.4794), ),
))

#heading(level: 3, "By Age")
#xtab(("Item", "Metric", ), ("Total", "18–34", "35–49", "50–64", "65+", ), ("1799", "538", "462", "561", "238", ), (
  ("Jobs", "TOTAL high priority", p("91", 0.9098), p("93", 0.9297), p("93", 0.9281), p("89", 0.8948), p("88", 0.8802), ),
  ("", "TOTAL lower priority", p("9", 0.0880), p("7", 0.0683), p("7", 0.0676), p("10", 0.1032), p("12", 0.1198), ),
  ("", "NET priority", n("82", 0.8218), n("86", 0.8614), n("86", 0.8605), n("79", 0.7916), n("76", 0.7605), ),
  ("Inflation", "TOTAL high priority", p("96", 0.9614), p("95", 0.9521), p("95", 0.9509), p("97", 0.9663), p("98", 0.9795), ),
  ("", "TOTAL lower priority", p("4", 0.0354), p("5", 0.0479), p("4", 0.0401), p("3", 0.0297), p("2", 0.0205), ),
  ("", "NET priority", n("93", 0.9260), n("90", 0.9043), n("91", 0.9108), n("94", 0.9366), n("96", 0.9591), ),
  ("AI harms", "TOTAL high priority", p("73", 0.7291), p("73", 0.7324), p("71", 0.7140), p("72", 0.7222), p("75", 0.7485), ),
  ("", "TOTAL lower priority", p("26", 0.2600), p("26", 0.2615), p("28", 0.2816), p("26", 0.2639), p("23", 0.2307), ),
  ("", "NET priority", n("47", 0.4692), n("47", 0.4709), n("43", 0.4324), n("46", 0.4583), n("52", 0.5178), ),
  ("Immigration", "TOTAL high priority", p("63", 0.6291), p("54", 0.5387), p("61", 0.6074), p("68", 0.6786), p("72", 0.7168), ),
  ("", "TOTAL lower priority", p("36", 0.3606), p("45", 0.4484), p("38", 0.3841), p("31", 0.3104), p("28", 0.2750), ),
  ("", "NET priority", n("27", 0.2686), n("9", 0.0903), n("22", 0.2233), n("37", 0.3682), n("44", 0.4419), ),
  ("Health care", "TOTAL high priority", p("95", 0.9493), p("94", 0.9412), p("95", 0.9497), p("95", 0.9498), p("96", 0.9584), ),
  ("", "TOTAL lower priority", p("5", 0.0480), p("6", 0.0569), p("4", 0.0432), p("5", 0.0482), p("4", 0.0416), ),
  ("", "NET priority", n("90", 0.9013), n("88", 0.8844), n("91", 0.9065), n("90", 0.9015), n("92", 0.9167), ),
  ("Crime", "TOTAL high priority", p("85", 0.8452), p("83", 0.8251), p("82", 0.8178), p("86", 0.8611), p("88", 0.8840), ),
  ("", "TOTAL lower priority", p("15", 0.1501), p("17", 0.1711), p("18", 0.1750), p("14", 0.1352), p("11", 0.1119), ),
  ("", "NET priority", n("70", 0.6950), n("65", 0.6540), n("64", 0.6429), n("73", 0.7259), n("77", 0.7720), ),
  ("Climate change", "TOTAL high priority", p("72", 0.7207), p("80", 0.8004), p("74", 0.7356), p("67", 0.6650), p("66", 0.6603), ),
  ("", "TOTAL lower priority", p("27", 0.2703), p("19", 0.1917), p("26", 0.2557), p("32", 0.3195), p("34", 0.3356), ),
  ("", "NET priority", n("45", 0.4504), n("61", 0.6087), n("48", 0.4799), n("35", 0.3454), n("32", 0.3247), ),
))

#heading(level: 3, "By Ethnicity")
#xtab(("Item", "Metric", ), ("Total", "White", "Black", "Asian", "Mixed", "Other", ), ("1799", "1146", "211", "108", "198", "136", ), (
  ("Jobs", "TOTAL high priority", p("91", 0.9098), p("89", 0.8946), p("95", 0.9513), p("90", 0.9016), p("94", 0.9401), p("93", 0.9298), ),
  ("", "TOTAL lower priority", p("9", 0.0880), p("10", 0.1045), p("4", 0.0440), p("9", 0.0913), p("5", 0.0548), p("7", 0.0702), ),
  ("", "NET priority", n("82", 0.8218), n("79", 0.7901), n("91", 0.9073), n("81", 0.8103), n("89", 0.8853), n("86", 0.8596), ),
  ("Inflation", "TOTAL high priority", p("96", 0.9614), p("96", 0.9638), p("97", 0.9657), p("95", 0.9492), p("95", 0.9545), p("96", 0.9560), ),
  ("", "TOTAL lower priority", p("4", 0.0354), p("4", 0.0353), p("3", 0.0297), p("3", 0.0273), p("4", 0.0403), p("4", 0.0440), ),
  ("", "NET priority", n("93", 0.9260), n("93", 0.9285), n("94", 0.9360), n("92", 0.9218), n("91", 0.9142), n("91", 0.9121), ),
  ("AI harms", "TOTAL high priority", p("73", 0.7291), p("75", 0.7453), p("72", 0.7227), p("62", 0.6154), p("76", 0.7576), p("67", 0.6665), ),
  ("", "TOTAL lower priority", p("26", 0.2600), p("24", 0.2434), p("27", 0.2686), p("38", 0.3775), p("24", 0.2424), p("30", 0.3042), ),
  ("", "NET priority", n("47", 0.4692), n("50", 0.5018), n("45", 0.4541), n("24", 0.2379), n("52", 0.5152), n("36", 0.3623), ),
  ("Immigration", "TOTAL high priority", p("63", 0.6291), p("63", 0.6314), p("64", 0.6352), p("70", 0.6961), p("59", 0.5859), p("61", 0.6101), ),
  ("", "TOTAL lower priority", p("36", 0.3606), p("36", 0.3579), p("36", 0.3565), p("28", 0.2785), p("41", 0.4101), p("38", 0.3826), ),
  ("", "NET priority", n("27", 0.2686), n("27", 0.2735), n("28", 0.2787), n("42", 0.4176), n("18", 0.1758), n("23", 0.2275), ),
  ("Health care", "TOTAL high priority", p("95", 0.9493), p("95", 0.9475), p("97", 0.9730), p("92", 0.9179), p("96", 0.9567), p("94", 0.9430), ),
  ("", "TOTAL lower priority", p("5", 0.0480), p("5", 0.0525), p("2", 0.0177), p("7", 0.0658), p("4", 0.0433), p("5", 0.0497), ),
  ("", "NET priority", n("90", 0.9013), n("90", 0.8950), n("96", 0.9554), n("85", 0.8521), n("91", 0.9134), n("89", 0.8933), ),
  ("Crime", "TOTAL high priority", p("85", 0.8452), p("83", 0.8318), p("92", 0.9163), p("86", 0.8619), p("82", 0.8156), p("87", 0.8723), ),
  ("", "TOTAL lower priority", p("15", 0.1501), p("17", 0.1653), p("8", 0.0837), p("12", 0.1218), p("17", 0.1740), p("12", 0.1203), ),
  ("", "NET priority", n("70", 0.6950), n("67", 0.6665), n("83", 0.8327), n("74", 0.7401), n("64", 0.6416), n("75", 0.7520), ),
  ("Climate change", "TOTAL high priority", p("72", 0.7207), p("71", 0.7093), p("80", 0.7974), p("72", 0.7150), p("75", 0.7527), p("66", 0.6556), ),
  ("", "TOTAL lower priority", p("27", 0.2703), p("28", 0.2816), p("19", 0.1943), p("29", 0.2850), p("24", 0.2369), p("33", 0.3298), ),
  ("", "NET priority", n("45", 0.4504), n("43", 0.4277), n("60", 0.6031), n("43", 0.4301), n("52", 0.5158), n("33", 0.3258), ),
))

#heading(level: 2, "Affect")

#stem("Thinking about AI's growing role in society, which of these options comes closest to how you feel, even if none are exactly right?")

#defs("Each total combines multiple responses:", ("Total", "Responses", ), (
  ("TOTAL excited", "\"Very excited\" or \"Somewhat excited\"", ),
  ("TOTAL concerned", "\"Somewhat concerned\" or \"Very concerned\"", ),
))

#note[Cells (weighted): totals (%) and net (percentage points).]
#heading(level: 3, "By Sex")
#xtab(("Metric", ), ("Total", "Female", "Male", ), ("1799", "915", "884", ), (
  ("TOTAL excited", p("40", 0.4036), p("36", 0.3552), p("45", 0.4540), ),
  ("TOTAL concerned", p("58", 0.5786), p("63", 0.6282), p("53", 0.5271), ),
  ("None of these", p("2", 0.0178), p("2", 0.0167), p("2", 0.0189), ),
  ("NET concerned", n("18", 0.1750), n("27", 0.2730), n("7", 0.0731), ),
))

#heading(level: 3, "By Party")
#xtab(("Metric", ), ("Total", "Dem", "Rep", "Ind", ), ("1799", "529", "489", "781", ), (
  ("TOTAL excited", p("40", 0.4036), p("35", 0.3472), p("52", 0.5216), p("37", 0.3689), ),
  ("TOTAL concerned", p("58", 0.5786), p("65", 0.6497), p("46", 0.4635), p("60", 0.6011), ),
  ("None of these", p("2", 0.0178), p("<1", 0.0031), p("1", 0.0149), p("3", 0.0300), ),
  ("NET concerned", n("18", 0.1750), n("30", 0.3026), n("−6", -0.0582), n("23", 0.2321), ),
))

#heading(level: 3, "By Age")
#xtab(("Metric", ), ("Total", "18–34", "35–49", "50–64", "65+", ), ("1799", "538", "462", "561", "238", ), (
  ("TOTAL excited", p("40", 0.4036), p("33", 0.3285), p("43", 0.4302), p("46", 0.4627), p("41", 0.4098), ),
  ("TOTAL concerned", p("58", 0.5786), p("66", 0.6623), p("55", 0.5463), p("52", 0.5176), p("57", 0.5698), ),
  ("None of these", p("2", 0.0178), p("1", 0.0092), p("2", 0.0235), p("2", 0.0197), p("2", 0.0205), ),
  ("NET concerned", n("18", 0.1750), n("33", 0.3337), n("12", 0.1161), n("5", 0.0549), n("16", 0.1600), ),
))

#heading(level: 3, "By Ethnicity")
#xtab(("Metric", ), ("Total", "White", "Black", "Asian", "Mixed", "Other", ), ("1799", "1146", "211", "108", "198", "136", ), (
  ("TOTAL excited", p("40", 0.4036), p("38", 0.3801), p("53", 0.5292), p("55", 0.5452), p("37", 0.3725), p("33", 0.3309), ),
  ("TOTAL concerned", p("58", 0.5786), p("60", 0.5998), p("45", 0.4494), p("45", 0.4477), p("62", 0.6234), p("65", 0.6471), ),
  ("None of these", p("2", 0.0178), p("2", 0.0202), p("2", 0.0214), p("1", 0.0072), p("<1", 0.0041), p("2", 0.0220), ),
  ("NET concerned", n("18", 0.1750), n("22", 0.2197), n("−8", -0.0798), n("−10", -0.0975), n("25", 0.2509), n("32", 0.3162), ),
))

#heading(level: 2, "Agency")

#stem("Again, thinking about AI, which statement comes closer to your view, even if neither is exactly right?")

#note[Cells (weighted): totals (%) and net (percentage points).]
#heading(level: 3, "By Sex")
#xtab(("Metric", ), ("Total", "Female", "Male", ), ("1799", "915", "884", ), (
  ("TOTAL can shape", p("31", 0.3051), p("32", 0.3208), p("29", 0.2887), ),
  ("TOTAL inevitable", p("69", 0.6949), p("68", 0.6792), p("71", 0.7113), ),
  ("NET inevitable", n("39", 0.3898), n("36", 0.3584), n("42", 0.4225), ),
))

#heading(level: 3, "By Party")
#xtab(("Metric", ), ("Total", "Dem", "Rep", "Ind", ), ("1799", "529", "489", "781", ), (
  ("TOTAL can shape", p("31", 0.3051), p("32", 0.3157), p("34", 0.3439), p("27", 0.2727), ),
  ("TOTAL inevitable", p("69", 0.6949), p("68", 0.6843), p("66", 0.6561), p("73", 0.7273), ),
  ("NET inevitable", n("39", 0.3898), n("37", 0.3685), n("31", 0.3122), n("45", 0.4545), ),
))

#heading(level: 3, "By Age")
#xtab(("Metric", ), ("Total", "18–34", "35–49", "50–64", "65+", ), ("1799", "538", "462", "561", "238", ), (
  ("TOTAL can shape", p("31", 0.3051), p("33", 0.3300), p("33", 0.3270), p("30", 0.2992), p("26", 0.2557), ),
  ("TOTAL inevitable", p("69", 0.6949), p("67", 0.6700), p("67", 0.6730), p("70", 0.7008), p("74", 0.7443), ),
  ("NET inevitable", n("39", 0.3898), n("34", 0.3399), n("35", 0.3459), n("40", 0.4016), n("49", 0.4885), ),
))

#heading(level: 3, "By Ethnicity")
#xtab(("Metric", ), ("Total", "White", "Black", "Asian", "Mixed", "Other", ), ("1799", "1146", "211", "108", "198", "136", ), (
  ("TOTAL can shape", p("31", 0.3051), p("26", 0.2554), p("47", 0.4688), p("36", 0.3575), p("37", 0.3679), p("32", 0.3158), ),
  ("TOTAL inevitable", p("69", 0.6949), p("74", 0.7446), p("53", 0.5312), p("64", 0.6425), p("63", 0.6321), p("68", 0.6842), ),
  ("NET inevitable", n("39", 0.3898), n("49", 0.4892), n("6", 0.0625), n("28", 0.2849), n("26", 0.2641), n("37", 0.3683), ),
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
#xtab(("Item", "Metric", ), ("Total", "Female", "Male", ), ("1799", "915", "884", ), (
  ("Saving time", "TOTAL realized", p("65", 0.6524), p("66", 0.6616), p("64", 0.6428), ),
  ("", "TOTAL not yet", p("27", 0.2696), p("25", 0.2541), p("29", 0.2857), ),
  ("", "NET realized", n("38", 0.3828), n("41", 0.4075), n("36", 0.3571), ),
  ("Pressured to do more", "TOTAL realized", p("53", 0.5310), p("55", 0.5468), p("51", 0.5146), ),
  ("", "TOTAL not yet", p("39", 0.3921), p("37", 0.3668), p("42", 0.4184), ),
  ("", "NET realized", n("14", 0.1389), n("18", 0.1800), n("10", 0.0962), ),
  ("Losing connections", "TOTAL realized", p("63", 0.6324), p("69", 0.6858), p("58", 0.5768), ),
  ("", "TOTAL not yet", p("32", 0.3155), p("27", 0.2672), p("37", 0.3657), ),
  ("", "NET realized", n("32", 0.3169), n("42", 0.4186), n("21", 0.2111), ),
  ("Real vs. fake", "TOTAL realized", p("92", 0.9157), p("94", 0.9383), p("89", 0.8922), ),
  ("", "TOTAL not yet", p("7", 0.0691), p("5", 0.0520), p("9", 0.0869), ),
  ("", "NET realized", n("85", 0.8466), n("89", 0.8863), n("81", 0.8053), ),
  ("Better health care", "TOTAL realized", p("17", 0.1667), p("14", 0.1374), p("20", 0.1972), ),
  ("", "TOTAL not yet", p("69", 0.6915), p("69", 0.6930), p("69", 0.6901), ),
  ("", "NET realized", n("−52", -0.5248), n("−56", -0.5555), n("−49", -0.4929), ),
))

#heading(level: 3, "By Party")
#xtab(("Item", "Metric", ), ("Total", "Dem", "Rep", "Ind", ), ("1799", "529", "489", "781", ), (
  ("Saving time", "TOTAL realized", p("65", 0.6524), p("63", 0.6282), p("76", 0.7551), p("60", 0.6044), ),
  ("", "TOTAL not yet", p("27", 0.2696), p("30", 0.3029), p("19", 0.1896), p("30", 0.2966), ),
  ("", "NET realized", n("38", 0.3828), n("33", 0.3253), n("57", 0.5655), n("31", 0.3077), ),
  ("Pressured to do more", "TOTAL realized", p("53", 0.5310), p("55", 0.5523), p("49", 0.4877), p("54", 0.5433), ),
  ("", "TOTAL not yet", p("39", 0.3921), p("38", 0.3767), p("43", 0.4348), p("38", 0.3759), ),
  ("", "NET realized", n("14", 0.1389), n("18", 0.1756), n("5", 0.0530), n("17", 0.1675), ),
  ("Losing connections", "TOTAL realized", p("63", 0.6324), p("64", 0.6352), p("57", 0.5739), p("67", 0.6675), ),
  ("", "TOTAL not yet", p("32", 0.3155), p("32", 0.3187), p("39", 0.3855), p("27", 0.2686), ),
  ("", "NET realized", n("32", 0.3169), n("32", 0.3165), n("19", 0.1885), n("40", 0.3989), ),
  ("Real vs. fake", "TOTAL realized", p("92", 0.9157), p("94", 0.9424), p("89", 0.8851), p("92", 0.9161), ),
  ("", "TOTAL not yet", p("7", 0.0691), p("5", 0.0508), p("10", 0.0992), p("6", 0.0630), ),
  ("", "NET realized", n("85", 0.8466), n("89", 0.8916), n("79", 0.7859), n("85", 0.8531), ),
  ("Better health care", "TOTAL realized", p("17", 0.1667), p("15", 0.1537), p("21", 0.2148), p("15", 0.1455), ),
  ("", "TOTAL not yet", p("69", 0.6915), p("73", 0.7280), p("65", 0.6452), p("69", 0.6949), ),
  ("", "NET realized", n("−52", -0.5248), n("−57", -0.5743), n("−43", -0.4304), n("−55", -0.5494), ),
))

#heading(level: 3, "By Age")
#xtab(("Item", "Metric", ), ("Total", "18–34", "35–49", "50–64", "65+", ), ("1799", "538", "462", "561", "238", ), (
  ("Saving time", "TOTAL realized", p("65", 0.6524), p("64", 0.6367), p("68", 0.6829), p("67", 0.6745), p("62", 0.6167), ),
  ("", "TOTAL not yet", p("27", 0.2696), p("29", 0.2892), p("25", 0.2463), p("25", 0.2498), p("29", 0.2899), ),
  ("", "NET realized", n("38", 0.3828), n("35", 0.3475), n("44", 0.4366), n("42", 0.4247), n("33", 0.3269), ),
  ("Pressured to do more", "TOTAL realized", p("53", 0.5310), p("59", 0.5940), p("61", 0.6079), p("49", 0.4906), p("41", 0.4091), ),
  ("", "TOTAL not yet", p("39", 0.3921), p("35", 0.3451), p("34", 0.3372), p("43", 0.4277), p("47", 0.4747), ),
  ("", "NET realized", n("14", 0.1389), n("25", 0.2489), n("27", 0.2707), n("6", 0.0628), n("−7", -0.0656), ),
  ("Losing connections", "TOTAL realized", p("63", 0.6324), p("70", 0.7011), p("66", 0.6587), p("59", 0.5879), p("56", 0.5621), ),
  ("", "TOTAL not yet", p("32", 0.3155), p("27", 0.2746), p("29", 0.2868), p("36", 0.3582), p("35", 0.3549), ),
  ("", "NET realized", n("32", 0.3169), n("43", 0.4265), n("37", 0.3719), n("23", 0.2297), n("21", 0.2072), ),
  ("Real vs. fake", "TOTAL realized", p("92", 0.9157), p("92", 0.9214), p("92", 0.9222), p("91", 0.9084), p("91", 0.9089), ),
  ("", "TOTAL not yet", p("7", 0.0691), p("7", 0.0651), p("7", 0.0667), p("8", 0.0831), p("6", 0.0625), ),
  ("", "NET realized", n("85", 0.8466), n("86", 0.8563), n("86", 0.8555), n("83", 0.8253), n("85", 0.8464), ),
  ("Better health care", "TOTAL realized", p("17", 0.1667), p("15", 0.1546), p("17", 0.1708), p("19", 0.1857), p("16", 0.1585), ),
  ("", "TOTAL not yet", p("69", 0.6915), p("73", 0.7262), p("70", 0.7042), p("67", 0.6683), p("66", 0.6576), ),
  ("", "NET realized", n("−52", -0.5248), n("−57", -0.5716), n("−53", -0.5334), n("−48", -0.4827), n("−50", -0.4991), ),
))

#heading(level: 3, "By Ethnicity")
#xtab(("Item", "Metric", ), ("Total", "White", "Black", "Asian", "Mixed", "Other", ), ("1799", "1146", "211", "108", "198", "136", ), (
  ("Saving time", "TOTAL realized", p("65", 0.6524), p("65", 0.6470), p("68", 0.6843), p("74", 0.7423), p("63", 0.6322), p("60", 0.6037), ),
  ("", "TOTAL not yet", p("27", 0.2696), p("27", 0.2721), p("28", 0.2753), p("18", 0.1819), p("28", 0.2755), p("30", 0.3042), ),
  ("", "NET realized", n("38", 0.3828), n("37", 0.3749), n("41", 0.4090), n("56", 0.5604), n("36", 0.3567), n("30", 0.2995), ),
  ("Pressured to do more", "TOTAL realized", p("53", 0.5310), p("50", 0.4958), p("61", 0.6128), p("63", 0.6340), p("54", 0.5423), p("58", 0.5823), ),
  ("", "TOTAL not yet", p("39", 0.3921), p("41", 0.4100), p("32", 0.3161), p("35", 0.3497), p("41", 0.4133), p("37", 0.3695), ),
  ("", "NET realized", n("14", 0.1389), n("9", 0.0858), n("30", 0.2967), n("28", 0.2843), n("13", 0.1290), n("21", 0.2127), ),
  ("Losing connections", "TOTAL realized", p("63", 0.6324), p("62", 0.6221), p("62", 0.6180), p("65", 0.6491), p("66", 0.6616), p("68", 0.6766), ),
  ("", "TOTAL not yet", p("32", 0.3155), p("32", 0.3186), p("33", 0.3333), p("33", 0.3267), p("29", 0.2940), p("29", 0.2868), ),
  ("", "NET realized", n("32", 0.3169), n("30", 0.3035), n("28", 0.2848), n("32", 0.3224), n("37", 0.3676), n("39", 0.3898), ),
  ("Real vs. fake", "TOTAL realized", p("92", 0.9157), p("92", 0.9204), p("85", 0.8502), p("97", 0.9726), p("94", 0.9352), p("90", 0.9017), ),
  ("", "TOTAL not yet", p("7", 0.0691), p("6", 0.0626), p("14", 0.1358), p("3", 0.0274), p("5", 0.0544), p("8", 0.0764), ),
  ("", "NET realized", n("85", 0.8466), n("86", 0.8578), n("71", 0.7145), n("95", 0.9452), n("88", 0.8808), n("83", 0.8253), ),
  ("Better health care", "TOTAL realized", p("17", 0.1667), p("14", 0.1395), p("26", 0.2629), p("17", 0.1709), p("19", 0.1874), p("20", 0.2027), ),
  ("", "TOTAL not yet", p("69", 0.6915), p("71", 0.7098), p("56", 0.5641), p("71", 0.7096), p("71", 0.7052), p("70", 0.7036), ),
  ("", "NET realized", n("−52", -0.5248), n("−57", -0.5703), n("−30", -0.3012), n("−54", -0.5387), n("−52", -0.5179), n("−50", -0.5009), ),
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
#xtab(("Item", "Metric", ), ("Total", "Female", "Male", ), ("1799", "915", "884", ), (
  ("Jobs", "TOTAL better", p("10", 0.0993), p("10", 0.0971), p("10", 0.1016), ),
  ("", "TOTAL worse", p("86", 0.8567), p("86", 0.8622), p("85", 0.8510), ),
  ("", "NET worse", n("76", 0.7574), n("77", 0.7651), n("75", 0.7494), ),
  ("Future", "TOTAL better", p("40", 0.3983), p("37", 0.3673), p("43", 0.4305), ),
  ("", "TOTAL worse", p("55", 0.5547), p("59", 0.5855), p("52", 0.5226), ),
  ("", "NET worse", n("16", 0.1564), n("22", 0.2182), n("9", 0.0921), ),
  ("Children", "TOTAL better", p("18", 0.1842), p("15", 0.1525), p("22", 0.2171), ),
  ("", "TOTAL worse", p("69", 0.6871), p("73", 0.7288), p("64", 0.6438), ),
  ("", "NET worse", n("50", 0.5030), n("58", 0.5763), n("43", 0.4267), ),
  ("Finances", "TOTAL better", p("34", 0.3401), p("31", 0.3119), p("37", 0.3695), ),
  ("", "TOTAL worse", p("41", 0.4064), p("42", 0.4189), p("39", 0.3933), ),
  ("", "NET worse", n("7", 0.0662), n("11", 0.1070), n("2", 0.0238), ),
))

#heading(level: 3, "By Party")
#xtab(("Item", "Metric", ), ("Total", "Dem", "Rep", "Ind", ), ("1799", "529", "489", "781", ), (
  ("Jobs", "TOTAL better", p("10", 0.0993), p("8", 0.0755), p("13", 0.1327), p("10", 0.0951), ),
  ("", "TOTAL worse", p("86", 0.8567), p("89", 0.8889), p("82", 0.8155), p("86", 0.8599), ),
  ("", "NET worse", n("76", 0.7574), n("81", 0.8135), n("68", 0.6827), n("76", 0.7648), ),
  ("Future", "TOTAL better", p("40", 0.3983), p("37", 0.3683), p("54", 0.5416), p("33", 0.3285), ),
  ("", "TOTAL worse", p("55", 0.5547), p("59", 0.5938), p("41", 0.4113), p("62", 0.6180), ),
  ("", "NET worse", n("16", 0.1564), n("23", 0.2256), n("−13", -0.1303), n("29", 0.2895), ),
  ("Children", "TOTAL better", p("18", 0.1842), p("16", 0.1606), p("28", 0.2754), p("14", 0.1429), ),
  ("", "TOTAL worse", p("69", 0.6871), p("72", 0.7202), p("59", 0.5941), p("72", 0.7227), ),
  ("", "NET worse", n("50", 0.5030), n("56", 0.5596), n("32", 0.3187), n("58", 0.5797), ),
  ("Finances", "TOTAL better", p("34", 0.3401), p("29", 0.2865), p("46", 0.4611), p("30", 0.3015), ),
  ("", "TOTAL worse", p("41", 0.4064), p("46", 0.4633), p("30", 0.3018), p("43", 0.4322), ),
  ("", "NET worse", n("7", 0.0662), n("18", 0.1768), n("−16", -0.1593), n("13", 0.1307), ),
))

#heading(level: 3, "By Age")
#xtab(("Item", "Metric", ), ("Total", "18–34", "35–49", "50–64", "65+", ), ("1799", "538", "462", "561", "238", ), (
  ("Jobs", "TOTAL better", p("10", 0.0993), p("12", 0.1164), p("11", 0.1063), p("10", 0.0961), p("7", 0.0733), ),
  ("", "TOTAL worse", p("86", 0.8567), p("85", 0.8548), p("84", 0.8410), p("87", 0.8677), p("86", 0.8649), ),
  ("", "NET worse", n("76", 0.7574), n("74", 0.7385), n("73", 0.7347), n("77", 0.7716), n("79", 0.7916), ),
  ("Future", "TOTAL better", p("40", 0.3983), p("30", 0.2958), p("39", 0.3898), p("44", 0.4383), p("50", 0.4965), ),
  ("", "TOTAL worse", p("55", 0.5547), p("67", 0.6726), p("56", 0.5561), p("51", 0.5059), p("45", 0.4537), ),
  ("", "NET worse", n("16", 0.1564), n("38", 0.3767), n("17", 0.1662), n("7", 0.0676), n("−4", -0.0428), ),
  ("Children", "TOTAL better", p("18", 0.1842), p("15", 0.1496), p("17", 0.1671), p("20", 0.1971), p("23", 0.2332), ),
  ("", "TOTAL worse", p("69", 0.6871), p("75", 0.7548), p("71", 0.7086), p("65", 0.6537), p("61", 0.6123), ),
  ("", "NET worse", n("50", 0.5030), n("61", 0.6052), n("54", 0.5415), n("46", 0.4566), n("38", 0.3791), ),
  ("Finances", "TOTAL better", p("34", 0.3401), p("30", 0.3030), p("34", 0.3373), p("33", 0.3344), p("40", 0.3959), ),
  ("", "TOTAL worse", p("41", 0.4064), p("44", 0.4440), p("43", 0.4256), p("43", 0.4313), p("31", 0.3127), ),
  ("", "NET worse", n("7", 0.0662), n("14", 0.1409), n("9", 0.0883), n("10", 0.0969), n("−8", -0.0832), ),
))

#heading(level: 3, "By Ethnicity")
#xtab(("Item", "Metric", ), ("Total", "White", "Black", "Asian", "Mixed", "Other", ), ("1799", "1146", "211", "108", "198", "136", ), (
  ("Jobs", "TOTAL better", p("10", 0.0993), p("8", 0.0811), p("19", 0.1905), p("8", 0.0763), p("13", 0.1275), p("8", 0.0849), ),
  ("", "TOTAL worse", p("86", 0.8567), p("88", 0.8763), p("77", 0.7655), p("88", 0.8781), p("83", 0.8251), p("87", 0.8670), ),
  ("", "NET worse", n("76", 0.7574), n("80", 0.7952), n("58", 0.5750), n("80", 0.8018), n("70", 0.6976), n("78", 0.7822), ),
  ("Future", "TOTAL better", p("40", 0.3983), p("38", 0.3774), p("50", 0.4983), p("52", 0.5157), p("36", 0.3589), p("37", 0.3739), ),
  ("", "TOTAL worse", p("55", 0.5547), p("57", 0.5744), p("46", 0.4630), p("48", 0.4751), p("58", 0.5815), p("56", 0.5632), ),
  ("", "NET worse", n("16", 0.1564), n("20", 0.1971), n("−4", -0.0353), n("−4", -0.0406), n("22", 0.2226), n("19", 0.1893), ),
  ("Children", "TOTAL better", p("18", 0.1842), p("18", 0.1755), p("26", 0.2586), p("22", 0.2184), p("16", 0.1582), p("15", 0.1513), ),
  ("", "TOTAL worse", p("69", 0.6871), p("69", 0.6928), p("56", 0.5638), p("67", 0.6721), p("73", 0.7262), p("78", 0.7802), ),
  ("", "NET worse", n("50", 0.5030), n("52", 0.5173), n("31", 0.3052), n("45", 0.4537), n("57", 0.5680), n("63", 0.6289), ),
  ("Finances", "TOTAL better", p("34", 0.3401), p("33", 0.3320), p("43", 0.4259), p("31", 0.3065), p("31", 0.3082), p("35", 0.3498), ),
  ("", "TOTAL worse", p("41", 0.4064), p("39", 0.3895), p("39", 0.3939), p("46", 0.4573), p("49", 0.4926), p("39", 0.3909), ),
  ("", "NET worse", n("7", 0.0662), n("6", 0.0575), n("−3", -0.0320), n("15", 0.1508), n("18", 0.1844), n("4", 0.0411), ),
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
#xtab(("Item", "Metric", ), ("Total", "Female", "Male", ), ("1799", "915", "884", ), (
  ("Children", "TOTAL too much", p("16", 0.1649), p("18", 0.1808), p("15", 0.1484), ),
  ("", "TOTAL too little", p("62", 0.6221), p("64", 0.6380), p("61", 0.6056), ),
  ("", "NET too little", n("46", 0.4572), n("46", 0.4572), n("46", 0.4573), ),
  ("Environment", "TOTAL too much", p("18", 0.1785), p("18", 0.1845), p("17", 0.1722), ),
  ("", "TOTAL too little", p("64", 0.6398), p("65", 0.6543), p("62", 0.6248), ),
  ("", "NET too little", n("46", 0.4614), n("47", 0.4698), n("45", 0.4526), ),
  ("Workers", "TOTAL too much", p("17", 0.1732), p("19", 0.1899), p("16", 0.1558), ),
  ("", "TOTAL too little", p("64", 0.6352), p("63", 0.6293), p("64", 0.6412), ),
  ("", "NET too little", n("46", 0.4620), n("44", 0.4395), n("49", 0.4854), ),
  ("Competitiveness", "TOTAL too much", p("15", 0.1481), p("16", 0.1578), p("14", 0.1380), ),
  ("", "TOTAL too little", p("38", 0.3824), p("39", 0.3858), p("38", 0.3789), ),
  ("", "NET too little", n("23", 0.2343), n("23", 0.2281), n("24", 0.2409), ),
))

#heading(level: 3, "By Party")
#xtab(("Item", "Metric", ), ("Total", "Dem", "Rep", "Ind", ), ("1799", "529", "489", "781", ), (
  ("Children", "TOTAL too much", p("16", 0.1649), p("14", 0.1388), p("15", 0.1522), p("19", 0.1917), ),
  ("", "TOTAL too little", p("62", 0.6221), p("71", 0.7056), p("53", 0.5327), p("62", 0.6194), ),
  ("", "NET too little", n("46", 0.4572), n("57", 0.5668), n("38", 0.3805), n("43", 0.4277), ),
  ("Environment", "TOTAL too much", p("18", 0.1785), p("16", 0.1614), p("19", 0.1862), p("19", 0.1858), ),
  ("", "TOTAL too little", p("64", 0.6398), p("74", 0.7357), p("50", 0.4990), p("66", 0.6609), ),
  ("", "NET too little", n("46", 0.4614), n("57", 0.5743), n("31", 0.3127), n("48", 0.4751), ),
  ("Workers", "TOTAL too much", p("17", 0.1732), p("17", 0.1663), p("17", 0.1703), p("18", 0.1800), ),
  ("", "TOTAL too little", p("64", 0.6352), p("72", 0.7207), p("51", 0.5114), p("65", 0.6527), ),
  ("", "NET too little", n("46", 0.4620), n("55", 0.5544), n("34", 0.3411), n("47", 0.4727), ),
  ("Competitiveness", "TOTAL too much", p("15", 0.1481), p("12", 0.1240), p("14", 0.1396), p("17", 0.1708), ),
  ("", "TOTAL too little", p("38", 0.3824), p("44", 0.4445), p("32", 0.3225), p("38", 0.3761), ),
  ("", "NET too little", n("23", 0.2343), n("32", 0.3205), n("18", 0.1829), n("21", 0.2053), ),
))

#heading(level: 3, "By Age")
#xtab(("Item", "Metric", ), ("Total", "18–34", "35–49", "50–64", "65+", ), ("1799", "538", "462", "561", "238", ), (
  ("Children", "TOTAL too much", p("16", 0.1649), p("19", 0.1939), p("16", 0.1577), p("16", 0.1572), p("14", 0.1438), ),
  ("", "TOTAL too little", p("62", 0.6221), p("65", 0.6458), p("62", 0.6187), p("59", 0.5941), p("62", 0.6244), ),
  ("", "NET too little", n("46", 0.4572), n("45", 0.4519), n("46", 0.4609), n("44", 0.4369), n("48", 0.4806), ),
  ("Environment", "TOTAL too much", p("18", 0.1785), p("19", 0.1876), p("18", 0.1777), p("18", 0.1806), p("17", 0.1657), ),
  ("", "TOTAL too little", p("64", 0.6398), p("68", 0.6779), p("62", 0.6188), p("62", 0.6177), p("64", 0.6370), ),
  ("", "NET too little", n("46", 0.4614), n("49", 0.4903), n("44", 0.4411), n("44", 0.4371), n("47", 0.4713), ),
  ("Workers", "TOTAL too much", p("17", 0.1732), p("20", 0.1993), p("16", 0.1563), p("16", 0.1581), p("17", 0.1739), ),
  ("", "TOTAL too little", p("64", 0.6352), p("64", 0.6438), p("66", 0.6555), p("64", 0.6382), p("60", 0.5990), ),
  ("", "NET too little", n("46", 0.4620), n("44", 0.4445), n("50", 0.4993), n("48", 0.4802), n("43", 0.4251), ),
  ("Competitiveness", "TOTAL too much", p("15", 0.1481), p("19", 0.1855), p("16", 0.1564), p("14", 0.1387), p("10", 0.1013), ),
  ("", "TOTAL too little", p("38", 0.3824), p("36", 0.3628), p("39", 0.3882), p("40", 0.3971), p("39", 0.3861), ),
  ("", "NET too little", n("23", 0.2343), n("18", 0.1772), n("23", 0.2318), n("26", 0.2583), n("28", 0.2848), ),
))

#heading(level: 3, "By Ethnicity")
#xtab(("Item", "Metric", ), ("Total", "White", "Black", "Asian", "Mixed", "Other", ), ("1799", "1146", "211", "108", "198", "136", ), (
  ("Children", "TOTAL too much", p("16", 0.1649), p("14", 0.1419), p("25", 0.2541), p("17", 0.1742), p("15", 0.1455), p("23", 0.2310), ),
  ("", "TOTAL too little", p("62", 0.6221), p("65", 0.6488), p("48", 0.4833), p("55", 0.5486), p("66", 0.6641), p("62", 0.6199), ),
  ("", "NET too little", n("46", 0.4572), n("51", 0.5069), n("23", 0.2293), n("37", 0.3744), n("52", 0.5186), n("39", 0.3889), ),
  ("Environment", "TOTAL too much", p("18", 0.1785), p("16", 0.1588), p("28", 0.2847), p("19", 0.1872), p("16", 0.1581), p("20", 0.1959), ),
  ("", "TOTAL too little", p("64", 0.6398), p("67", 0.6729), p("45", 0.4530), p("55", 0.5486), p("72", 0.7201), p("62", 0.6192), ),
  ("", "NET too little", n("46", 0.4614), n("51", 0.5140), n("17", 0.1682), n("36", 0.3614), n("56", 0.5620), n("42", 0.4233), ),
  ("Workers", "TOTAL too much", p("17", 0.1732), p("15", 0.1467), p("32", 0.3154), p("19", 0.1853), p("14", 0.1418), p("20", 0.2038), ),
  ("", "TOTAL too little", p("64", 0.6352), p("65", 0.6543), p("47", 0.4650), p("56", 0.5615), p("74", 0.7397), p("65", 0.6480), ),
  ("", "NET too little", n("46", 0.4620), n("51", 0.5076), n("15", 0.1496), n("38", 0.3762), n("60", 0.5978), n("44", 0.4442), ),
  ("Competitiveness", "TOTAL too much", p("15", 0.1481), p("13", 0.1262), p("24", 0.2353), p("19", 0.1879), p("13", 0.1293), p("18", 0.1834), ),
  ("", "TOTAL too little", p("38", 0.3824), p("38", 0.3754), p("30", 0.3008), p("42", 0.4188), p("47", 0.4697), p("40", 0.4020), ),
  ("", "NET too little", n("23", 0.2343), n("25", 0.2493), n("7", 0.0655), n("23", 0.2310), n("34", 0.3404), n("22", 0.2186), ),
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
#xtab(("Item", "Metric", ), ("Total", "Female", "Male", ), ("1799", "915", "884", ), (
  ("Superintelligence", "TOTAL likely", p("73", 0.7277), p("72", 0.7207), p("73", 0.7349), ),
  ("", "TOTAL unlikely", p("22", 0.2178), p("22", 0.2172), p("22", 0.2185), ),
  ("", "NET likely", n("51", 0.5099), n("50", 0.5035), n("52", 0.5165), ),
  ("Loss-of-control", "TOTAL likely", p("80", 0.7987), p("81", 0.8051), p("79", 0.7921), ),
  ("", "TOTAL unlikely", p("15", 0.1469), p("13", 0.1286), p("17", 0.1660), ),
  ("", "NET likely", n("65", 0.6518), n("68", 0.6765), n("63", 0.6261), ),
  ("Breakthroughs", "TOTAL likely", p("76", 0.7590), p("73", 0.7278), p("79", 0.7914), ),
  ("", "TOTAL unlikely", p("17", 0.1668), p("18", 0.1812), p("15", 0.1519), ),
  ("", "NET likely", n("59", 0.5921), n("55", 0.5466), n("64", 0.6395), ),
  ("WMDs", "TOTAL likely", p("69", 0.6909), p("70", 0.7013), p("68", 0.6802), ),
  ("", "TOTAL unlikely", p("18", 0.1838), p("15", 0.1540), p("21", 0.2148), ),
  ("", "NET likely", n("51", 0.5071), n("55", 0.5472), n("47", 0.4653), ),
))

#heading(level: 3, "By Party")
#xtab(("Item", "Metric", ), ("Total", "Dem", "Rep", "Ind", ), ("1799", "529", "489", "781", ), (
  ("Superintelligence", "TOTAL likely", p("73", 0.7277), p("69", 0.6914), p("77", 0.7739), p("72", 0.7242), ),
  ("", "TOTAL unlikely", p("22", 0.2178), p("25", 0.2490), p("19", 0.1889), p("21", 0.2139), ),
  ("", "NET likely", n("51", 0.5099), n("44", 0.4425), n("58", 0.5849), n("51", 0.5103), ),
  ("Loss-of-control", "TOTAL likely", p("80", 0.7987), p("82", 0.8202), p("74", 0.7390), p("82", 0.8213), ),
  ("", "TOTAL unlikely", p("15", 0.1469), p("13", 0.1256), p("21", 0.2136), p("12", 0.1197), ),
  ("", "NET likely", n("65", 0.6518), n("69", 0.6946), n("53", 0.5254), n("70", 0.7016), ),
  ("Breakthroughs", "TOTAL likely", p("76", 0.7590), p("71", 0.7143), p("82", 0.8220), p("75", 0.7509), ),
  ("", "TOTAL unlikely", p("17", 0.1668), p("21", 0.2081), p("13", 0.1332), p("16", 0.1587), ),
  ("", "NET likely", n("59", 0.5921), n("51", 0.5062), n("69", 0.6888), n("59", 0.5921), ),
  ("WMDs", "TOTAL likely", p("69", 0.6909), p("68", 0.6824), p("67", 0.6700), p("71", 0.7104), ),
  ("", "TOTAL unlikely", p("18", 0.1838), p("17", 0.1705), p("22", 0.2227), p("17", 0.1687), ),
  ("", "NET likely", n("51", 0.5071), n("51", 0.5119), n("45", 0.4473), n("54", 0.5417), ),
))

#heading(level: 3, "By Age")
#xtab(("Item", "Metric", ), ("Total", "18–34", "35–49", "50–64", "65+", ), ("1799", "538", "462", "561", "238", ), (
  ("Superintelligence", "TOTAL likely", p("73", 0.7277), p("69", 0.6932), p("73", 0.7284), p("75", 0.7506), p("75", 0.7473), ),
  ("", "TOTAL unlikely", p("22", 0.2178), p("26", 0.2575), p("22", 0.2151), p("20", 0.1978), p("19", 0.1909), ),
  ("", "NET likely", n("51", 0.5099), n("44", 0.4357), n("51", 0.5133), n("55", 0.5528), n("56", 0.5563), ),
  ("Loss-of-control", "TOTAL likely", p("80", 0.7987), p("80", 0.8020), p("81", 0.8082), p("81", 0.8120), p("77", 0.7708), ),
  ("", "TOTAL unlikely", p("15", 0.1469), p("15", 0.1538), p("15", 0.1486), p("14", 0.1416), p("14", 0.1417), ),
  ("", "NET likely", n("65", 0.6518), n("65", 0.6482), n("66", 0.6596), n("67", 0.6703), n("63", 0.6291), ),
  ("Breakthroughs", "TOTAL likely", p("76", 0.7590), p("69", 0.6939), p("76", 0.7577), p("79", 0.7887), p("81", 0.8124), ),
  ("", "TOTAL unlikely", p("17", 0.1668), p("23", 0.2288), p("16", 0.1567), p("14", 0.1405), p("13", 0.1262), ),
  ("", "NET likely", n("59", 0.5921), n("47", 0.4651), n("60", 0.6010), n("65", 0.6482), n("69", 0.6863), ),
  ("WMDs", "TOTAL likely", p("69", 0.6909), p("68", 0.6844), p("68", 0.6810), p("72", 0.7228), p("68", 0.6776), ),
  ("", "TOTAL unlikely", p("18", 0.1838), p("21", 0.2113), p("21", 0.2068), p("15", 0.1544), p("15", 0.1541), ),
  ("", "NET likely", n("51", 0.5071), n("47", 0.4731), n("47", 0.4742), n("57", 0.5684), n("52", 0.5235), ),
))

#heading(level: 3, "By Ethnicity")
#xtab(("Item", "Metric", ), ("Total", "White", "Black", "Asian", "Mixed", "Other", ), ("1799", "1146", "211", "108", "198", "136", ), (
  ("Superintelligence", "TOTAL likely", p("73", 0.7277), p("72", 0.7192), p("73", 0.7317), p("87", 0.8701), p("69", 0.6923), p("72", 0.7219), ),
  ("", "TOTAL unlikely", p("22", 0.2178), p("22", 0.2186), p("24", 0.2420), p("11", 0.1135), p("24", 0.2436), p("22", 0.2241), ),
  ("", "NET likely", n("51", 0.5099), n("50", 0.5006), n("49", 0.4897), n("76", 0.7566), n("45", 0.4487), n("50", 0.4978), ),
  ("Loss-of-control", "TOTAL likely", p("80", 0.7987), p("81", 0.8052), p("75", 0.7451), p("85", 0.8539), p("78", 0.7842), p("80", 0.8031), ),
  ("", "TOTAL unlikely", p("15", 0.1469), p("13", 0.1326), p("22", 0.2242), p("10", 0.1036), p("15", 0.1547), p("17", 0.1675), ),
  ("", "NET likely", n("65", 0.6518), n("67", 0.6726), n("52", 0.5209), n("75", 0.7503), n("63", 0.6294), n("64", 0.6356), ),
  ("Breakthroughs", "TOTAL likely", p("76", 0.7590), p("76", 0.7565), p("77", 0.7683), p("85", 0.8487), p("72", 0.7158), p("75", 0.7529), ),
  ("", "TOTAL unlikely", p("17", 0.1668), p("16", 0.1643), p("18", 0.1786), p("11", 0.1057), p("20", 0.2027), p("17", 0.1680), ),
  ("", "NET likely", n("59", 0.5921), n("59", 0.5922), n("59", 0.5898), n("74", 0.7430), n("51", 0.5132), n("58", 0.5849), ),
  ("WMDs", "TOTAL likely", p("69", 0.6909), p("69", 0.6854), p("71", 0.7137), p("61", 0.6100), p("74", 0.7445), p("69", 0.6896), ),
  ("", "TOTAL unlikely", p("18", 0.1838), p("18", 0.1822), p("19", 0.1944), p("23", 0.2334), p("13", 0.1344), p("21", 0.2109), ),
  ("", "NET likely", n("51", 0.5071), n("50", 0.5032), n("52", 0.5192), n("38", 0.3766), n("61", 0.6102), n("48", 0.4786), ),
))

= Appendix — Questionnaire

Reconstructed verbatim from the raw Gorilla questionnaire export: item
wording, question prompts, and response options (in their presented order).

Intro, consent, and instruction screens are not captured in this export.

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

#options(("People like me can shape how much AI is part of our lives", "AI is coming into our lives whether we want it or not", ))

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

This is the pilot wave of the *Americans on AI* tracking survey, a
project of Athena Insights.

Respondents were recruited from Prolific and completed the survey online in
Gorilla between June 12 and 18, 2026. Both fieldings used the same Prolific
#link("https://researcher-help.prolific.com/en/article/95c345")[representative sample]
for the United States: the _Political Affiliation & Ethnicity_ sample,
which is stratified on sex, age, ethnicity (simplified US Census), and political affiliation to mirror US population proportions.

Data were collected in two fieldings with recruitment targets of 1,200 and
600, combined for analysis. After keeping only complete questionnaires and
dropping returned, timed-out, and consent-withdrawn submissions, 1,799
responses were retained. 

Results are weighted by raking to US population targets
(ACS 2024) for sex, age, and ethnicity, for a design effect of 1.10 and an effective sample size of 1,640. The achieved (unweighted) composition is
disclosed in full (_Appendix — Sample composition_) per AAPOR
#link("https://aapor.org/standards-and-ethics/disclosure-standards/")[disclosure standards].

For weighting and sample composition reporting, ethnicity is mapped to ACS race-alone (and two-or-more) categories: 

- White, Black, and Asian to their race-alone groups, 
- Mixed to two-or-more races, and 
- Other to American Indian/Alaska Native, Native Hawaiian/Pacific Islander, and some-other-race combined. 

Hispanic origin is not separable in the simplified-Census measure, so it is not a
weighting target; Hispanic respondents are counted under whichever race they reported.

The questionnaire comprised 26 items in seven blocks, items randomized
within blocks, with a median completion time of about 4 minutes.
Participants were compensated in line with Prolific's payment guidelines.

Results are reported as response distributions, totals, and nets.
Every percentage is out of all respondents, with "Not sure" and "None" answers
included. Totals combine related response options, and a net is the percentage-point gap between two totals.

= Appendix — Sample composition

Unweighted demographic composition of the achieved sample (n=1,799), with each weighted margin's ACS 1-year 2024 population target and the gap (sample − target, percentage points). 

*Party* is shown for completeness but is not a weighting target (it is floated); see the methodology for the ethnicity crosswalk and the Hispanic-origin caveat. The report's figures are weighted to these targets; this table shows the achieved unweighted composition.

#comp(("Dimension", "Group", "n", "Sample %", "ACS 2024 %", "Gap (pp)", ), (
  ("Sex", "Female", "915", "51", "51", "−<1", ),
  ("", "Male", "884", "49", "49", "+<1", ),
  ("Party", "Dem", "529", "29", "—", "—", ),
  ("", "Rep", "489", "27", "—", "—", ),
  ("", "Ind", "781", "43", "—", "—", ),
  ("Age", "18–34", "538", "30", "29", "+1", ),
  ("", "35–49", "462", "26", "25", "+1", ),
  ("", "50–64", "561", "31", "23", "+8", ),
  ("", "65+", "238", "13", "23", "−10", ),
  ("Ethnicity", "White", "1146", "64", "62", "+2", ),
  ("", "Black", "211", "12", "12", "−<1", ),
  ("", "Asian", "108", "6", "7", "−1", ),
  ("", "Mixed", "198", "11", "11", "−<1", ),
  ("", "Other", "136", "8", "8", "−1", ),
))
