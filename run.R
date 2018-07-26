
R

setwd("/Users/rosseji/dev/pks/sweave")

rmarkdown::render("index.Rmd")


complile_pdf <- function(base_nm) {
  knitr::knit(paste0(base_nm, ".Rnw"), quiet = T)
  tools::texi2pdf(paste0(base_nm, ".tex"), quiet = T)
}

complile_pdf("example")
