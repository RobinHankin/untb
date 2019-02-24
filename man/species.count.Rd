\name{species.count}
\alias{species.count}
\alias{species.table}
\title{Ecosystem diagnostics for output of untb()}
\description{
Provides ecosystem diagnostics of species count datasets (species
counts and species tables), useful for the output of \code{untb()}
}
\usage{
species.count(x)
species.table(x)
}
\arguments{
  \item{x}{An integer matrix whose rows are integers
    representing the individuals' species}
}
\details{
  These functions takes a matrix argument, which is interpreted as the
  output of \code{untb(...,keep=TRUE)}.

  Function \code{species.count()} returns the total number of species
  present in each row (ie at each timestep).

  Function \code{species.table()} returns a matrix \eqn{M} where
  \code{M[i,j]}   column of the matrix is the abundance of species \eqn{j} 
  at time \code{i}.

}
\author{Robin K. S. Hankin}
\seealso{\code{\link{preston}}}
\examples{
a <- untb(start=rep(1,50), prob=0.01, gens=2000, keep=TRUE)

plot(species.count(a),type="b")
matplot(species.table(a),type="l",lty=1)

jj <- a[2000,]
print(jj)
as.count(jj)

}
\keyword{math}
