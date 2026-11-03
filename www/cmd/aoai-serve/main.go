// Command aoai-serve serves public/ as it is, for development, adding the reload
// script that `mk watch` relies on. It writes nothing.
package main

import (
	"flag"
	"log"
	"net/http"
)

func main() {
	log.SetFlags(0)
	dir := flag.String("dir", "public", "the built site to serve")
	addr := flag.String("addr", "localhost:8000", "the address to serve it at")
	flag.Parse()
	log.Printf("serving %s at http://%s/", *dir, *addr)
	log.Fatal(http.ListenAndServe(*addr, reloading(*dir)))
}
