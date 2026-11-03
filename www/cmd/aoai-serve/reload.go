package main

import (
	"fmt"
	"io/fs"
	"net/http"
	"os"
	"path"
	"strings"
)

// reload ends each page as it is served. It holds an event stream open to the
// server; when the server stops (as `mk watch` stops it after each edit), the
// stream breaks and the browser retries, and once a new server answers, the page
// reloads. public/ itself never has it.
const reload = `<script>new EventSource("/.reload").onopen = function () { if (this.seen) location.reload(); this.seen = true; };</script>
`

// reloading serves dir as it is, but with reload at the end of each page, and the
// stream it holds open at /.reload, which sends nothing but how soon to retry.
func reloading(dir string) http.Handler {
	files := http.FileServer(http.Dir(dir))
	mux := http.NewServeMux()
	mux.HandleFunc("/.reload", func(w http.ResponseWriter, r *http.Request) {
		w.Header().Set("Content-Type", "text/event-stream")
		fmt.Fprint(w, "retry: 250\n\n")
		http.NewResponseController(w).Flush()
		<-r.Context().Done()
	})
	mux.HandleFunc("/", func(w http.ResponseWriter, r *http.Request) {
		if strings.HasSuffix(r.URL.Path, "/") {
			if b, err := fs.ReadFile(os.DirFS(dir), path.Join(r.URL.Path[1:], "index.html")); err == nil {
				w.Header().Set("Content-Type", "text/html; charset=utf-8")
				w.Write(append(b, reload...))
				return
			}
		}
		files.ServeHTTP(w, r)
	})
	return mux
}
