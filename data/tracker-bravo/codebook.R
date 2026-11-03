#!/usr/bin/env Rscript

suppressPackageStartupMessages({
  library(openxlsx2)
  library(docopt)
})

"Normalize a pollster codebook xlsx into the long TSV responses.sql joins against.

Usage:
  codebook.R --xlsx=F --tsv=F

Options:
  --xlsx=F  input: codebook workbook as delivered (the wave's raws/)
  --tsv=F   output: long codebook table (the wave's codebook.tsv)
  -h --help show this help and exit
" -> DOC
opt <- docopt::docopt(DOC)
XLSX <- opt$xlsx
TSV  <- opt$tsv

fail <- function(...) stop(sprintf(...), call. = FALSE)

wb <- wb_load(XLSX)
sheets <- wb_get_sheet_names(wb)
if (length(sheets) != 1)
  fail("codebook.R: expected exactly 1 sheet, got %d (%s)", length(sheets), paste(sheets, collapse = ", "))

df <- wb_to_df(wb, sheet = 1, col_names = TRUE, fill_merged_cells = TRUE)
header <- c("Variable", "Variable Label", "Value", "Value Label")
if (!identical(names(df), header))
  fail("codebook.R: header row is not '%s' (got '%s')", paste(header, collapse = " | "), paste(names(df), collapse = " | "))
if (nrow(df) == 0) fail("codebook.R: no data rows")

df[] <- lapply(df, as.character)

if (is.na(df$Variable[1])) fail("codebook.R: first data row has no Variable to fill from")
filled <- df
for (col in c("Variable", "Variable Label")) {
  v <- filled[[col]]
  for (i in seq_along(v)) if (is.na(v[i])) v[i] <- v[i - 1]
  filled[[col]] <- v
}

doconly <- is.na(filled$Value) & is.na(filled[["Value Label"]])
filled$Value[doconly] <- ""
filled[["Value Label"]][doconly] <- ""
if (anyNA(filled)) {
  bad <- which(rowSums(is.na(filled)) > 0)
  fail("codebook.R: blank Value/Value Label cell(s) at data row(s) %s", paste(head(bad, 5), collapse = ", "))
}
if (anyDuplicated(filled[c("Variable", "Value")]))
  fail("codebook.R: duplicate (variable, value) pair(s) -- block layout not as expected")
if (any(grepl("[\t\r\n]", as.matrix(filled))))
  fail("codebook.R: tab/newline inside a cell -- would corrupt the TSV")

names(filled) <- c("variable", "variable_label", "value", "value_label")
con <- file(TSV, open = "wb")
writeLines(c(paste(names(filled), collapse = "\t"),
             do.call(paste, c(unname(filled), sep = "\t"))),
           con, useBytes = TRUE)
close(con)
