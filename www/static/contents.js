(function () {
  const nav = document.querySelector("main > nav");
  if (!nav) return;
  const strip = nav.querySelector("ol");
  const links = [...strip.querySelectorAll("a")];
  const sections = links.map((a) => document.getElementById(a.hash.slice(1)).closest("section"));
  const line = parseFloat(getComputedStyle(document.documentElement).scrollPaddingTop) + 1;
  let current = null;

  function mark() {
    const link = links[sections.findLastIndex((s) => s.getBoundingClientRect().top < line)] ?? null;
    if (link === current) return;
    current?.removeAttribute("aria-current");
    current = link;
    current?.setAttribute("aria-current", "true");
    slide();
  }

  function slide() {
    if (!current) return;
    const start = strip.getBoundingClientRect().left + parseFloat(getComputedStyle(strip).paddingLeft);
    strip.scrollTo({ left: strip.scrollLeft + current.getBoundingClientRect().left - start });
  }

  addEventListener("scroll", mark, { passive: true });
  addEventListener("resize", slide);
  mark();
})();
