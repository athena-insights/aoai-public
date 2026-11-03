(function () {
  const watch = new IntersectionObserver((entries) => {
    for (const { target, isIntersecting } of entries) {
      if (!isIntersecting) continue;
      for (const draw of target.getAnimations()) draw.play();
      watch.unobserve(target);
    }
  }, { rootMargin: "0px 0px -25% 0px" });

  for (const band of document.querySelectorAll("main .finding")) {
    const draws = band.getAnimations();
    if (!draws.length || band.getBoundingClientRect().top < innerHeight) continue;
    for (const draw of draws) {
      draw.pause();
      draw.currentTime = 0;
    }
    watch.observe(band);
  }
})();
