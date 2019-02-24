\name{untb}
\alias{untb}
\alias{select}
\alias{select.immigrate}
\alias{select.mutate}
\title{Ecological drift simulation under the Unified Neutral
  Theory of Biodiversity}
\description{
Simulates ecological drift under the UNTB.  Function \code{untb()}
carries out the simulation; function \code{select()}
carries out a single generational step.
}
\usage{
untb(start, prob=0, D=1, gens=150, keep=FALSE, meta=NULL)
select(a, D=length(a), prob=0, meta=NULL)
select.mutate(a, D=length(a), prob.of.mutate=0)
select.immigrate(a, D=length(a), prob.of.immigrate=0, meta)
}
\arguments{
  \item{a, start}{Starting ecosystem; coerced to class census.  Usually,
    pass an object of class count; see examples.  To start
    with a monoculture of size 10, use \code{start=rep(1,10)} and to
    use \code{start=1:10}.}
  \item{prob, prob.of.immigrate, prob.of.mutate}{Probability of
    \dQuote{new} organism not being a descendent of an existing
    individual}
  \item{D}{Number of organisms that die in each timestep}
  \item{gens}{Number of generations to simulate}
  \item{keep}{In function \code{untb()} Boolean with default
    \code{FALSE} meaning to return the system at the end of the
    simulation and \code{TRUE} meaning to return a matrix whose rows are
    the ecosystem at successive times}

  \item{meta}{In function \code{untb()}, the metacommunity; coerced to a
    \code{count} object.  Default of \code{NULL} means to use a
    \dQuote{greedy} system in which every mutation gives rise to a new,
    previously unencountered species.  This would correspond to an
    infinitely large, infinitely diverse, Hubbellian ecosystem (which is
    not too ridiculous an assumption for a small island near a large
    diverse mainland).

    In function \code{select.immigrate()}, a simplified representation
    of a metacommunity.
  }
}
\details{
  Functions \code{select.immigrate()} and \code{select.mutate()} are not
  really intended for the end user; they use computationally efficient
  (and opaque) integer arithmetic.
}
\references{
  S. P. Hubbell 2001.  \dQuote{The Unified Neutral Theory of Biodiversity}.
  Princeton University Press.
}
\author{Robin K. S. Hankin}
\examples{

data(butterflies)
untb(start=butterflies, prob=0, gens=100)

a <- untb(start=1:10,prob=0.005, gens=1000,keep=TRUE)
plot(species.count(a),type="b")
matplot(species.table(a),type="l",lty=1)

}
\keyword{math}
