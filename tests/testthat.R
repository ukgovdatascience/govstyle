library(testthat)
library(govstyle)
library(ggplot2)
library(visualTest)
library(png)
# Install visualTest to allow checking against a reference plot.

devtools::install_github("MangoTheCat/visualTest")

test_check("govstyle")
