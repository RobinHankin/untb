test_that("expected abundance", {
    tol <- 1e-6
    expect_true(all(abs(expected.abundance(2,1) - c(3/2, 1/2      ))) < tol)
    expect_true(all(abs(expected.abundance(3,1) - c(13/6, 4/6, 1/6))) < tol)
})
