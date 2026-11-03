#!/usr/bin/env Rscript

suppressPackageStartupMessages({
  library(survey)
  library(docopt)
})

"Rake the sample to the ACS targets and tabulate the wave's rollups.

Usage:
  rollups.R <wave>

<wave> is a wave directory, by path. Reads <wave>/rollups/responses.tsv and <wave>/dicts/{items,options,netdefs}.tsv;
writes <wave>/rollups/stats.tsv, nets.tsv, weights.tsv and wave.tsv.
Also reads <wave>/rollups/targets.tsv, the raking margins the mkfile builds from upstream/.

Options:
  -h --help  show this help and exit
" -> DOC
opt <- docopt::docopt(DOC)
WAVE <- opt$wave
DICTS   <- "dicts"     # the wave's dictionaries
ROLLUPS <- "rollups"   # the wave's rollups, read and written
RESPONSES  <- file.path(WAVE, ROLLUPS, "responses.tsv")
ITEMS      <- file.path(WAVE, DICTS, "items.tsv")
OPTIONS    <- file.path(WAVE, DICTS, "options.tsv")
NETDEFS    <- file.path(WAVE, DICTS, "netdefs.tsv")
TARGETS    <- file.path(WAVE, ROLLUPS, "targets.tsv")
STATS_OUT  <- file.path(WAVE, ROLLUPS, "stats.tsv")
NETS_OUT   <- file.path(WAVE, ROLLUPS, "nets.tsv")
WTS_OUT    <- file.path(WAVE, ROLLUPS, "weights.tsv")
WAVE_OUT   <- file.path(WAVE, ROLLUPS, "wave.tsv")

rd <- function(p) read.delim(p, sep = "\t", quote = "", comment.char = "",
                             check.names = FALSE, colClasses = "character",
                             na.strings = character(0))

round_haz <- function(x, d) {
  p <- 10^d
  sign(x) * floor(abs(x) * p + 0.5) / p
}

fmt_real <- function(x, d) {
  r <- round_haz(x, d)
  r[r == 0] <- 0                     # avoid "-0"
  s <- as.character(r)
  whole <- !grepl("[.eE]", s)
  s[whole] <- paste0(s[whole], ".0")
  s
}

wtab <- function(df, path) {
  write.table(df, path, sep = "\t", quote = FALSE,
              row.names = FALSE, col.names = TRUE, na = "")
}

SEP <- "\x1f"                         # unit separator: a join key never in the data
key <- function(...) do.call(paste, c(list(...), sep = SEP))

wide    <- rd(RESPONSES)
items   <- rd(ITEMS)
opts    <- rd(OPTIONS)
netdefs <- rd(NETDEFS)
targets <- rd(TARGETS)

items$item_ord  <- as.integer(items$item_ord)
opts$rank       <- as.integer(opts$rank)
opts$bucket_ord <- as.integer(opts$bucket_ord)

demo_cols <- c("submission_id", "sex", "party_id", "age_band", "ethnicity")
n <- nrow(wide)

lvl <- list(sex = "sex", age = "age_band", eth = "ethnicity")
for (d in names(lvl)) {
  col  <- lvl[[d]]
  levs <- targets$value[targets$dim == d]
  bad  <- setdiff(unique(wide[[col]]), levs)        # raw character values, pre-coercion
  if (length(bad)) stop(sprintf("rollups.R: %s value(s) not in targets: %s", col, paste(bad, collapse = ", ")))
  wide[[col]] <- factor(wide[[col]], levels = levs) # setdiff above guarantees no NA
}

tot <- sum(as.numeric(targets$count[targets$dim == "sex"]))
for (d in names(lvl))
  stopifnot(abs(sum(as.numeric(targets$count[targets$dim == d])) - tot) < 0.5)
popmargin <- function(d, col) {
  v <- targets$value[targets$dim == d]
  setNames(data.frame(v, as.numeric(targets$count[targets$dim == d]) / tot * n),
           c(col, "Freq"))
}

