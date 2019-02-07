context('theme_gov() works with simple examples')

test_that(
  'theme_gov can replicate a simple rug and point plot',
  {
    p <- ggplot2::ggplot(
      data = mtcars,
      aes(
        x = mpg,
        y = wt
      )
    ) +
      geom_point() +
      theme_gov()

    vdiffr::expect_doppelganger("simple rug and point plot", p)
  }
)
