\name{fisher}
\alias{fisher}
\alias{fisher.ecosystem}
\alias{fishers.alpha}
\title{Various functionality to implement Fisher's logseries}
\description{
Various functions connected to Fisher's logseries including creation of
synthetic datasets and estimation of Fisher's alpha
}
\usage{
fishers.alpha(N, S, give=FALSE)
fisher.ecosystem(N, S, nmax, alpha=NULL, c=0)
}
\arguments{
  \item{N}{Size of the ecosystem.  In the case of
    \code{fisher.ecosystem()}, the expected size of the ecosystem}
  \item{S}{Number of species in ecosystem}
  \item{alpha}{In function \code{fisher.ecosystem()}, Fisher's
    \eqn{\alpha}{alpha}.   If not supplied, it will be calculated from
    \code{N} and \code{S}.}
  \item{give}{In function \code{fishers.alpha()}, Boolean variable with
    default \code{FALSE} meaning to return alpha, and \code{TRUE}
    meaning to return a list containing \code{x} and \code{alpha}.}
  \item{nmax}{In function \code{fisher.ecosystem()}, the maximum number
	of species abundance classes to consider}
  \item{c}{In function \code{fisher.ecosystem()}, the rare species
      advantage term}
}
\details{
Function \code{fishers.alpha()} solves for \eqn{\alpha}{alpha} given
  \eqn{N} and \eqn{S}, as per Fisher's table 9, p55.

  Given \eqn{N} and \eqn{S} (or \eqn{\alpha}{alpha}), function
  \code{fisher.ecosystem()} generates a Fisherian ecosystem
  with expected size \eqn{N} and expected species count \eqn{S}.  
}
\references{
R. A. Fisher and A. S. Corbet and C. B. Williams 1943. \dQuote{The
relation between the number of species and the number of individuals in
a random sample of an animal population}, \emph{Journal of Animal
Ecology}, volume 12, pp 42--58
  }
\author{Robin K. S. Hankin}
\examples{
 fishers.alpha(N=100000,S=100)
#compare the Table value:
  100000/10^3.95991
}
\keyword{math}
