# data

We publish our study data here: each directory is a single study, which may be structured as one or more waves.

We name studies that are series in our tracking survey `tracker-*`, where `*` is from the [NATO phonetic alphabet](https://en.wikipedia.org/wiki/NATO_phonetic_alphabet).

A study often contains encrypted raw data from a fielding partner, a self-serve web panel, etc. 
We leave it encrypted because it's microdata that may have privacy implications, or for other reasons.
Our local environments or build infrastructure provide the necessary keys for the encrypted contents.

Typically code in a study directory transforms the raw data into more convenient microdata formats and does tabulations and other analyses, and the results of those transformations are committed into the repository.

In general, our builds are based on `mk`, as described in the root `README`.
