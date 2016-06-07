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
#' @title A vector of the gov.uk approved colours
#'
#' @description \code{\link{gov_cols}} Provides a vector of named colours
#' from the approved gov.uk colour list available \url{here}.
#'
#' @return A list of named hexadecimal colours.
#'
#' @examples
#'
#' library(ggplot2)
#' library(govstyle)
#' library(dplyr)
#'
#' mtcars %>%
#'    ggplot +
#'    aes(
#'    x = mpg,
#'    y = wt
#'    ) +
#'    geom_point(
#'    colour = gov_cols["green"]
#'    ) +
#'    theme_gov()
#'
#' @export
#'

gov_cols <- c(
  purple      = "#2E358B",
  pink        = "#D53880",
  mellow_red  = "#DF3034",
  yellow      = "#FFBF47",
  turquoise   = "#28A197",
  mauve       = "#6F72AF",
  baby_pink   = "#F499BE",
  orange      = "#F47738",
  green       = "#006435",
  light_blue  = "#2B8CC4",
  fuschia     = "#912B88",
  red         = "#B10E1E",
  brown       = "#B58840",
  grass_green = "#85994B"
)
