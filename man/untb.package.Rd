\name{untb-package}
\alias{untb-package}
\concept{Chinese restaurant}
\concept{Chinese restaurant process}
\docType{package}
\title{
  Unified neutral theory of biodiversity
}
\description{
  Numerical simulations, and visualizations, of the unified
  neutral theory of biodiversity
}
\details{

Package \code{untb} uses two classes of object to represent an
ecosystem: class \code{count} and class \code{census}.  In essence, a
\code{count} object is a table of species abundances and a \code{census}
object is a list of individuals.  See \code{?census} and \code{?count}
for more details.  Although objects of either class can be coerced to
the other, class \code{count} is the preferred form: it is a more
compact representation, especially for large ecosystems.

The package simulates neutral ecological drift using function
\code{untb()}.  Function \code{display.untb()} displays a semi-animated
graphic of an ecosystem undergoing neutral drift.
}
\author{
  Robin K. S. Hankin

  Maintainer: <hankin.robin@gmail.com>
}
\references{
  \itemize{
    \item S. P. Hubbell 2001.  \dQuote{The Unified Neutral Theory of
      Biodiversity}.   Princeton University Press.
    \item R. K. S. Hankin 2007.  \emph{Introducing \bold{untb}, an R
      package for simulating ecological drift under the unified neutral
      theory of biodiversity}.  Journal of Statistical Software, volume
    22, issue 12
  }
}
\keyword{math}
\examples{
a <- untb(start=rep(1,100),prob=0.005,gens=5000,keep=FALSE)
preston(a)
no.of.spp(a)

display.untb(start=rep(1,100),prob=0.1,gens=1000)

data(butterflies)
plot(butterflies,uncertainty=TRUE)

}
