test_that("plots", {
    a <- count(c(dogs=7, pigs=3, crabs=1, hogs=1, slugs=1))

    p <- function(...){plot(a)}
    expect_doppelganger("dominance diversity curve", p)
})
