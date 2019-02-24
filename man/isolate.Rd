\name{isolate}
\alias{isolate}
\title{Randomly select a subset of an ecosystem}
\description{
  Return an ecosystem comprised of individuals randomly sampled from a
  metacommunity
}
\usage{
isolate(a, size = no.of.ind(a), replace = TRUE)
}
\arguments{
  \item{a}{Ecosystem data}
  \item{size}{Number of individuals to sample}
  \item{replace}{Boolean, with default \code{TRUE} meaning to
    sample individuals from the metacommunity with replacement and
    \code{FALSE} meaning to sample without replacement.  See details
    section}
}
\details{
Setting argument \code{replace} to default \code{TRUE} is much
faster.

The canonical example is given by Leigh et al 1993, in which islands
were isolated from the mainland by rising waters.  The trees on the
islands were held to be a randomly drawn sample from the metacommunity.

Given that the usual usage of this function is to generate a plausible
ecosystem under such a scenario, one would have a hard time justifying
the use of \code{replace=TRUE} as it allows (for example) a singleton
metacommunity species to have multiple representatives in the returned
ecosystem.

However, for large metacommunities and small subsamples, the distinction
between \code{replace=TRUE} and \code{replace=FALSE} is small.
}
\value{
Returns a \code{count} object
}
\references{E. G. Leigh and others 1993. \dQuote{The decline of tree
    diversity on newly isolated tropical islands: a test of a null
    hypothesis and some implications}.  Evolutionary Ecology, 7:76-102}
\author{Robin K. S. Hankin}
\note{
If \code{replace=FALSE}, the returned count object includes extinct
species.  Use \code{extant(isolate(...))} to return only extant species
}
\examples{
a <- rand.neutral(1000,10)
no.of.spp(a)
no.of.spp(isolate(a))
}
\keyword{math}
\keyword{math}
