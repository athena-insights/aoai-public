#!/usr/bin/env Rscript

suppressPackageStartupMessages({
  library(survey)
  library(docopt)
})

"Tabulate a wave's or a pool's rollups under NORC's delivered design.

Usage:
  rollups.R <wave> [<member>...]

<wave> is a wave directory, by path. Reads <wave>/rollups/responses.tsv and <wave>/dicts/{items,options,netdefs,recodes}.tsv;
writes <wave>/rollups/stats.tsv, nets.tsv, weights.tsv and wave.tsv.

With members, <wave> is a POOL of those wave directories: their responses.tsv are stacked
into <wave>/rollups/responses.tsv first (see the pool section), and the run proceeds on that
file exactly as for a wave, so a pool's rollups are a pure function of its own files.

Options:
  -h --help  show this help and exit
" -> DOC
opt <- docopt::docopt(DOC)
WAVE    <- opt$wave
MEMBERS <- opt$member
DICTS   <- "dicts"     # the wave's dictionaries
ROLLUPS <- "rollups"   # the wave's rollups, read and written
RESPONSES  <- file.path(WAVE, ROLLUPS, "responses.tsv")
ITEMS      <- file.path(WAVE, DICTS, "items.tsv")
OPTIONS    <- file.path(WAVE, DICTS, "options.tsv")
NETDEFS    <- file.path(WAVE, DICTS, "netdefs.tsv")
RECODES    <- file.path(WAVE, DICTS, "recodes.tsv")
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

if (length(MEMBERS)) {
  parts <- lapply(MEMBERS, function(m) {
    d <- rd(file.path(m, ROLLUPS, "responses.tsv"))
    d$weight_ath <- suppressWarnings(as.numeric(d$weight_ath))
    if (any(!is.finite(d$weight_ath)) || any(d$weight_ath <= 0))
      stop(sprintf("rollups.R: %s: WEIGHT_ATH missing/non-positive", m))
    list(id = basename(m), d = d, n = nrow(d),
         neff = sum(d$weight_ath)^2 / sum(d$weight_ath^2))
  })
  cols <- lapply(parts, function(p) names(p$d))
  if (!all(vapply(cols, identical, logical(1), cols[[1]])))
    stop("rollups.R: the members' responses.tsv columns differ; a pool needs one schema")
  n_pool <- sum(vapply(parts, function(p) p$n, numeric(1)))
  neff_all <- sum(vapply(parts, function(p) p$neff, numeric(1)))
  stacked <- do.call(rbind, lapply(parts, function(p) {
    lambda <- p$neff / neff_all
    d <- p$d
    d$submission_id <- paste0(p$id, ":", d$submission_id)
    d$vstrat_ath    <- paste0(p$id, ":", d$vstrat_ath)
    d$weight_ath <- formatC(d$weight_ath * lambda * n_pool / p$n, format = "f", digits = 10)
    cbind(wave = p$id, d, stringsAsFactors = FALSE)
  }))
  for (dd in unique(dirname(RESPONSES))) dir.create(dd, showWarnings = FALSE, recursive = TRUE)
  wtab(stacked, RESPONSES)
  message(sprintf("pool: %s  n=%d  lambda=%s", paste(vapply(parts, `[[`, "", "id"), collapse = "+"),
                  n_pool, paste(sprintf("%.4f", vapply(parts, function(p) p$neff / neff_all, numeric(1))), collapse = ":")))
}

wide    <- rd(RESPONSES)
items   <- rd(ITEMS)
opts    <- rd(OPTIONS)
netdefs <- rd(NETDEFS)
recodes <- rd(RECODES)

items$item_ord  <- as.integer(items$item_ord)
opts$rank       <- as.integer(opts$rank)
opts$bucket_ord <- as.integer(opts$bucket_ord)

demo_cols <- c("submission_id", "sex", "party_id", "age_band", "ethnicity",
               "educ_band", "income_band", "metro")
n <- nrow(wide)

