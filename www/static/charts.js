(function () {
  const here = document.currentScript.src;
  const line = parseFloat(getComputedStyle(document.body).lineHeight);
  const root = getComputedStyle(document.documentElement);
  const token = (name) => root.getPropertyValue(name).trim();
  const probe = document.body.appendChild(document.createElement("span"));
  probe.hidden = true;
  const norm = document.createElement("canvas").getContext("2d", { willReadFrequently: true });
  const color = (name) => {
    const value = token(name);
    if (!value) return "";
    probe.style.color = value;
    norm.fillStyle = getComputedStyle(probe).color;
    norm.fillRect(0, 0, 1, 1);
    const [r, g, b] = norm.getImageData(0, 0, 1, 1).data;
    return "#" + [r, g, b].map((v) => v.toString(16).padStart(2, "0")).join("");
  };
  const sides = { pos: [color("--pos-0"), color("--pos-1")], neg: [color("--neg-0"), color("--neg-1")] };
  const residual = [color("--resid-0"), color("--resid-1")]; // a residual's bar, darkest first
  const category = [1, 2, 3, 4].map((i) => ({ color: color(`--category-${i}`), dash: token(`--category-${i}-dash`) || "solid" }));
  const row = 1.25 * line; // a bar's row, the bar half of it
  const bar = row / 2;
  const tallRow = 1.5 * line; // a bar's row on a narrow chart, its name on a line above the bar
  const totalRoom = 1.5 * line; // past a bar's end for its bucket's total
  const chipLabel = 1.25 * line; // past a residual chip for its value
  const nameGap = 1.5 * line; // between a bar's name and the center-side end of its bars
  const nameWidth = 6 * line; // a bar's name may take in the names' column before it wraps
  const endRoom = 4 * line; // the least room at a line chart's right for its end labels. A longer word widens it
  const labelGap = line / 4; // between a line's end and its label
  const cap = line / 4; // a whisker's caps, shorter than the bar they cross
  const dot = 7; // a point on a line, and a news event's glyph on the time axis, across
  const ringRadius = 2 * line; // a ring's outer radius; its band is as wide as a bar
  const scale = 2; // the saved image's pixels per pixel of the page: twice, for a screen's sake
  const ink = { text: color("--ink-2"), gray: color("--ink-3"), grid: color("--chart-grid"), baseline: color("--chart-axis"),
    surface: color("--paper"), rule: color("--rule") };
  const total = color("--ink"); // a net bucket's total among its responses' lines, or a reference group
  const fitted = {
    min: (e) => Math.max(0, Math.floor(e.min / 10) * 10),
    max: (e) => Math.min(100, Math.ceil(e.max / 10) * 10),
  };
  const endLabelsUpTo = 4; // lines; past that, the legend alone names them
  const bandOpacity = parseFloat(token("--band-opacity")); // a line's margin-of-error band, in the line's color
  const narrow = 16 * line; // narrower line charts drop their end labels, and bars' names go above their bars

  const marksKey = "margin-of-error";
  const stored = () => { try { return localStorage.getItem(marksKey) !== "hidden"; } catch { return true; } };
  const store = (on) => { try { localStorage.setItem(marksKey, on ? "shown" : "hidden"); } catch {} };
  const marksOn = stored(); // as the page opens
  addEventListener("storage", (e) => { if (e.key === marksKey) setMarks(stored()); });

  const charts = [...document.querySelectorAll("figure.chart")].map(prepare);
  if (charts.length) {
    const { fontSize, fontFamily } = getComputedStyle(charts[0].plot);
    Promise.all(["400", "600"].map((weight) => document.fonts.load(`${weight} ${fontSize} ${fontFamily}`)))
      .finally(() => charts.forEach(draw));
  }

  function prepare(fig) {
    const data = JSON.parse(fig.querySelector('script[type="application/json"]').textContent);
    const plot = fig.querySelector(".plot");
    const style = getComputedStyle(plot);
    const type = { family: style.fontFamily, size: parseFloat(style.fontSize) };
    const drawn = { lines, bars, ring }[data.form](data, type);
    const key = legend(drawn.entries, data.form);
    const sw = drawn.bands && bandSwitch(marksOn);
    if (sw) {
      const li = document.createElement("li");
      li.append(sw);
      key.append(li);
    }
    plot.before(key);
    fig.querySelector(".downloads").append(download(fig));
    if (drawn.height) plot.style.height = drawn.height(plot.clientWidth) + "px";
    return { plot, drawn, sw };
  }

  function download(fig) {
    const b = document.createElement("button");
    b.type = "button";
    b.className = "download";
    const say = (label, name) => {
      const arrow = document.createElement("span");
      arrow.setAttribute("aria-hidden", "true");
      arrow.textContent = "↓";
      b.replaceChildren(label + " ", arrow);
      b.setAttribute("aria-label", name);
    };
    say("Image", "Download image as PNG");
    b.addEventListener("click", async () => {
      b.disabled = true;
      try {
        const snap = await fetchSnapdom();
        const shot = await snap(fig, { exclude: [".downloads"], excludeMode: "remove", backgroundColor: ink.surface });
        const gutter = fig.firstElementChild.getBoundingClientRect().left - fig.getBoundingClientRect().left;
        await save(inset(await rasterize(shot, fig), scale * Math.max(line - gutter, 0), scale * line), `americans-on-ai-${fig.id}.png`);
        say("Image", "Download image as PNG");
      } catch (e) {
        console.error(e);
        say("Retry", "Download failed, try again");
      } finally {
        b.disabled = false;
      }
    });
    return b;
  }

  function inset(capture, x, y) {
    x = Math.round(x);
    y = Math.round(y);
    const out = document.createElement("canvas");
    out.width = capture.width + 2 * x;
    out.height = capture.height + 2 * y;
    const ctx = out.getContext("2d");
    ctx.fillStyle = ink.surface;
    ctx.fillRect(0, 0, out.width, out.height);
    ctx.drawImage(capture, x, y);
    return out;
  }

  const ios = navigator.userAgentData ? navigator.userAgentData.platform === "iOS" :
    /iPhone|iPad|iPod/.test(navigator.userAgent) || (navigator.maxTouchPoints > 2 && /Macintosh/.test(navigator.userAgent));
  async function rasterize(shot, fig) {
    const url = shot.toRaw();
    const doc = new DOMParser().parseFromString(decodeURIComponent(url.slice(url.indexOf(",") + 1)), "image/svg+xml");
    const root = doc.documentElement;
    const size = (el) => ["x", "y", "width", "height"].forEach((a) => el.hasAttribute(a) && el.setAttribute(a, parseFloat(el.getAttribute(a)) * scale));
    root.removeAttribute("viewBox");
    size(root);
    const fo = root.querySelector("foreignObject");
    size(fo);
    const markup = fo.querySelector("div"); // the page's markup, scaled here; under a viewBox on the root WebKit loses the plot
    markup.setAttribute("style", `transform:scale(${scale}) !important;transform-origin:0 0 !important;${markup.getAttribute("style") || ""}`);
    const img = new Image();
    img.decoding = "sync";
    img.src = `data:image/svg+xml;charset=utf-8,${encodeURIComponent(new XMLSerializer().serializeToString(root))}`;
    await img.decode();
    img.style.cssText = "position:fixed;left:-99999px;top:-99999px;pointer-events:none";
    document.body.append(img);
    try {
      const out = document.createElement("canvas");
      out.width = img.naturalWidth;
      out.height = img.naturalHeight;
      const ctx = out.getContext("2d", { willReadFrequently: true });
      const frame = fig.getBoundingClientRect();
      const boxes = ["figcaption h3", ".foot p"].map((sel) => {
        const box = fig.querySelector(sel).getBoundingClientRect();
        return [box.left - frame.left, box.top - frame.top, box.width, box.height].map((v) => Math.round(v * scale));
      });
      const blank = () => {
        ctx.fillStyle = ink.surface;
        ctx.fillRect(0, 0, out.width, out.height);
        const [r, g, b] = ctx.getImageData(0, 0, 1, 1).data;
        ctx.drawImage(img, 0, 0);
        const differs = (v, from) => Math.abs(v - from) > 32; // a draw's rounding moves paper by one
        return boxes.some((box) => {
          const px = ctx.getImageData(...box).data;
          for (let i = 0; i < px.length; i += 4) if (differs(px[i], r) || differs(px[i + 1], g) || differs(px[i + 2], b)) return false;
          return true;
        });
      };
      for (const until = performance.now() + 3000; blank() && performance.now() < until;) await new Promise(requestAnimationFrame);
      return out;
    } finally {
      img.remove();
    }
  }

  async function save(canvas, name) {
    if (ios && navigator.canShare) {
      const blob = await new Promise((resolve) => canvas.toBlob(resolve, "image/png"));
      if (!blob) throw new Error("the image couldn't be encoded");
      const file = new File([blob], name, { type: "image/png" });
      if (navigator.canShare({ files: [file] })) {
        try {
          await navigator.share({ files: [file], title: name });
          return;
        } catch (e) {
          if (e.name === "AbortError") return;
        }
      }
    }
    const a = document.createElement("a");
    a.href = canvas.toDataURL("image/png");
    a.download = name;
    a.click();
  }

  const snapdomSrc = new URL("snapdom.min.js", here).href;
  let snapdomLoading;
  function fetchSnapdom() {
    return (snapdomLoading ??= new Promise((resolve, reject) => {
      const s = document.createElement("script");
      s.src = snapdomSrc;
      s.onload = () => resolve(window.snapdom);
      s.onerror = () => reject(new Error(`snapDOM didn't load from ${snapdomSrc}`));
      document.head.append(s);
    }).catch((e) => {
      snapdomLoading = undefined;
      throw e;
    }));
  }

  function draw(c) {
    const { plot, drawn, sw } = c;
    const chart = echarts.init(plot, null, { renderer: "svg" });
    c.chart = chart;
    chart.setOption(drawn.option);
    const relayout = () => drawn.layout && chart.setOption(drawn.layout(chart.getWidth()));
    relayout();
    if (sw) sw.addEventListener("click", () => setMarks(sw.getAttribute("aria-pressed") !== "true"));
    new ResizeObserver(() => {
      if (drawn.height) plot.style.height = drawn.height(plot.clientWidth) + "px";
      chart.resize();
      relayout();
    }).observe(plot);
  }

  function setMarks(on) {
    store(on);
    for (const c of charts) {
      if (!c.sw || !c.chart) continue;
      press(c.sw, on);
      c.chart.setOption({ series: c.drawn.bands(on) });
    }
  }

  function lines(data, type) {
    const labels = data.series.length <= endLabelsUpTo;
    const room = once(() => Math.max(endRoom, widest(data.series.flatMap((s) => s.label.split(" ")), type) + labelGap + line / 4));
    let next = 0;
    const styles = data.series.map((s) =>
      s.total || s.ref ? { color: total } : s.side === "resid" ? { color: ink.gray } : s.side ? { color: shade(s.side, s.step) } :
      group(s.group) ? { color: group(s.group) } : category[next++ % category.length]);
    const colors = styles.map((x) => x.color);
    const band = (on) => bands(data, colors, on);
    const events = data.events || [];
    return {
      entries: data.series.map((s, i) => ({ label: s.label, color: colors[i], dash: styles[i].dash })),
      bands: band,
      layout: (width) => {
        const show = labels && width >= narrow;
        const right = show ? room() : line / 2;
        return {
          grid: { right },
          series: data.series.map(() => ({ endLabel: { show, width: right - labelGap } })),
        };
      },
      option: {
        animation: false,
        color: colors,
        textStyle: { fontFamily: type.family, fontSize: type.size, color: ink.gray },
        grid: { left: 1.5 * line, top: line / 2, bottom: line },
        tooltip: { trigger: "axis", confine: true, formatter: lineTip, ...tip(type),
          axisPointer: { lineStyle: { color: ink.baseline } } },
        xAxis: {
          type: "time",
          axisLabel: { formatter: { year: "{MMM}", month: "{MMM}", day: "" }, color: ink.gray, fontSize: type.size },
          axisLine: { lineStyle: { color: ink.baseline } },
          axisTick: { show: false },
          splitLine: { show: false },
        },
        yAxis: {
          type: "value",
          ...(data.axis === "fitted" ? fitted : { min: 0, max: 100, interval: 20 }),
          axisLabel: { formatter: "{value}%", color: ink.gray, fontSize: type.size },
          splitLine: { lineStyle: { color: ink.grid } },
        },
        series: [...data.series.map((s, i) => ({
          name: s.label,
          type: "line",
          data: s.points.map((p) => ({ value: [p.date, p.estimate], p })),
          lineStyle: { width: 2, type: styles[i].dash === "dashed" ? [6, 4] : "solid" },
          symbol: "circle",
          symbolSize: dot,
          itemStyle: { borderColor: ink.surface, borderWidth: 1.5 },
          endLabel: { formatter: "{a}", color: ink.text, distance: labelGap, overflow: "break" },
          labelLayout: { moveOverlap: "shiftY" },
        })), ...band(marksOn), ...news(events, type)],
      },
    };
  }

  function bands(data, colors, on) {
    return data.series.map((s, i) => ({
      id: `band-${i}`,
      type: "custom",
      silent: true,
      clip: true,
      tooltip: { show: false },
      encode: { x: 0, y: [1, 2] },
      data: s.points.map((p) => [p.date, p.estimate - p.moe, p.estimate + p.moe]),
      renderItem: (params, api) => {
        if (!on || params.dataIndex > 0) return null;
        const bound = (sign) => s.points.map((p) => api.coord([p.date, p.estimate + sign * p.moe]));
        return { type: "polygon", shape: { points: [...bound(1), ...bound(-1).reverse()] }, style: { fill: colors[i], opacity: bandOpacity } };
      },
    }));
  }

  function news(events, type) {
    if (events.length === 0) return [];
    return [{
      id: "news",
      type: "custom",
      clip: false,
      z: 5,
      encode: { x: 0 },
      data: events.map((e) => ({ value: [e.date], e, tooltip: { trigger: "item", formatter: eventTip } })),
      renderItem: (params, api) => {
        const cs = params.coordSys;
        const cx = api.coord([api.value(0), 0])[0];
        const cy = cs.y + cs.height;
        return { type: "group", children: [
          { type: "circle", shape: { cx, cy, r: line / 4 }, style: { fill: "transparent" } },
          { type: "circle", shape: { cx, cy, r: dot / 2 }, style: { fill: ink.gray, stroke: ink.surface, lineWidth: 1.5 } },
        ] };
      },
    }];
  }

  function group(key) {
    return key ? color("--group-" + key.toLowerCase().replace(/[^a-z0-9]+/g, "-").replace(/^-|-$/g, "")) : "";
  }

  function shade(side, step) {
    return sides[side][Math.min(step, sides[side].length - 1)];
  }

  function eventTip(p) { return echarts.format.encodeHTML(p.data.e.text); }

  function lineTip(items) {
    const enc = echarts.format.encodeHTML;
    const points = items.filter((i) => i.data.p);
    if (points.length === 0) return items.map(eventTip).join("<br>");
    return enc(points[0].data.p.dates) +
      points.map((i) => `<br>${i.marker}${enc(i.seriesName)}: ${enc(i.data.p.text)}`).join("");
  }

  function bars(data, type) {
    const bars = data.per === "group" ? data.bars : [...data.bars].sort((a, b) => b.pos.estimate - a.pos.estimate);
    const rows = bars.flatMap((b) => b.heading ? [{ head: b.heading }, b] : [b]);
    const named = bars.length > 1;
    const above = (width) => named && width < narrow;
    const colors = new Map();
    const marks = (on) => [...whiskers(rows, type, on), ...chips(bars[0], rows, colors, type, on)];
    const series = [...stack(bars[0], rows, colors), ...marks(marksOn), ...headings(rows, type, above),
      ...(named ? namesAbove(rows, type, above) : [])];
    const most = (f) => Math.max(...bars.map(f));
    const neg = most((b) => b.neg.estimate + b.neg.moe), pos = most((b) => b.pos.estimate + b.pos.moe);
    const cols = bars[0].resid.map((_, i) => most((b) => b.resid[i].estimate + b.resid[i].moe));
    const resid = cols.reduce((t, v) => t + v, 0);
    const captioned = cols.length > 1;
    const longest = once(() => named ? widest(bars.map((b) => b.label), type) : 0);
    const names = () => Math.min(longest(), nameWidth);
    const left = (width) => named && !above(width) ? names() + nameGap : totalRoom;
    return {
      entries: entries(bars[0], colors),
      bands: marks,
      height: (width) => rows.length * (above(width) ? tallRow : row) + line / 2 + (captioned ? line / 2 : 0),
      layout: (width) => {
        const fixed = totalRoom + cols.length * chipLabel;
        const right = resid ? fixed + resid * (width - left(width) - fixed) / (neg + pos + resid) : totalRoom;
        return {
          grid: { left: left(width), right },
          yAxis: { axisLabel: { show: named && !above(width), width: names() } },
        };
      },
      option: {
        animation: false,
        textStyle: { fontFamily: type.family, fontSize: type.size, color: ink.gray },
        grid: { top: captioned ? 3 / 4 * line : line / 4, bottom: line / 4 },
        xAxis: { type: "value", min: -neg, max: pos, show: false },
        yAxis: {
          type: "category", inverse: true, data: rows.map((r) => r.head || r.label),
          axisTick: { show: false }, axisLine: { show: false },
          axisLabel: {
            show: named, color: ink.text, fontSize: type.size, margin: nameGap, overflow: "break",
            formatter: (value, i) => rows[i].head ? "" : value,
          },
        },
        tooltip: {
          trigger: "axis", axisPointer: { type: "shadow", shadowStyle: { color: total, opacity: 0.06 } }, confine: true, ...tip(type),
          formatter: (items) => items[0].data.b ? barTip(items[0].data.b, colors) : "",
        },
        series,
      },
    };
  }

  function stack(first, rows, colors) {
    const side = (s) => first.responses.map((r, i) => ({ r, i })).filter((x) => x.r.side === s);
    const series = [];
    for (const [s, sign, list] of [["neg", -1, side("neg").reverse()], ["pos", 1, side("pos")]]) {
      list.forEach(({ r, i }) => {
        colors.set(r.label, shade(s, r.step));
        series.push({
          name: r.label, type: "bar", stack: "net", barWidth: bar,
          itemStyle: { color: colors.get(r.label) },
          data: rows.map((b) => b.head ? { value: "-" } : { value: sign * b.responses[i].estimate, b }),
        });
      });
    }
    series[0].markLine = {
      silent: true, symbol: "none", label: { show: false },
      lineStyle: { color: ink.baseline, type: "solid", width: 1 },
      data: [{ xAxis: 0 }],
    };
    return series;
  }

  function whiskers(rows, type, on) {
    const bars = rows.map((b, row) => ({ b, row })).filter((x) => !x.b.head);
    return [["neg", -1], ["pos", 1]].map(([s, sign]) => ({
      id: `whisker-${s}`,
      type: "custom", silent: true, z: 5,
      tooltip: { show: false },
      data: bars.map(({ row }) => ({ value: [0, row] })),
      renderItem: (params, api) => {
        const b = bars[params.dataIndex].b;
        const y = api.coord([0, api.value(1)])[1];
        const x = (v) => api.coord([sign * v, 0])[0];
        const marked = on && b[s].moe > 0;
        const tip = x(b[s].estimate + (marked ? b[s].moe : 0));
        return { type: "group", children: [
          ...(marked ? whisker(x(b[s].estimate - b[s].moe), tip, y) : []),
          { type: "text", style: { text: b[s].value, x: tip + sign * line / 4, y, verticalAlign: "middle", align: sign > 0 ? "left" : "right",
            fill: ink.text, fontSize: type.size, fontFamily: type.family } },
        ] };
      },
    }));
  }

  function whisker(x0, x1, y) {
    const stroke = (x1, y1, x2, y2) => ({ type: "line", shape: { x1, y1, x2, y2 }, style: { stroke: total, lineWidth: 1.5 } });
    return [stroke(x0, y, x1, y), stroke(x0, y - cap / 2, x0, y + cap / 2), stroke(x1, y - cap / 2, x1, y + cap / 2)];
  }

  function chips(first, rows, colors, type, on) {
    const resid = first.resid;
    if (resid.length === 0) return [];
    resid.forEach((r, i) => colors.set(r.label, residual[Math.min(i, residual.length - 1)]));
    const bars = rows.map((b, row) => ({ b, row })).filter((x) => !x.b.head);
    const most = resid.map((_, i) => Math.max(...bars.map(({ b }) => b.resid[i].estimate + b.resid[i].moe)));
    const captions = once(() => resid.map((r) => widest([r.label], type)));
    const text = (style) => ({ type: "text", style: { fill: ink.gray, fontSize: type.size, fontFamily: type.family, ...style } });
    return [{
      id: "chips",
      type: "custom",
      name: resid.map((r) => r.label).join(", "),
      data: bars.map(({ b, row }) => ({ value: [0, row], b })),
      renderItem: (params, api) => {
        const b = bars[params.dataIndex].b;
        const cs = params.coordSys;
        const y = api.coord([0, api.value(1)])[1];
        let x = cs.x + cs.width + totalRoom;
        const children = [];
        const columns = most.map((m) => api.size([m, 0])[0] + chipLabel);
        const captioned = resid.length > 1 && captions().every((c, i) => c + line / 4 < columns[i]);
        b.resid.forEach((r, i) => {
          const w = api.size([r.estimate, 0])[0], m = api.size([r.moe, 0])[0];
          const marked = on && r.moe > 0;
          const column = columns[i];
          children.push({ type: "rect", shape: { x, y: y - bar / 2, width: w, height: bar }, style: { fill: colors.get(r.label) } });
          if (marked) children.push(...whisker(x + w - m, x + w + m, y));
          children.push(text({ text: r.value, x: x + w + (marked ? m : 0) + line / 4, y, verticalAlign: "middle" }));
          if (params.dataIndex === 0 && captioned) {
            children.push(text({ text: r.label, x, y: y - bar / 2 - line / 4, verticalAlign: "bottom" }));
          }
          x += column;
        });
        return { type: "group", children };
      },
    }];
  }

  function headings(rows, type, above) {
    const heads = rows.map((r, row) => ({ r, row })).filter((x) => x.r.head);
    if (heads.length === 0) return [];
    return [{
      type: "custom", silent: true, z: 6,
      data: heads.map(({ row }) => ({ value: [0, row] })),
      renderItem: (params, api) => {
        const { r, row } = heads[params.dataIndex];
        const [center, y] = api.coord([0, row]);
        return {
          type: "text",
          style: {
            text: r.head, x: 0, y, width: above(api.getWidth()) ? api.getWidth() : center - line / 4,
            overflow: "break", verticalAlign: "middle", backgroundColor: ink.surface,
            fill: ink.text, fontSize: type.size, fontFamily: type.family, fontWeight: 600,
          },
        };
      },
    }];
  }

  function namesAbove(rows, type, above) {
    const named = rows.map((r, row) => ({ r, row })).filter((x) => !x.r.head);
    return [{
      type: "custom", silent: true, z: 6,
      data: named.map(({ row }) => ({ value: [0, row] })),
      renderItem: (params, api) => {
        if (!above(api.getWidth())) return null;
        const { r, row } = named[params.dataIndex];
        const y = api.coord([0, row])[1] - bar / 2 - line / 8;
        return {
          type: "text",
          style: { text: r.label, x: 0, y, verticalAlign: "bottom", backgroundColor: ink.surface, fill: ink.text, fontSize: type.size, fontFamily: type.family },
        };
      },
    }];
  }

  function ring(data, type) {
    const b = data.bars[0];
    const colors = new Map();
    b.responses.forEach((r) => colors.set(r.label, shade(r.side, r.step)));
    b.resid.forEach((r, i) => colors.set(r.label, residual[Math.min(i, residual.length - 1)]));
    const arc = (r) => ({ name: r.label, value: r.estimate, r, itemStyle: { color: colors.get(r.label) } });
    const pos = b.responses.filter((r) => r.side === "pos"), neg = b.responses.filter((r) => r.side === "neg");
    const shown = [...pos, ...b.resid, ...neg].reduce((t, r) => t + r.estimate, 0);
    const paper = { value: Math.max(0, 100 - shown), itemStyle: { color: ink.surface },
      label: { show: false }, labelLine: { show: false }, tooltip: { show: false }, emphasis: { disabled: true } };
    const arcs = [...pos.map(arc), ...b.resid.map(arc), paper, ...neg.map(arc)];
    return {
      entries: entries(b, colors),
      height: () => 2 * ringRadius + 2 * line,
      option: {
        animation: false,
        textStyle: { fontFamily: type.family, fontSize: type.size, color: ink.gray },
        tooltip: { trigger: "item", confine: true, ...tip(type),
          formatter: (p) => `${echarts.format.encodeHTML(b.label)} (${echarts.format.encodeHTML(b.respondents)})<br>${response(p.data.r, colors)}` },
        series: [{
          type: "pie", radius: [ringRadius - bar, ringRadius], center: ["50%", "50%"], startAngle: 90,
          label: { position: "outside", color: ink.text, formatter: (p) => p.data.r ? p.data.r.value : "" },
          labelLine: { length: line / 4, length2: line / 4, lineStyle: { color: ink.baseline } },
          emphasis: { scale: false },
          data: arcs,
        }],
      },
    };
  }

  function widest(labels, type) {
    const ctx = document.createElement("canvas").getContext("2d");
    ctx.font = `${type.size}px ${type.family}`;
    const wide = ctx.measureText("国").width;
    const width = (l) => [...l].reduce((w, c) => w + (c.charCodeAt(0) <= 127 ? ctx.measureText(c).width : wide), 0);
    return Math.ceil(Math.max(...labels.map(width)));
  }

  function tip(type) {
    return {
      textStyle: { fontFamily: type.family, fontSize: type.size, color: total },
      backgroundColor: ink.surface, borderColor: ink.rule, borderWidth: 1, padding: [line / 4, line / 2],
      extraCssText: "border-radius: 0; box-shadow: 0 .75rem 1rem -.5rem rgb(0 0 0 / .15);",
    };
  }

  function once(f) {
    let v;
    return () => (v ??= f());
  }

  function entries(first, colors) {
    return [...first.responses, ...first.resid].map((r) => ({ label: r.label, color: colors.get(r.label) }));
  }

  function barTip(b, colors) {
    const enc = echarts.format.encodeHTML;
    const name = b.item ? `${b.item}: ${b.label}` : b.label;
    const out = [`${enc(name)} (${enc(b.respondents)})`];
    for (const s of ["pos", "neg"]) {
      out.push(`${enc(b[s].label)}: ${enc(b[s].text)}`);
      const rs = b.responses.filter((r) => r.side === s);
      out.push(...(s === "pos" ? rs.reverse() : rs).map((r) => response(r, colors)));
    }
    out.push(...b.resid.map((r) => response(r, colors)));
    return out.join("<br>");
  }

  function response(r, colors) {
    const enc = echarts.format.encodeHTML;
    return `${echarts.format.getTooltipMarker(colors.get(r.label))}${enc(r.label)}: ${enc(r.text)}`;
  }

  function bandSwitch(on) {
    const button = document.createElement("button");
    button.type = "button";
    button.className = "bands";
    const verb = document.createElement("span");
    verb.setAttribute("aria-hidden", "true");
    button.append("Margin of error ", verb);
    press(button, on);
    return button;
  }

  function press(button, on) {
    button.setAttribute("aria-pressed", on);
    button.lastChild.textContent = on ? "(hide)" : "(show)";
    return on;
  }

  function legend(entries, form) {
    const ul = document.createElement("ul");
    ul.className = `legend ${form}`;
    for (const e of entries) {
      const li = document.createElement("li");
      li.textContent = e.label;
      li.style.setProperty("--color", e.color);
      if (e.dash) li.style.setProperty("--dash", e.dash);
      ul.append(li);
    }
    return ul;
  }
})();
