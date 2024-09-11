test_that("methods for logkda() should agree", {
    tol <- 1e-6
    a <- count(c(dogs=7,pigs=3,crabs=1,hogs=1,slugs=1))
    out <- list()
    out <- c(out, list(logkda(a,method = "R")))
    out <- c(out, list(logkda(a,method = "polyn")))
    out <- c(out, list(logkda.R(a,use.brob = TRUE)))
    out <- c(out, list(logkda.R(a,use.brob = FALSE)))
#   out <- c(out, list(logkda(a,method = "pari")))

    m <- rowMeans(do.call("cbind",out))
    for(i in seq_along(out)){
        expect_true(all(abs(m - out[[i]]) < tol))
    }

})
