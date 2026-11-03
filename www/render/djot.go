package render

import (
	"bytes"
	"html"
	htmltemplate "html/template"
	"path/filepath"
	"text/template"

	djot "github.com/danielledeleo/djot-go"
)

// photo is what the photo part renders: a picture under static/photos/, its
// description and its credit, and the page's way back to the root.
type photo struct {
	File, Alt, Credit, Root string
}

// body runs the djot body at path for d and returns its HTML. t is the page's
// template set, which renders the charts, photos and parts.
func body(t *htmltemplate.Template, path string, d *document) (htmltemplate.HTML, error) {
	run := func(name string, data any) (string, error) {
		var b bytes.Buffer
		err := t.ExecuteTemplate(&b, name, data)
		return b.String(), err
	}

	fenced := func(name string, data any) (string, error) {
		h, err := run(name, data)
		return "\n```=html\n" + h + "\n```\n", err
	}

	text := func(name string, data any) (string, error) {
		h, err := run(name, data)
		return html.UnescapeString(h), err
	}
	page, err := template.New(filepath.Base(path)).Funcs(funcs).Funcs(template.FuncMap{
		"chart": func(id string) (string, error) {
			c, err := d.Chart(id)
			if err != nil {
				return "", err
			}
			return fenced("chart", c)
		},
		"photo": func(file, alt, credit string) (string, error) {
			return fenced("photo", photo{file, alt, credit, d.Root})
		},
		"part": fenced,
		"text": text,
	}).ParseFiles(path)
	if err != nil {
		return "", err
	}
	var src bytes.Buffer
	if err := page.Execute(&src, d); err != nil {
		return "", err
	}
	return htmltemplate.HTML(djot.RenderHTML(djot.Parse(src.String()))), nil
}
