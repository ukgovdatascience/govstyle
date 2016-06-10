#    govstyle: Applying gov.uk based styles to R plots.
#    A package for the R statistical environment
#    Copyright (C) 2016  Matthew Upson <matthew.a.upson@gmail.com>
#
#    Permission is hereby granted, free of charge, to any person obtaining
#    a copy of this software and associated documentation files (the
#    "Software"), to deal in the Software without restriction, including
#    without limitation the rights to use, copy, modify, merge, publish,
#    distribute, sublicense, and/or sell copies of the Software, and to
#    permit persons to whom the Software is furnished to do so, subject to
#    the following conditions:
#
#    The above copyright notice and this permission notice shall be
#    included in all copies or substantial portions of the Software.
#
#    THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND,
#    EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF
#    MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND
#    NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE
#    LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION
#    OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION
#    WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
#
#' @title Show colours in gov.uk colour palette
#'
#' @description \code{\link{check_pal}} produces a bar chart showing the
#' gov.uk approved colours as available \url{here} and in the vector
#' \code{\link{gov_cols}}.
#'
#' @param x Either an integer in which case: display \code{gov_cols(1:x)}
#'  or a character or integer vector, in which case return \code{gov_cols(x)}.
#'  Can also be specified manually: see examples.
#'
#' @return A pie chart displaying the gov.uk approved colour scheme.
#'
#' @examples
#'
#' library(govstyle)
#'
#' ## Show a subset of gov.uk colours
#'
#' ## Choose n colours:
#'
#' check_pal(2)
#'
#' check_pal(4)
#'
#' ## Pick a range of colours
#'
#' check_pal(3:8)
#'
#' check_pal(c(1,10))
#'
#' ## Pick with character vector
#'
#' check_pal(
#' x = gov_cols[c("green", "grass_green")]
#' )
#'
#' @export

check_pal <- function(
  x = gov_cols
  ) {

  if (is.numeric(x)) {

    if (length(x) > 1) {

      x <- gov_cols[x]

    } else
    x <- gov_cols[1:x]
    }

  graphics::pie(
    rep(1, length(x)),
    col = x,
    labels = names(x))

}
