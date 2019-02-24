\name{display.untb}
\alias{display.untb}
\title{Animation of neutral ecological drift}
\description{
Displays an ongoing simulation of neutral ecological drift using nice
colours and a simple animation technique
}
\usage{
display.untb(start, gens=100, prob.of.mutate = 0, cex=3, individually
= TRUE, ask = FALSE, flash = FALSE, delay = 0, cols=NULL, ...)
}
\arguments{
  \item{start}{Starting ecosystem; coerced to class census.  Usually,
    pass an object of class count; see examples.  To start
    with a monoculture of size 10, use \code{start=rep(1,10)} and to
    start with a system of maximal diversity (ie all singletons), use
    \code{start=1:10}}
  \item{gens}{Number of generations to simulate}
  \item{prob.of.mutate}{Probability of mutation.  The default of zero
    corresponds to \eqn{\theta=0}{theta=0} and this means that any
    ecosystem will eventually become a monoculture (it is particularly
    instructive to watch this happen, especially with a starting
    ecosystem of maximal diversity\eqn{\mbox{---}}{: }but be warned,
    this can take a long time, especially for ecosystems with a large
    number of individuals).  Nonzero values mean that a nontrivial
    dominance-diversity curve will eventuate, although this too can take
    a long time to happen.  Try a nonzero value of \code{prob.of.mutate}
    with monoculture start (use \code{individually=FALSE} for such
    experiments)}
  \item{cex}{The size of the dots used for plotting, defaulting to 3}
  \item{individually}{Boolean, with default \code{TRUE} meaning
    that a timestep means the death of a single individual and the
    simultaneous birth of a new individual; and \code{FALSE} meaning
    that a timestep refers to every individual in the system}
  \item{ask}{Boolean, with default \code{FALSE} meaning to display the
    generations autonomously, and \code{TRUE} meaning to wait for the
    user to hit the \dQuote{return} before proceeding}
  \item{flash}{Boolean, with \code{TRUE} meaning to indicate the site
    of a death/birth with a flashing ring; and default \code{FALSE}
    meaning to omit the flashing ring.  Use \code{TRUE} for pedagogic
    purposes, possibly with \code{ask} set to \code{TRUE}, or a nonzero
    \code{delay}. This option only kicks in if \code{individually} is
    \code{TRUE}}
  \item{delay}{Time delay between generations in seconds; meaningful
    whatever the value of \code{flash} and \code{individually}}
  \item{cols}{A vector of colours with default \code{NULL} meaning to
    choose them randomly.  Useful for printing stills from a
    movie}
  \item{...}{Further arguments passed to \code{plot()} and \code{points()}}
}
\references{
  S. P. Hubbell 2001.  \dQuote{The Unified Neutral Theory of Biodiversity}.
  Princeton University Press.
}
\author{Robin K. S. Hankin}
\examples{

data(butterflies)
display.untb(start=butterflies,prob=0, gens=1e2)
}
\keyword{math}
