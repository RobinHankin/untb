test_that("methods for logkda() should agree", {
    tol <- 1e-6
    a <- count(c(dogs=7,pigs=3,crabs=1,hogs=1,slugs=1))
    out <- list()
    out[[1]] <- logkda(a,method = "pari")
    out[[2]] <- logkda(a,method = "R")
    out[[3]] <- logkda(a,method = "polyn")
    out[[4]] <- logkda.R(a,use.brob = TRUE)
    out[[5]] <- logkda.R(a,use.brob = FALSE)

    m <- rowMeans(cbind(out[[1]],out[[2]],out[[3]],out[[4]],out[[5]]))
    for(i in 1:5){
        expect_true(all(abs(m - out[[i]])) < tol)
    }


})
