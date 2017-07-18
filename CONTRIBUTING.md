# CONTRIBUTING

## Packrat

This project uses [packrat](https://rstudio.github.io/packrat/) to control the development environment. If you clone this repository, and open it with RStudio, the .Rprofile will launch a packrat bootstrap, during which all the versions of packages shipped in packrat/src will be installed into a project specific library.

## Pull Requests

If you wish to make a pull request, please do so using the library of packages shipped in packrat/src. The reasons for this is that this package has been written for government users, many of whom have restrictions on their IT, and may not have the most up-to-date versions of R, and other key R packages. Using the versions of packages shipped with packrat helps to ensure that the package is backwardly compatible.

Note that continuous integration testing is performed using the packrat library, which may account for test failures if PRs are developed using different package versions.
