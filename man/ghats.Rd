\name{ghats}
\alias{ghats}
\docType{data}
\title{Tree counts in 1-ha plots from the Western Ghats mountains (South India)}
\description{
Tree species counts are given in 50 one-hectare sampling plots (species
by sample matrix).  This only includes trees over 10 cm dbh (diameter at
breast height) and species labels (row names) are numeric.
}
\usage{data(ghats)}
\format{
  Data frame displaying 304 species counts over 50 one-hectare plots.
}
\source{
  Ecological Archives E088-149-A1.
  \url{http://www.esapubs.org/Archive/ecol/E088/149/appendix-A.htm}
}
\references{
  Francois Munoz, Pierre Couteron, B. R. Ramesh, and Rampal S. Etienne
  2007.  \dQuote{Estimating parameters of neutral communities: from one
    single large to several small samples.}  \emph{Ecology} 88(10):2482-2488.
}
\examples{
data(ghats)
# Rank-abundance picture of plot 1 (column 1 in ghats)
plot(extant(count(ghats[,1])))

#histogram of optimal theta across the 50 plots:
hist(apply(ghats,2,optimal.theta),col='gray')

}   
\keyword{datasets}
