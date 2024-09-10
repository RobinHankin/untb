test_that("methods for logkda() should agree", {
    tol <- 1e-6
    a <- count(c(dogs=7,pigs=3,crabs=1,hogs=1,slugs=1))
    out <- list()
    out[[1]] <- logkda(a,method = "R")
    out[[2]] <- logkda(a,method = "polyn")
    out[[3]] <- logkda.R(a,use.brob = TRUE)
    out[[4]] <- logkda.R(a,use.brob = FALSE)
#   out[[5]] <- logkda(a,method = "pari")

    m <- rowMeans(cbind(out[[1]],out[[2]],out[[3]],out[[4]]))
    for(i in 1:4){
        expect_true(all(abs(m - out[[i]])) < tol)
    }


})
