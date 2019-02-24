\name{print.preston}
\alias{print.preston}
\alias{plot.preston}
\title{Print and plot objects of class Preston}
\description{
  Print and plot objects of class Preston
}
\usage{
\method{print}{preston}(x, ...)
\method{plot}{preston}(x, ...)
}
\arguments{
  \item{x}{Object of class \dQuote{preston}}
  \item{\dots}{further arguments passed to \code{print()} after class
    reset} 
}
\author{Robin K. S. Hankin}
\note{
  Intended to work with the output of function \code{preston()}.

  See the vignette for how to annotate a Preston plot.
}
\seealso{\code{\link{preston}}}
\examples{
data(butterflies)
print(preston(butterflies))
}
\keyword{math}
