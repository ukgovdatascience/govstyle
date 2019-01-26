#' @title Discrete colour scales using the gov_cols palette
#'
#' @description \code{scale_gov} provides a means to easily use the \code{
#' \linl{gov_cols}} palette in charts
#'
#' @param type sets whether the scale applies to (line) \code{colour}, the
#' \code{fill} colour, or \code{both}.
#'
#' @export

scale_gov <- function(type = "fill", ...) {

  type = match.arg(type, c("colour", "fill"))

  cols <- unname(gov_cols)

  if (type == "fill") {
    s <- ggplot2::scale_fill_manual(values = cols)
  } else if (type == "colour") {
    s <- ggplot2::scale_colour_manual(values = cols)
  }

  return(s)

}
