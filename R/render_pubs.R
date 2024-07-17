#' Render report
#'
#' @export
render_report <- function() {
  quarto::quarto_render("pubs/report/")
}

#' Render publications frontpage
#'
#' @export
render_frontpage <- function() {
  setwd("./pubs/frontpage/")
  rmarkdown::render("index.Rmd")
  setwd("../../")
  out <- here::here("docs")
  chk_create(out)
  files <- list.files(here::here("pubs", "frontpage"), full.names = TRUE)
  file.copy(from = files, to = out, recursive = TRUE)
}

#' Render webinar
#'
#' @export
render_webinar <- function() {
  setwd("./pubs/webinar/")
  rmarkdown::render("index.Rmd")
  setwd("../../")
  out <- here::here("docs", "webinar")
  chk_create(out)
  files <- list.files(here::here("pubs", "webinar"), full.names = TRUE)
  file.copy(from = files, to = out, recursive = TRUE)
}
