# www

The site at www.americanson.ai is a set of static pages built from the tracking survey's
rollups and reports.

`cmd/aoai-build` renders the pages into `public/`, which is not committed. Instead, Netlify builds it with the `mkfile` here, through `netlify.sh`, and serves it.

In general, our builds are based on `mk`, as described in the root `README`.
The build needs Go, the fonts key, and the reports built under `../tracker-reports/`.
