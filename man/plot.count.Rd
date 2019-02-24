\name{plot.count}
\alias{plot.count}
\alias{plot.census}
\title{Abundance curves}
\description{Plot the ranked abundance curve}
\usage{
\method{plot}{count}(x, uncertainty = FALSE, expectation = FALSE, theta = NULL, n = 10, ...)
\method{plot}{census}(x, uncertainty = FALSE, expectation = FALSE, theta = NULL, n = 10, ...)
}
\arguments{
  \item{x}{Ecosystem object, coerced to class count}
  \item{uncertainty}{Boolean,
    with \code{TRUE} meaning to show bootstrapped estimates for the
    species diversity curve, and default \code{FALSE} meaning to omit
    this}
  \item{expectation}{Boolean,
    with \code{TRUE} meaning to plot expected abundances, and default \code{FALSE}
    meaning not to plot them.  \strong{Warning} this option takes a
    loooong time to run, even for moderate values of \eqn{J}}
  \item{theta}{Fundamenal biodiversity number used if argument
    \code{uncertainty} or \code{expectation} are \code{TRUE}.  Default
    value of \code{NULL} means to use the maximum likelihood estimate
    returned by function \code{optimal.theta()}}    
  \item{n}{Number of bootstrapped estimates to plot}
  \item{\dots}{Extra parameters passed to \code{untb()}}
}
\details{
Plots a ranked abundance curve, optionally with parametrically resampled
datasets showing the uncertainties}
\note{
If using \code{expectation}, it's usually necessary to set \code{ylim}
and possibly \code{xlim} manually.
}
\author{Robin K. S. Hankin}
\examples{
data(copepod)
plot(copepod)

data(butterflies)
plot(butterflies,uncertainty=TRUE)

x <- count(c(pigs=1, dogs=1, cats=2, frogs=3, bats=5, slugs=8))
plot(x,expectation=TRUE,ylim=c(0.5,10))

}
\keyword{math}
