# Methodology (Alfa)

The alfa series is a single-wave pilot of the Americans on AI tracking survey, fielded online with an opt-in sample recruited on Prolific.

The wave includes a fixed set of questions and a target sample of 1,800 US
adults.

For our reporting, the sample is weighted to Census benchmarks by raking, and
our margins of error are conventional, not sampling margins.

## Questionnaire

We ask 26 items in seven questions grouped in blocks. Each question is a stem with one or more items. Within a block, we randomize item order.

## Sample

We survey US adults aged 18 and over, with an opt-in sample, not a probability
sample. The sample is stratified to match population proportions on sex, age, ethnicity in the US Census's simplified categories, and political affiliation.

Every kept respondent answered every item, so there is no "No answer" category.

## Fielding

Our survey is fielded on [Prolific](https://www.prolific.com), whose
representative sample for the United States provides the stratification.
Prolific recruits and pays respondents under its payment guidelines. The
questionnaire runs on [Gorilla](https://gorilla.sc).

Respondents complete the questionnaire online, in English, over a field period
of about a week. Median completion time is about four minutes. We keep a
submission when its questionnaire is complete and Prolific's status for it is
approved or awaiting review. We drop submissions that are returned, timed out or
withdrawn.

## Weighting

We weight the sample by raking to the population of US adults aged 18 and over. The targets are the American Community Survey's 2024 one-year
estimates, on three margins: sex, age in four bands, and ethnicity in five
groups.

Ethnicity maps Prolific's simplified categories to the Census's race-alone
groups. White, Black and Asian map to their race-alone groups, and Mixed to two
or more races. Other combines American Indian and Alaska Native, Native Hawaiian
and Pacific Islander, and some other race. Hispanic origin is not separable
in Prolific's measure, so it is not a raking margin, and Hispanic respondents
count under the race they report. Party identification is not a weighting
dimension.

Weights are normalized to sum to the number of respondents.

## Analysis

We define the following dimensions from Prolific's demographic profile:

- **Party** is self-reported affiliation: Democrat, Republican and Independent.
- **Age** is 18 to 34, 35 to 49, 50 to 64, and 65 and over.
- **Ethnicity** is the five raking groups: White, Black, Asian, Mixed and Other.
  Hispanic respondents are counted within these by the race they report.

For each item, we compute every share (estimate) over all respondents to the
item, including "Not sure".

The sample is opt-in, so there is no sampling margin of error in the
design-based sense. We nevertheless calculate a standard error for each
estimate, by Taylor-series linearization under the raked weights. The
calculation treats the sample as if it had been drawn with equal probability.
These errors describe the variability a probability sample of this size and
weighting would show. They do not measure selection bias. An opt-in sample has
it, and none of these figures puts a bound on it.

For the full sample:

- We compute Kish's design effect from the weights alone, and the effective
  sample size as the sample size divided by it. The design effect is about 1.1.
- Under the same assumption, we also compute a single, conventional margin of error at 95% confidence from the effective sample size at a 50% share. The
  whole-sample margin is about ±2.4 points.

## Reporting

For the wave we report its sample size, field dates, design effect, effective
sample size and full-sample margin of error. We also report its unweighted
sample composition by every reporting group, with each raking margin's
population target beside it.

For each item, we report the weighted share of every response. We report it for the full sample and for each group: by sex, party, age and ethnicity. We include a margin
of error at 95% confidence for every estimate, based on its standard error. We
report it as computed under the assumption that the sample were a probability
sample.

For each question, we may also report totals and nets: A total is the weighted
share of a group of related responses, such as "Very concerned" and "Somewhat
concerned" together. A net is the difference between two totals, in percentage points. Concerned minus excited, for example, is net concern.

Alongside the weighted shares, we also report the unweighted count of
respondents for each share and the unweighted base of each group.

A few conventions in our reporting:

- Shares are rounded to whole percentage points. A share above zero that rounds to zero is shown as "<1".
- Nets are reported in percentage points, abbreviated
  "pp", with a minus sign where negative.
