\name{no.of.ind}
\alias{no.of.ind}
\alias{no.of.spp}
\alias{no.of.singletons}
\alias{no.of.extinct}
\alias{maximal.abundance}
\alias{singletons}
\alias{extinct}
\alias{extant}
\title{Ecosystem diagnostics}
\description{
Ecosystem diagnostics such as species count, individual count, number of
singletons, etc
}
\usage{
no.of.ind(x)
no.of.spp(x, include.extinct=FALSE)
no.of.singletons(x)
no.of.extinct(x)
maximal.abundance(x)
singletons(x)
extinct(x)
extant(x)
}
\arguments{
  \item{x}{Ecosystem vector; is coerced to class \code{count}}
  \item{include.extinct}{In function \code{no.of.spp()}, Boolean
    argument with \code{TRUE} meaning to include extinct species (ie
    species with an abundance of zero), and default \code{FALSE}
    meaning to return the number of extant species}
}
\details{
  \itemize{
    \item
    Function \code{no.of.spp()} returns the number of species in an
    ecosystem object, treating extinct species in line with argument
    \code{include.extinct}
    \item
    Function \code{no.of.ind()} returns the number of individuals
    \item
    Function \code{no.of.singletons()} returns the number of singletons
    \item
    Function \code{no.of.extinct()} returns the number of extinct species
    \item
    Function \code{maximal.abundance()} returns the abundance of the most
    abundant species
    \item
    Function \code{singletons()} returns a \code{count} object containing
    only the singletons: each abundance is one
    \item
    Function \code{extinct()} returns a \code{count} object containing
    only the extinct species: each abundance is zero
    \item
    Function \code{extant()} returns a \code{count} object containing
    only the extant species: each abundance is greater than zero
  }
}
\references{
  S. P. Hubbell.  \dQuote{The Unified Neutral Theory of Biodiversity}.
  Princeton University Press, 2001.
}
\author{Robin K. S. Hankin}
\note{
  It is sometimes useful to include species with an abundance of
  zero when, for example, taking a single row of the Saunders dataframe.
  
  The default for \code{include.extinct} is \code{FALSE} because this is
  required for (eg) \code{optimal.theta()}
}
\examples{
data(butterflies)
no.of.spp(butterflies)
no.of.ind(butterflies)

jj1 <- count(c(dogs=7,pigs=3,crabs=0,slugs=1))
jj2 <- count(c(squid=0,dogs=3,bugs=0))
jj3 <- count(c(bugs=3,rats=0,crabs=3,cats=0))

extinct(jj1 + jj2) 
extinct(jj3)               #rats and cats
extant(jj3)                #bugs and crabs

singletons(jj1)
singletons(jj2)           # empty 
singletons(jj1 + jj3)     # slugs

}
\keyword{math}