bucket_of <- setNames(opts$bucket, key(opts$q_id, opts$response))
for (i in seq_len(nrow(items))) {
  it <- items$item[i]; q <- items$q_id[i]
  b  <- unname(bucket_of[key(q, wide[[it]])])
  nd <- netdefs[netdefs$q_id == q, ]
  wide[[paste0("b_", it)]] <- b
  wide[[paste0("d_", it)]] <- ifelse(b == nd$pos_bucket, 1, ifelse(b == nd$neg_bucket, -1, 0))
}

des <- svydesign(ids = ~1, weights = ~1, data = wide)
des <- rake(des,
            sample.margins     = list(~sex, ~age_band, ~ethnicity),
            population.margins = list(popmargin("sex", "sex"),
                                      popmargin("age", "age_band"),
                                      popmargin("eth", "ethnicity")),
            control = list(maxit = 50, epsilon = 1e-7))
W <- weights(des)

stopifnot(abs(sum(W) - n) < 1e-4)
for (d in names(lvl)) {
  col <- lvl[[d]]
  got <- svytable(as.formula(paste0("~", col)), des)
  pm  <- popmargin(d, col)
  if (max(abs(as.numeric(got[pm[[col]]]) - pm$Freq)) > 1e-2)
    stop(sprintf("rollups.R: raked margin %s does not match target (not converged?)", col))
}
neff <- sum(W)^2 / sum(W^2)
message(sprintf("rake: n=%d sum(w)=%.4f min=%.3f max=%.3f ratio=%.2f n_eff=%.1f deff=%.3f",
                n, sum(W), min(W), max(W), max(W) / min(W), neff, n / neff))

conf <- 0.95
z    <- qnorm((1 + conf) / 2)                 # 1.95996... for 95%
moe  <- z * sqrt(0.25 / neff) * 100           # half-width, percentage points
moe_pct   <- round(moe, 2)
n_eff_out <- round(neff)
deff_out  <- round(n / neff, 3)
field_start <- min(substr(wide$started_at,   1, 10))
field_end   <- max(substr(wide$completed_at, 1, 10))
wave <- data.frame(
  key   = c("survey_n", "field_start", "field_end", "conf_level", "n_eff", "deff", "moe_pct"),
  value = c(as.character(n), field_start, field_end,
            as.character(conf), as.character(n_eff_out),
            formatC(deff_out, format = "f", digits = 3),
            formatC(moe_pct,  format = "f", digits = 2)),
  stringsAsFactors = FALSE)

wt <- data.frame(submission_id = wide$submission_id, weight = formatC(W, format = "f", digits = 6),
                 stringsAsFactors = FALSE)
wt <- wt[order(wt$submission_id, method = "radix"), ]

long <- do.call(rbind, lapply(items$item, function(it) {
  data.frame(wide[demo_cols], item = it, response = wide[[it]], stringsAsFactors = FALSE)
}))
long <- merge(long, items[, c("item", "q_id", "item_ord")], by = "item", all.x = TRUE)
long <- merge(long, opts[, c("q_id", "response", "rank", "bucket", "bucket_ord")],
              by = c("q_id", "response"), all.x = TRUE)

miss <- unique(long[is.na(long$rank), c("item", "response")])
if (nrow(miss)) {
  for (i in seq_len(nrow(miss)))
    message(sprintf("WARNING %s: response not in options (sorts last): %s / %s",
                    STATS_OUT, miss$item[i], miss$response[i]))
}

mk <- function(dord, prefix, col) {
  grp <- if (is.null(col)) "total" else paste0(prefix, "=", long[[col]])
  data.frame(dord = dord, grp = grp,
             item = long$item, item_ord = long$item_ord, response = long$response,
             rank = long$rank, bucket = long$bucket, bucket_ord = long$bucket_ord,
             stringsAsFactors = FALSE)
}
tall <- rbind(
  mk(0L, NA,      NULL),
  mk(1L, "sex",   "sex"),
  mk(2L, "party", "party_id"),
  mk(3L, "age",   "age_band"),
  mk(4L, "eth",   "ethnicity")
)
tall$rank_ord <- ifelse(is.na(tall$rank), 99L, tall$rank)
tall$one <- 1L

