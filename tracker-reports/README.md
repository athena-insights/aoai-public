# tracker-reports

We produce and publish PDF reports for each wave of our tracking survey. 

Reports are typeset in typst from each wave's rollups and dictionaries, with the wave's prose from `prose/`. `cmd/report` writes the report's source and `report.typ` is our template. The PDFs are committed under `out/`.

In general, our builds are based on `mk`, as described in the root `README`.
The report build process then depends on Go, and on typst at the version in the root `versions.env`. 

Reproducing our committed reports depends on having the American Grotesk font unpacked under `../fonts/`. Without it, typst sets the report in Libre Franklin, committed here under the Open Font License.
