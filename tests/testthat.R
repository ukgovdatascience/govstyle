library(testthat)
library("govstyle")
# Install visualTest to allow checking against a reference plot.

devtools::install_github("MangoTheCat/visualTest")

test_check("govstyle")