stats_tbl <- function() {
  a <- aggregate(list(n = tall$one),
                 by = list(dord = tall$dord, grp = tall$grp, question = tall$item,
                           item_ord = tall$item_ord, response = tall$response,
                           rank_ord = tall$rank_ord),
                 FUN = sum)
  a$grp_n <- ave(a$n, a$grp, a$question, FUN = sum)
  p <- a$n / a$grp_n
  a$pct <- fmt_real(100 * p, 1)
  a$se_pct <- fmt_real(100 * sqrt(p * (1 - p) / a$grp_n), 2)
  o <- order(a$dord, a$grp, a$item_ord, a$rank_ord, a$response, method = "radix")
  a <- a[o, ]
  a[, c("grp", "question", "response", "n", "grp_n", "pct", "se_pct")]
}

nets_tbl <- function() {
  tb <- tall[!is.na(tall$bucket), ]
  cnt <- aggregate(list(n = tb$one),
                   by = list(dord = tb$dord, grp = tb$grp, item = tb$item,
                             bucket = tb$bucket),
                   FUN = sum)
  qb   <- unique(tb[, c("item", "item_ord", "bucket", "bucket_ord")])
  grps <- unique(tb[, c("dord", "grp")])
  grid <- merge(grps, qb)                         # cross join (no shared cols)
  bagg <- merge(grid, cnt, by = c("dord", "grp", "item", "bucket"), all.x = TRUE)
  bagg$n[is.na(bagg$n)] <- 0L                     # zero-fill absent buckets
  bagg$base_n <- ave(bagg$n, bagg$grp, bagg$item, FUN = sum)

  pb <- bagg$n / bagg$base_n
  bk <- data.frame(
    dord = bagg$dord, grp = bagg$grp, question = bagg$item, item_ord = bagg$item_ord,
    metric = bagg$bucket, kind = "total", mord = bagg$bucket_ord,
    n = as.character(bagg$n),
    value = fmt_real(100 * pb, 1),
    se = fmt_real(100 * sqrt(pb * (1 - pb) / bagg$base_n), 2),
    base_n = bagg$base_n, stringsAsFactors = FALSE)

  gi <- unique(bagg[, c("dord", "grp", "item", "item_ord", "base_n")])
  gi <- merge(gi, items[, c("item", "q_id")], by = "item")
  gi <- merge(gi, netdefs, by = "q_id")           # 1 net per q_id
  posc <- data.frame(bagg[c("dord", "grp", "item")], pos_bucket = bagg$bucket, pos_n = bagg$n)
  negc <- data.frame(bagg[c("dord", "grp", "item")], neg_bucket = bagg$bucket, neg_n = bagg$n)
  gi <- merge(gi, posc, by = c("dord", "grp", "item", "pos_bucket"), all.x = TRUE)
  gi <- merge(gi, negc, by = c("dord", "grp", "item", "neg_bucket"), all.x = TRUE)
  gi$pos_n[is.na(gi$pos_n)] <- 0L
  gi$neg_n[is.na(gi$neg_n)] <- 0L
  pp <- gi$pos_n / gi$base_n; qq <- gi$neg_n / gi$base_n
  nt <- data.frame(
    dord = gi$dord, grp = gi$grp, question = gi$item, item_ord = gi$item_ord,
    metric = gi$net_name, kind = "net", mord = 9L,
    n = "",
    value = fmt_real(100 * (gi$pos_n - gi$neg_n) / gi$base_n, 1),
    se = fmt_real(100 * sqrt((pp + qq - (pp - qq)^2) / gi$base_n), 2),
    base_n = gi$base_n, stringsAsFactors = FALSE)

  rows <- rbind(bk, nt)
  o <- order(rows$dord, rows$grp, rows$item_ord, rows$kind == "net", rows$mord,
             rows$metric, method = "radix")
  rows <- rows[o, ]
  rows[, c("grp", "question", "metric", "kind", "n", "value", "se", "base_n")]
}

WDIMS <- list(c("sex", "sex"), c("party", "party_id"),
              c("age", "age_band"), c("eth", "ethnicity"))

