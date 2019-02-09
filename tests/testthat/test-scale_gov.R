context("scale_gov() works as expected")

df <- data.frame(
    group = c("apple", "apple", "apple", "pear", "pear", "pear"),
    year = c(2009, 2010, 2011, 2009, 2010, 2011),
    price = c(35, 37, 36, 24, 25, 28))

test_that(
    "scale_gov colours column chart",
    {
    
    p <- ggplot(df, aes(x = year, y = price, fill = group)) +
        geom_col(position = "dodge") +
        theme_gov() +
        scale_gov("fill") +
        scale_x_continuous(breaks = c(2009, 2010, 2011)) +
        ylim(0,40)
    
    vdiffr::expect_doppelganger("scale gov column", p)

    }
)

test_that(
    "scale_gov colours line chart",
    {
        
        p <- ggplot(df, aes(x = year, y = price, colour = group)) +
            geom_line(size = 1.5) +
            theme_gov() +
            scale_gov("colour") +
            scale_x_continuous(breaks = c(2009, 2010, 2011)) +
            ylim(0,40)
        
        vdiffr::expect_doppelganger("scale gov line", p)
    }
)

test_that(
    "scale_gov colours point + line chart",
    {
        
        p <- ggplot(df, aes(x = year, y = price, colour = group)) +
            geom_line(size = 1.5) +
            geom_point(shape = 21, size = 4, stroke = 1.5, fill = "#ffffff") +
            theme_gov() +
            scale_gov("colour") +
            scale_x_continuous(breaks = c(2009, 2010, 2011)) +
            ylim(0,40)
        
        vdiffr::expect_doppelganger("scale gov points", p)

    }
)