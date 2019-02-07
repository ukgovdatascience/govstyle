context('check_pal()')

test_that( 'check_pal() can replicate pie chart', {
    # Compare new figure with reference
    vdiffr::expect_doppelganger("Base graphics histogram", check_pal())
  }
)
