// Command aoai-build builds the site. It resolves the declarations in package site
// against the crosswalk and the waves and pools under ../data/ and writes the view
// model to build/site.json. Then it renders the pages into public/ and copies -static
// beside them.
package main

import (
	"encoding/json"
	"flag"
	"log"
	"os"
	"path/filepath"
	"strings"

	"github.com/athena-insights/aoai-public/www/render"
	"github.com/athena-insights/aoai-public/www/resolve"
	"github.com/athena-insights/aoai-public/www/site"
)

func main() {
	log.SetFlags(0)
	data := flag.String("data", "../data/tracker-bravo", "the study directory whose waves and pools the site shows")
	crosswalk := flag.String("crosswalk", "crosswalk", "the crosswalk directory")
	templates := flag.String("templates", "templates", "the templates directory")
	pages := flag.String("pages", "pages", "the pages' documents")
	static := flag.String("static", "static", "the directory the site serves as it is, which the mkfile assembles under build/static: the chart script and library, the fonts and the reports")
	waves := flag.String("waves", "", "the waves the site shows, oldest first, as one argument (the mkfile's WAVES); every trend chart runs over them and the Data page lists them")
	pools := flag.String("pools", "", "the pools the site shows, oldest first, as one argument (the mkfile's POOLS), by their names under the study's pooled/; every bar chart draws the last")
	nextUpdate := flag.String("next-update", "", "the date the next survey's results are due, year-month-day, for the datelines; empty for none")
	origin := flag.String("origin", "", "the address the site is served at, scheme and host (the mkfile's ORIGIN); empty when none")
	viewModel := flag.String("json", "build/site.json", "where to write the view model")
	out := flag.String("out", "public", "where to write the site")
	flag.Parse()

	s, err := resolve.Site(resolve.Inputs{Data: *data, Crosswalk: *crosswalk}, site.Pages, site.TrackerCrosstabs, site.Events, strings.Fields(*waves), strings.Fields(*pools), *nextUpdate, *origin)
	if err != nil {
		log.Fatal(err)
	}
	b, err := json.MarshalIndent(s, "", "\t")
	if err != nil {
		log.Fatal(err)
	}
	if err := os.MkdirAll(filepath.Dir(*viewModel), 0o755); err != nil {
		log.Fatal(err)
	}
	if err := os.WriteFile(*viewModel, append(b, '\n'), 0o644); err != nil {
		log.Fatal(err)
	}
	if err := render.Site(s, *templates, *pages, *out); err != nil {
		log.Fatal(err)
	}
	dst := filepath.Join(*out, "static")
	if err := os.RemoveAll(dst); err != nil {
		log.Fatal(err)
	}
	if err := os.CopyFS(dst, os.DirFS(*static)); err != nil {
		log.Fatal(err)
	}
}
