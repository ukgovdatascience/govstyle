context('theme_gov() works with complex examples')

test_that(
  'theme_gov can replicate a complex rug and point plot',
  {
    p <- ggplot2::ggplot(mtcars) +
      ggplot2::aes_(
        ~wt,
        ~mpg,
        colour = ~factor(cyl),
        group = ~cyl) +
      ggplot2::geom_rug() +
      ggplot2::geom_point() +
      govstyle::theme_gov(base_colour = 'black') +
      ggplot2::scale_colour_manual(
        values = unname(govstyle::gov_cols[c('red', 'purple','green')])
      ) +
      ggplot2::theme(legend.position='bottom') +
      ggplot2::ylab('Miles per gallon (mpg)') +
      ggplot2::ylab('Weight (1000 lbs)')

    vdiffr::expect_doppelganger("complex rug and point plot", p)
  }
)

test_that(
  'theme_gov can replicate a geom_path plot',
  {
    p <- ggplot2::ggplot(GVA) +
      ggplot2::aes(
        y = GVA,
        x = year,
        colour = sector
      ) +
      ggplot2::geom_path() +
      govstyle::theme_gov()

    vdiffr::expect_doppelganger("geom_path plot", p)
  }
)
