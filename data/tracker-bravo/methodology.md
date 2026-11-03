# Methodology (Bravo)

This series of the Americans on AI tracking survey is fielded biweekly by NORC
at the University of Chicago on its AmeriSpeak panel.

Each wave includes a fixed set of questions and a target sample of 1,000 US
adults. Every other wave includes oversamples of four age bands and two race/ethnicity groups, to increase the precision of our estimates for those groups. An oversample wave has 1,800 to 2,400 US adults.

For our reporting, the sample is weighted to Census benchmarks and 2024 vote
choice. Adjacent waves do not share respondents, so we also report estimates from pooled samples.

## Questionnaire

We ask the same 26 items in every wave, in seven questions grouped in blocks. Each question is a stem with one or more items. Within a block, we randomize item order and
rotate response scales between forward and reverse order, with "Not sure" or
equivalent options always last. We do not force responses on any items;
respondents are free to skip.

## Sample

We survey US adults aged 18 and over living in households, with a probability sample drawn from a household panel. We target 1,000 completed interviews per base wave.

Every other wave, we add oversamples for certain groups. Each oversample wave has at least 400 completed interviews in each of four age bands (18-34, 35-49, 50-64, 65+), and at least 400 Black non-Hispanic and 400 Hispanic adults. The oversamples increase the precision of our estimates for these groups. Weighting restores population proportions, so whole-sample estimates are unaffected.

We require each wave to exclude panelists from the immediately previous wave,
which lets us pool adjacent waves for more precision.

## Fielding

