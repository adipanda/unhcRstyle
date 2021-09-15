#' @name unhcr_templ_paged
#' @rdname unhcr_templ_paged
#' @title Create a paged HTML document suitable for printing with UNHCR Brand
#'
#' @param ... Arguments passed to
#'   \code{pagedown::\link[pagedown]{html_paged}}.
#' @references \url{https://pagedown.rbind.io}
#' @return An R Markdown output format.
#' @import stats utils pagedown
#' @export unhcr_templ_paged
#'
#'
unhcr_templ_paged = function(...) {
  # arguments
  fonts_css <-
    pkg_resource("resources/css/unhcr-fonts.css")
  page_css <-
    pkg_resource("resources/css/unhcr-page.css")
  unhcr_css <-
    pkg_resource("resources/css/unhcr.css")

  # default backcover
  unhcr_backcover <-
    pkg_resource("resources/utils/unhcr-backcover.svg")




  # template
  pagedown::html_paged(
    css = c(fonts_css, page_css, unhcr_css),
    back_cover = unhcr_backcover,
    ...)


}
