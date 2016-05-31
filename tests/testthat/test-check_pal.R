#context("check_pal")

test_that(
  "theme_gov can be applied to a plot",
  {

    # Install visualTest to allow checking against a reference plot.

    library(visualTest)
    library(png)

    png(
      file = "./tests/testthat/test-check_pal_test.png",
      width = 480,
      height = 480
      )
    check_pal()
    dev.off()

    isSimilar(
      file = "tests/testthat/test-check_pal_reference.png",
      fingerprint = getFingerprint(
        file = "./tests/testthat/test-check_pal_test.png"
        ),
      threshold = 1e-3
      )

  }
  )