Our survey is fielded by
[NORC at the University of Chicago](https://www.norc.org), on their
[AmeriSpeak panel](https://amerispeak.norc.org):

> Funded and operated by NORC at the University of Chicago, AmeriSpeak® is a
> probability-based panel designed to be representative of the US household
> population. Randomly selected US households are sampled using area probability
> and address-based sampling, with a known, non-zero probability of selection
> from the NORC National Sample Frame. These sampled households are then
> contacted by US mail, telephone, and field interviewers (face to face). The
> panel provides sample coverage of approximately 97% of the U.S. household
> population. Those excluded from the sample include people with P.O. Box only
> addresses, some addresses not listed in the USPS Delivery Sequence File, and
> some newly constructed dwellings. While most AmeriSpeak households participate
> in surveys by web, non-internet households can participate in AmeriSpeak
> surveys by telephone. Households without conventional internet access but
> having web access via smartphones are allowed to participate in AmeriSpeak
> surveys by web.

For each wave, NORC draws the sample from the panel. From the project report NORC
delivers with every wave:

> A general population sample of U.S. adults age 18 and older is selected from
> NORC's AmeriSpeak Panel for each Omnibus wave, excluding any panelist that
> completed either of the last two previous waves. [...] The sample for a
> specific study is selected from the AmeriSpeak Panel using sampling strata
> based on age, race/Hispanic ethnicity, education, and sex (48 sampling strata
> in total). The size of the selected sample per sampling stratum is determined
> by the population distribution for each stratum. In addition, sample selection
> takes into account expected differential survey completion rates by
> demographic groups so that the set of panel members with a completed interview
> for a study is a representative sample of the target population. Panelists
> selected for an AmeriSpeak study earlier in the business week are not eligible
> for sample selection until the following business week.

Interviews are conducted online and by telephone, in English, over a field
period of about three days. About 96% of interviews are online and 4% by
telephone.

In general, NORC excludes panelists who completed either of the two preceding
waves. However, we only require as part of our design that each wave excludes
panelists from the previous wave.[^1]

[^1]:
    Waves 001 and 002 inadvertently included the same 17 individuals. This is
    immaterial in practice and we ignore it.

## Weighting

NORC weights each wave for us. The weights start from the panel's person-level weights. NORC adjusts them for the wave's sample selection and for interview non-response, then rakes them:

> Nonresponse adjusted weights are then calibrated to match population
> benchmarks through raking ratio adjustments. Raking adjusts the weights such
> that the marginal weight totals match benchmark totals on a specified set of
> raking variables. The following person-level characteristics are used in the
> raking adjustments: Age; Sex; Census Division; Race/Ethnicity; Education; Age
> by Sex; Age by Race/Ethnicity; Race/Ethnicity by Sex. Population benchmarks
> for each dimension are obtained from the most recent March CPS supplement.

> For AmeriSpeak studies, weight trimming is embedded in the raking step where
> the weights are raked such that (1) they agree with external population
> benchmarks and (2) they have minimum variability. [...] Typically, AmeriSpeak
> attempts to choose a value of γ that yields: (a) a study design effect less
> than 2, (b) MSE for key survey estimates under a weighting approach with
> trimming (γ > 0) is less than the MSE for key survey estimates under a
> weighting approach with no trimming (γ = 0), and (c) value of γ that is as
> close to 0 as possible.

In plain terms: NORC trims extreme weights as part of the raking, letting the weights depart from exact calibration where that lowers their variability. NORC aims for a design effect under 2, so that the effective sample size is at least half the sample.

NORC rakes the weights we use a second time, to 2024 presidential vote choice
with non-voters as a category. Party identification is not itself a weighting
dimension, so its weighted share varies by wave. Weights are normalized to sum
to the number of respondents.

Along with weights, NORC delivers the variance strata and primary sampling units of
the wave's sample. We use them with the weights for our analyses.

## Analysis

We define the following dimensions from NORC's panelist profile:

- **Sex** is female and male.
- **Party** is NORC's three-category measure: Democrat, Republican and Independent. Leaners, who favor a party without identifying with it, are assigned to that party. A small Unknown group remains in the
  base.
- **Age** is 18 to 34, 35 to 49, 50 to 64, and 65 and over.
- **Ethnicity** is Hispanic, and non-Hispanic white, Black, Asian and Pacific
  Islander, two or more races, and other.
- **Education** is high school or less, some college, and bachelor's degree or more.
- **Household income** is under $50,000, $50,000 to $99,999, and $100,000 or more.
- **Metropolitan status** is residence in a core-based statistical area.

We compute the share of each response, our estimates, for the full sample and for
each group of each dimension. Every item's base holds all its respondents, with "Not
sure", "No answer" and similar responses among them.

For each estimate, we calculate standard errors by Taylor-series linearization
under the wave's sample design, with the weights, variance strata and primary
sampling units.

For the full sample:

- We compute Kish's design effect from the weights alone, and the effective
  sample size as the sample size divided by it. Design effects are typically 1.6
  to 2.1.
- We also compute a single, conventional margin of error at 95% confidence from the effective sample size at a 50% share.
  Whole-sample margins are about ±4 points for a base wave and ±2.5 to ±3.4
  for an oversample wave.

For a pool, we combine two adjacent waves into one sample of about 2,900 to 3,500 adults, to sharpen group estimates. The two waves have no respondents in common. We
treat the wave as a stratum of the pooled design, and we scale each wave's
weights by its share of the pool's effective sample size. Pooled margins for the
whole sample are about ±2.1 to ±2.6 points.

## Reporting

For each wave we report its sample size, field dates, design effect, effective
sample size and full-sample margin of error. We also report its unweighted
sample composition by every reporting group.

For each item in a wave, we report the weighted share of every response. We report it for the full sample and for each group: by sex, party, age, ethnicity, education, household income and metropolitan status. We include a margin of error at 95% confidence for every estimate, based on its design-based standard error.

For each question, we may also report totals and nets: A total is the weighted share of a group of related responses, such as "Very concerned" and "Somewhat concerned" together. A net is the difference between two totals, in percentage points. Concerned minus excited, for example, is net concern.

Alongside the weighted shares, we also report the unweighted count of respondents for each share and the unweighted base of each group.

For a pool we report the same figures over the two waves as one sample, with its
own sample size, effective sample size and margin.

A few conventions in our reporting:

- Shares are rounded to whole percentage points. A share above zero that rounds to zero is shown as "<1".
- We may exclude a "No answer" share when it rounds to 2% or less on every item
  of the question.
- We may exclude any group when its unweighted base is less
  than 100 respondents.
- Nets (differences in totals) are reported in percentage points, abbreviated "pp", with a positive or negative sign: "+X pp" or "-Y pp".
