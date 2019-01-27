context("scale_gov() works as expected")

df <- data.frame(
    group = c("apple", "apple", "apple", "pear", "pear", "pear"),
    year = c(2009, 2010, 2011, 2009, 2010, 2011),
    price = c(35, 37, 36, 24, 25, 28))

test_that(
    "scale_gov colours column chart",
    {
        # Check whether comparison file exists, and delete if so
    
    test_png <- file.path('figures', 'test-scale_gov-col-test.png')
    ref_png <- file.path('figures', 'test-scale_gov-col-reference.png')
    
    if (file.exists(test_png)) file.remove(test_png)
    
    test_that(
        'test_png does not already exist',
        {
            expect_false(file.exists(test_png))
        }
    )
    
    # Create a new figure as png
    
    p <- ggplot(df, aes(x = year, y = price, fill = group)) +
        geom_col(position = "dodge") +
        theme_gov() +
        scale_gov("fill") +
        scale_x_continuous(breaks = c(2009, 2010, 2011)) +
        ylim(0,40)
    
    ggplot2::ggsave(
        width = 5,
        height = 5,
        filename = test_png,
        plot = p
    )
    
    # Check that the new file was created
    
    test_that(
        'test_png was created',
        {
            expect_true(file.exists(test_png))
        }
    )
    
    visualTest::isSimilar(
        file = ref_png,
        fingerprint = visualTest::getFingerprint(
            file = test_png
        ),
        threshold = 1e-3
    )
    }
)

test_that(
    "scale_gov colours line chart",
    {
        # Check whether comparison file exists, and delete if so
        
        test_png <- file.path('figures', 'test-scale_gov-line-test.png')
        ref_png <- file.path('figures', 'test-scale_gov-line-reference.png')
        
        if (file.exists(test_png)) file.remove(test_png)
        
        test_that(
            'test_png does not already exist',
            {
                expect_false(file.exists(test_png))
            }
        )
        
        # Create a new figure as png
        
        p <- ggplot(df, aes(x = year, y = price, colour = group)) +
            geom_line(size = 1.5) +
            theme_gov() +
            scale_gov("colour") +
            scale_x_continuous(breaks = c(2009, 2010, 2011)) +
            ylim(0,40)
        
        ggplot2::ggsave(
            width = 5,
            height = 5,
            filename = test_png,
            plot = p
        )
        
        # Check that the new file was created
        
        test_that(
            'test_png was created',
            {
                expect_true(file.exists(test_png))
            }
        )
        
        visualTest::isSimilar(
            file = ref_png,
            fingerprint = visualTest::getFingerprint(
                file = test_png
            ),
            threshold = 1e-3
        )
    }
)

test_that(
    "scale_gov colours line chart",
    {
        # Check whether comparison file exists, and delete if so
        
        test_png <- file.path('figures', 'test-scale_gov-point-test.png')
        ref_png <- file.path('figures', 'test-scale_gov-point-reference.png')
        
        if (file.exists(test_png)) file.remove(test_png)
        
        test_that(
            'test_png does not already exist',
            {
                expect_false(file.exists(test_png))
            }
        )
        
        # Create a new figure as png
        
        p <- ggplot(df, aes(x = year, y = price, colour = group)) +
            geom_line(size = 1.5) +
            geom_point(shape = 21, size = 4, stroke = 1.5, fill = "#ffffff") +
            theme_gov() +
            scale_gov("colour") +
            scale_x_continuous(breaks = c(2009, 2010, 2011)) +
            ylim(0,40)
        
        ggplot2::ggsave(
            width = 5,
            height = 5,
            filename = test_png,
            plot = p
        )
        
        # Check that the new file was created
        
        test_that(
            'test_png was created',
            {
                expect_true(file.exists(test_png))
            }
        )
        
        visualTest::isSimilar(
            file = ref_png,
            fingerprint = visualTest::getFingerprint(
                file = test_png
            ),
            threshold = 1e-3
        )
    }
)