for (i in seq_len(nrow(items))) {
  it <- items$item[i]
  rc <- recodes[recodes$q_id == items$q_id[i], ]
  if (nrow(rc)) {
    hit <- match(wide[[it]], rc$from)
    wide[[it]] <- ifelse(is.na(hit), wide[[it]], rc$to[hit])
  }
}

wide$weight_ath <- suppressWarnings(as.numeric(wide$weight_ath))
if (any(!is.finite(wide$weight_ath)) || any(wide$weight_ath <= 0))
  stop("rollups.R: WEIGHT_ATH missing/non-positive -- not a usable supplied weight")
if (abs(sum(wide$weight_ath) - n) > 0.01)
  stop(sprintf("rollups.R: WEIGHT_ATH sums to %.4f, expected n=%d (not normalized?)",
               sum(wide$weight_ath), n))
blank <- function(x) is.na(x) | trimws(x) == ""
nblank <- sum(blank(wide$vstrat_ath) | blank(wide$vpsu_ath))
if (nblank > 0)
  stop(sprintf("rollups.R: %d row(s) with blank VSTRAT/VPSU -- variance design incomplete",
               nblank))

bucket_of <- setNames(opts$bucket, key(opts$q_id, opts$response))
unmapped <- character(0)
for (i in seq_len(nrow(items))) {
  it <- items$item[i]; q <- items$q_id[i]
  b  <- unname(bucket_of[key(q, wide[[it]])])
  if (anyNA(b)) unmapped <- c(unmapped, sprintf("%s: %s", q, unique(wide[[it]][is.na(b)])))
  nd <- netdefs[netdefs$q_id == q, ]
  wide[[paste0("b_", it)]] <- b
  wide[[paste0("d_", it)]] <- ifelse(b == nd$pos_bucket, 1, ifelse(b == nd$neg_bucket, -1, 0))
}
unmapped <- unique(unmapped)
if (length(unmapped))
  stop(sprintf("rollups.R: %d response label(s) with no options.tsv bucket:\n  %s",
               length(unmapped), paste(unmapped, collapse = "\n  ")))

des <- svydesign(ids = ~vpsu_ath, strata = ~vstrat_ath, weights = ~weight_ath,
                 data = wide, nest = TRUE)
W <- weights(des)

neff <- sum(W)^2 / sum(W^2)
if (n / neff >= 4)
  stop(sprintf("rollups.R: deff=%.2f -- supplied weights look wrong", n / neff))
message(sprintf("design: n=%d min=%.3f max=%.3f ratio=%.2f n_eff=%.1f deff=%.3f strata=%d",
                n, min(W), max(W), max(W) / min(W), neff, n / neff,
                length(unique(wide$vstrat_ath))))

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
if ("wave" %in% names(wide))
  wave <- rbind(wave, data.frame(key = "members", value = paste(unique(wide$wave), collapse = " "),
                                 stringsAsFactors = FALSE))

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
  mk(0L, NA,       NULL),
  mk(1L, "sex",    "sex"),
  mk(2L, "party",  "party_id"),
  mk(3L, "age",    "age_band"),
  mk(4L, "eth",    "ethnicity"),
  mk(5L, "educ",   "educ_band"),
  mk(6L, "income", "income_band"),
  mk(7L, "metro",  "metro")
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
              c("age", "age_band"), c("eth", "ethnicity"),
              c("educ", "educ_band"), c("income", "income_band"),
              c("metro", "metro"))

wprop <- function(col) {
  des$variables[[col]] <- factor(des$variables[[col]])
  lev <- levels(des$variables[[col]])
  k   <- length(lev)
  f   <- as.formula(paste0("~`", col, "`"))   # backtick-quote: item names may contain non-syntactic chars (e.g. the `:` q_id/leaf separator)
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
message(sprintf("rollups.R: wrote %s, %s, %s, %s  (n=%d, NORC design)",
                STATS_OUT, NETS_OUT, WTS_OUT, WAVE_OUT, n))
