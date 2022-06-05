\name{rand.neutral}
\alias{rand.neutral}
\title{Random neutral ecosystem}
\description{
Given the size of the metacommunity \eqn{J}, and the fundamental
biodiversity number \eqn{\theta}{theta}, generate an object of class
\code{count} using a stochastic mechanism consistent with the
neutral theory.
}
\usage{
rand.neutral(J, theta=NULL, prob.of.mutate=NULL, string = NULL, pad = FALSE)
}
\arguments{
  \item{J}{Size of metacommunity}
  \item{theta}{Fundamental biodiversity number \eqn{\theta}{theta}.
    User must supply exactly one of \code{theta} and
    \code{prob.of.mutate}.}
  \item{prob.of.mutate}{Probability of mutation \eqn{\nu}{nu}:
    \eqn{\theta=2J\nu}{theta=2*J*nu}.}
  \item{string}{String to add to species names.  By default (ie
    \code{string} being \code{NULL}), species are named \dQuote{1},
    \dQuote{2},\eqn{\ldots}{...}.   Argument \code{string} supplies a
    prefix for these species names; a good one to use is
    \dQuote{\code{spp.}}.  This argument is useful because printing a
    \code{count} object can be confusing if the species names are
    all integers.}
  \item{pad}{Boolean, with default \code{FALSE} meaning to return a
    \code{count} object having only extant species, and \code{TRUE}
    meaning to pad the count with extinct species to \code{J} species.
    Use this when a vector of length \code{J} is required consistently
    (see examples section).}
   
}
\details{
Uses the simulation method on page 289 of Hubbell (2001).
}
\note{
  If \code{pad} is \code{TRUE}, and you set \code{string} to
  \dQuote{\code{extinct}}, things will break.
}
\references{
  S. P. Hubbell 2001.  \dQuote{The Unified Neutral Theory of Biodiversity}.
  Princeton University Press.
}
\author{Robin K. S. Hankin}
\seealso{\code{\link{untb}}}
\examples{
rand.neutral(1000, 9)
rand.neutral(1000, 9, string="spp.")

data(butterflies)
rand.neutral(no.of.ind(butterflies), optimal.theta(butterflies),string="spp.")


# what is the distribution of abundance of the second ranked species if
# J=10, theta=0.7?
plot(table(replicate(100,rand.neutral(10,theta=0.7,pad=TRUE)[2])))

}

\keyword{math}