wprop <- function(col) {
  f   <- as.formula(paste0("~factor(`", col, "`)"))   # backtick-quote: item names may contain non-syntactic chars (e.g. the `:` q_id/leaf separator)
  lev <- levels(factor(des$variables[[col]]))
  k   <- length(lev)
  m   <- svymean(f, des)
  out <- list(data.frame(grp = "total", level = lev,
                         est = as.numeric(coef(m)), se = as.numeric(SE(m)),
                         stringsAsFactors = FALSE))
  for (dd in WDIMS) {
    b     <- svyby(f, as.formula(paste0("~", dd[2])), des, svymean, vartype = "se")
    gvals <- as.character(b[[1]])
    means <- as.matrix(b[, 2:(k + 1), drop = FALSE])             # rows=gvals, cols=levels
    ses   <- as.matrix(b[, (k + 2):(2 * k + 1), drop = FALSE])
    out[[length(out) + 1]] <- data.frame(
      grp   = rep(paste0(dd[1], "=", gvals), times = k),
      level = rep(lev, each = length(gvals)),
      est = as.numeric(means), se = as.numeric(ses), stringsAsFactors = FALSE)
  }
  res <- do.call(rbind, out)
  stopifnot(all(is.finite(res$est)), all(is.finite(res$se)))
  res
}

wmean <- function(col) {
  f   <- as.formula(paste0("~`", col, "`"))   # backtick-quote (see wprop)
  m   <- svymean(f, des)
  out <- list(data.frame(grp = "total", est = as.numeric(coef(m)), se = as.numeric(SE(m)),
                         stringsAsFactors = FALSE))
  for (dd in WDIMS) {
    b <- svyby(f, as.formula(paste0("~", dd[2])), des, svymean, vartype = "se")
    out[[length(out) + 1]] <- data.frame(
      grp = paste0(dd[1], "=", as.character(b[[1]])), est = b[[2]], se = b[[3]],
      stringsAsFactors = FALSE)
  }
  res <- do.call(rbind, out)
  stopifnot(all(is.finite(res$est)), all(is.finite(res$se)))
  res
}

sw <- do.call(rbind, lapply(items$item, function(it) {
  d <- wprop(it)
  data.frame(grp = d$grp, question = it, response = d$level,
             pct_w = fmt_real(d$est * 100, 2), se_w = fmt_real(d$se * 100, 2),
             stringsAsFactors = FALSE)
}))

nw <- do.call(rbind, lapply(seq_len(nrow(items)), function(i) {
  it <- items$item[i]; q <- items$q_id[i]
  bd <- wprop(paste0("b_", it))
  bt <- data.frame(grp = bd$grp, question = it, metric = bd$level, kind = "total",
                   value_w = fmt_real(bd$est * 100, 2), se_w = fmt_real(bd$se * 100, 2),
                   stringsAsFactors = FALSE)
  nm <- netdefs$net_name[netdefs$q_id == q]
  nd <- wmean(paste0("d_", it))
  nr <- data.frame(grp = nd$grp, question = it, metric = nm, kind = "net",
                   value_w = fmt_real(nd$est * 100, 2), se_w = fmt_real(nd$se * 100, 2),
                   stringsAsFactors = FALSE)
  rbind(bt, nr)
}))

for (dd in unique(dirname(c(STATS_OUT, NETS_OUT, WTS_OUT, WAVE_OUT))))
  dir.create(dd, showWarnings = FALSE, recursive = TRUE)

st <- stats_tbl()
ix <- match(key(st$grp, st$question, st$response), key(sw$grp, sw$question, sw$response))
st$pct_w <- sw$pct_w[ix]; st$se_w <- sw$se_w[ix]
wtab(st, STATS_OUT)

nt <- nets_tbl()
ix <- match(key(nt$grp, nt$question, nt$metric, nt$kind), key(nw$grp, nw$question, nw$metric, nw$kind))
nt$value_w <- nw$value_w[ix]; nt$se_w <- nw$se_w[ix]
wtab(nt, NETS_OUT)

wtab(wt, WTS_OUT)
wtab(wave, WAVE_OUT)
message(sprintf("rollups.R: wrote %s, %s, %s, %s  (n=%d, raked)",
                STATS_OUT, NETS_OUT, WTS_OUT, WAVE_OUT, n))
