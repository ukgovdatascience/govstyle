#context("check_pal")

test_that(
  "theme_gov can be applied to a plot",
  {

    # Install visualTest to allow checking against a reference plot.

    library(visualTest)
    library(png)

    png(
      file = "test-check_pal_test.png",
      width = 480,
      height = 480
      )
    check_pal()
    dev.off()

    isSimilar(
      file = "test-check_pal_reference.png",
      fingerprint = getFingerprint(
        file = "test-check_pal_test.png"
        ),
      threshold = 1e-3
      )

  }
  )


