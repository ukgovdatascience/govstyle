#' @title Discrete colour scales using the gov_cols palette
#'
#' @description \code{scale_gov} provides a means to easily use the \code{
#' \link{gov_cols}} palette in charts. It applies the palette in order as an 
#' unnamed vector.
#'
#' @param type sets whether the scale applies to (line) \code{colour}, the
#' \code{fill} colour, or \code{both}.
#' 
#' @param ... additional arguments to be supplied to the underlying ggplot2
#' \code{scale_} function.
#' 
#' @return Will not return anything of itself, but when used in conjuntion
#' with \code{\link{ggplot}} and (e.g.) \code{\link{geom_col}} from the
#' package \code{ggplot2}, will apply a colour scale to a plot.
#' 
#' @examples 
#' 
#' library(ggplot2)
#' library(govstyle)
#' library(dplyr)
#' 
#' df <- data.frame(
#'     group = c("apple", "apple", "apple", "pear", "pear", "pear"),
#'     year = c(2009, 2010, 2011, 2009, 2010, 2011),
#'     price = c(35, 37, 36, 24, 25, 28))
#' 
#' # Column chart
#' ggplot(df, aes(x = year, y = price, fill = group)) +
#'    geom_col(position = "dodge") +
#'    theme_gov() +
#'    scale_gov("fill")
#'
#' # Line chart
#' ggplot(df, aes(x = year, y = price, colour = group)) +
#'    geom_line(size = 2) +
#'    theme_gov() +
#'    scale_gov("colour")
#'
#' # Point chart, with filled points (black outline)
#' ggplot(df, aes(x = year, y = price, colour = group)) +
#'    geom_line() +
#'    geom_point(shape = 21, size = 4, stroke = 1, fill = "#ffffff") +
#'    theme_gov() +
#'    scale_gov("colour") +
#'    ylim(0,40)
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
