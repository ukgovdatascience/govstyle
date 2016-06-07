#context("theme_gov")

test_that(
  "theme_gov can be applied to a plot",
  {

    p <- ggplot(
      data = mtcars,
      aes(
        x = mpg,
        y = wt
        )
      ) +
      geom_point() +
      theme_gov()

    ggsave(
      width = 5,
      height = 5,
      filename = "test-theme_gov-test.png",
      plot = p
      )

    isSimilar(
      file = "test-theme_gov-reference.png",
      fingerprint = getFingerprint(
        file = "test-theme_gov-test.png"
        ),
      threshold = 1e-3
      )

  }
  )


