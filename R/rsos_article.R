#' Royal Society Open Science journal format.
#'
#' Format for creating submissions to Royal Society Open Science journals. Adapted from
#' \href{http://rsos.royalsocietypublishing.org/author-information#Latex}{http://rsos.royalsocietypublishing.org/author-information#Latex}.
#'
#' @inheritParams rmarkdown::pdf_document
#' @param ... Additional arguments to \code{rmarkdown::pdf_document}
#'
#' @return R Markdown output format to pass to
#'   \code{\link[rmarkdown:render]{render}}
#'
#' @examples
#'
#' \dontrun{
#' library(rmarkdown)
#' draft("MyArticle.Rmd", template = "rsos_article", package = "rticles")
#' }
#'
#' @export
rsos_article <- function(...,
                             keep_tex = TRUE) {
  inherit_pdf_document(...,
                       template = find_resource("rsos_article", "rsos_template.tex"),
                       keep_tex = keep_tex)
}
