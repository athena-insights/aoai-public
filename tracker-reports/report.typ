#let ink = rgb("#2E2E2E")      // body text, rules, and the footer bar
#let purple = rgb("#7100E9")   // the brand accent; the high end of both scales
#let orange = rgb("#E97100")   // the negative end of the diverging scale
#let fonts = ("American Grotesk", "Libre Franklin")  // the second is the committed fallback

#let margin = 1.25in           // the body margin; the generated document resets to it after the cover
#let _cover-top = 4.35cm      // page 1 only: drops the title to balance the mark above it
#let _bar-height = 2.1cm      // the footer bar, full bleed, from the bottom edge
#let _footer-pad = 0.5cm      // the bar's breathing room above its text
#let _mark-w = 20mm
#let _mark-top = _bar-height  // the cover mark's distance from the top edge mirrors the bar
#let _title-above = 2em
#let _title-below = 1.2em + 4mm  // typst's default block spacing plus 4mm, as published

#let report(title: none, doc) = {
  set document(title: title)
  set text(fill: ink, lang: "en", region: "US", size: 11pt, font: fonts)
  set par(justify: false, leading: 0.65em)
  set smartquote(enabled: false)
  set page(
    paper: "us-letter",
    margin: (top: _cover-top, bottom: margin, x: margin),
    numbering: "1",
    footer: none,
    background: context {
      place(bottom, block(
        width: 100%, height: _bar-height, fill: ink,
        inset: (x: margin, top: _footer-pad),
        align(top + left, text(fill: white, size: 10pt)[
          americanson.ai
          #h(1fr)
          #counter(page).display()
        ]),
      ))
      if counter(page).get().first() == 1 {
        place(top + center, dy: _mark-top, image("assets/sparkles-and-stripes.svg", width: _mark-w))
      }
    },
  )
  let wm = sys.inputs.at("watermark", default: "")
  set page(foreground: place(horizon + center,
    rotate(-55deg, text(size: 90pt, fill: ink.transparentize(92%), wm)))) if wm != ""

  set table(inset: 6pt, stroke: none)
  set table.hline(stroke: (paint: ink))
  set line(stroke: (paint: ink))
  show table: set text(stretch: 75%)
  show figure.where(kind: table): set figure.caption(position: top)
  set strong(delta: 100)
  show heading: set block(below: 1em)
  show heading.where(level: 1): it => {
    if it.outlined { pagebreak(weak: true) }
    it
  }

  if title != none {
    block(inset: (x: 0pt, y: _title-above), below: _title-below,
      text(weight: "bold", size: 1.5em, hyphenate: false, title))
  }
  doc
}

#let stem(s) = quote(block: true, emph(s))

#let note(body) = block(sticky: true, body)

#let items(xs) = list(..xs.map(x => [#x]))
#let options(xs) = enum(..xs.map(x => [#x]))

#let _lerp(a, b, t) = a + (b - a) * t
#let _ramp(hi, f) = rgb(
  int(calc.round(_lerp(255, hi.components().at(0) / 100% * 255, f))),
  int(calc.round(_lerp(255, hi.components().at(1) / 100% * 255, f))),
  int(calc.round(_lerp(255, hi.components().at(2) / 100% * 255, f))),
)
#let _seq(f) = _ramp(purple, calc.clamp(f, 0, 1))
#let _div(f) = {
  let g = calc.clamp(f, -1, 1)
  if g >= 0 { _ramp(purple, g) } else { _ramp(orange, -g) }
}
#let _dark(c) = {
  let (r, g, b) = c.components().slice(0, 3).map(x => x / 100% * 255)
  0.299 * r + 0.587 * g + 0.114 * b < 140
}
#let _cell(s, unit, fill) = {
  let body = [#s~#unit]
  if _dark(fill) { body = text(fill: white, body) }
  table.cell(fill: fill, body)
}
#let p(s, f) = _cell(s, "%", _seq(f))
#let n(s, f) = _cell(s, "pp", _div(f))

#let _c(x) = if type(x) == str { [#x] } else { x }
#let _table(head, rows, labels: 1) = figure(align(center)[#table(
  columns: head.len(),
  align: (left,) * labels + (auto,) * (head.len() - labels),
  table.header(..head.map(h => [#h])),
  table.hline(),
  ..rows.flatten().map(_c),
)])

#let defs(lead, head, rows) = {
  note[#lead]
  _table(head, rows, labels: 2)
}

#let dist(head, rows) = _table(head, rows, labels: 1)

#let xtab(corners, cols, base, rows) = {
  let head = corners + cols
  let base-row = (strong[Base (n)],) + ((none,) * (corners.len() - 1)).map(x => []) + base.map(b => [#b])
  _table(head, (base-row,) + rows, labels: corners.len())
}

#let comp(head, rows) = _table(head, rows, labels: 2)
