\name{+.count}
\alias{+.count}
\alias{+.census}
\title{Add two count objects}
\description{
Adds two count objects
}
\usage{
\method{+}{count}(a,b)
\method{+}{census}(a,b)
}
\arguments{
  \item{a,b}{objects of class \code{count}}
}
\details{

  Consider count objects \code{a} and \code{b}.  Then \code{a+b} is a
  count object that records the number of each species in \code{a} and
  \code{b} combined.  It is as though the organisms in the surveys were
  pooled.

  Census objects are coerced to count objects, added, then the result
  coerced to a count object.

  The operation is commutative and associative.
}  
\author{Robin K. S. Hankin, based on an R-help tip from Gabor Grothendiek}
\examples{
a <- count(c(dogs=4,pigs=0,slugs=5))
b <- count(c(slugs=4,hogs=1,frogs=19))

a+b

}
\keyword{math}
