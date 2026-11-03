# Americans on AI

Americans on AI is a project to understand Americans' evolving views on artificial intelligence.

We run a biweekly tracking survey, fielded by NORC at the University of Chicago.

## Layout

This repository contains survey data, PDF reports, and our websites.

```
data/                   our study data
tracker-reports/        PDF reports that we build for each of our tracking survey waves
www/                    our websites, built from our study data
fonts/                  our brand fonts, which are committed encrypted
9base/                  two wrappers for systems with Ubuntu's 9base package
renv.lock  renv/        the R environment we use to process and analyze data
Brewfile                required tools for a macOS build environment
versions.env            required versions of typst and R, two of our core dependencies
.claude/hooks/          scripts that set up a Claude Code cloud session
netlify.toml            Netlify's settings; www/netlify.sh is its build script
LICENSE  LEGAL.md       how (and under what terms) you can reuse our work
CITATION.cff            how to cite us (specifically our tracking survey)
```

## Build

We use `mk` from Plan 9, which comes with [plan9port](https://9fans.github.io/plan9port/) on a Mac and with Ubuntu's `9base` package, as our primary build tool.

Each directory builds from inside itself with `9 mk`, and the root builds everything in order.

```
9 mk            # everything in order: the data, then the reports, then the site
9 mk check      # rebuild everything from clean, and fail if a committed output changed
9 mk clean      # remove the build outputs
```

## Encrypted archives

Some contents of this repository are committed as encrypted archives, with keys only available in our development and build environments.

Our raw data is encrypted using `AGE_RAWS_KEY`. Without it, our rollups cannot be rebuilt. The rollups are committed, and our reports and sites are built from those.

Similarly, our brand font is licensed, and it cannot be redistributed, so we encrypt it using `AGE_FONTS_KEY`. Without it, the reports and sites still build, but using a fallback font.
