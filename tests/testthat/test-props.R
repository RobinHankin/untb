test_that("summary statistics", {
    tol <- 1e-6
    a <- count(c(dogs=7, pigs=3, crabs=1, hogs=1, slugs=1, rats=0))
    expect_true(no.of.spp(a) == 5)
    expect_true(no.of.spp(a,include.extinct = TRUE) == 6)
    expect_true(no.of.spp(a,include.extinct = FALSE) == 5)
    expect_true(no.of.extinct(a) == 1)
    expect_true(no.of.ind(a) == 13)
    
    expect_true(abs(optimal.theta(a) - 2.49) < 0.05)
    expect_true(abs(optimal.prob(a) - 0.096) < 0.01)
    
})
