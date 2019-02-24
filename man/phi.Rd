\name{phi}
\alias{phi}
\alias{unphi}
\title{Hubbell's phi}
\description{
Hubbell's phi: counts of species abundances 
}
\usage{
phi(x,addnames=TRUE)
unphi(freq, string="spp")
}
\arguments{
  \item{x}{Ecosystem vector; is coerced to class \code{count}}
  \item{addnames}{Boolean with default
    \code{TRUE} meaning to set the name of the \eqn{i}th element
    to the species with abundance \eqn{i} if unique.  Set to
    \code{FALSE} to suppress this, which is useful if the species names
    are long}
  \item{freq}{Frequency data (eg as returned by \code{phi()})}
  \item{string}{Character; species name to prepend (using \code{NULL}
    can be confusing)}
}
\details{
  Function \code{phi()} coerces its argument to a \code{count} object and
  by default returns a named vector whose \eqn{i}th element is the
  number of species with \eqn{i} individuals.  The name of the
  \eqn{i}th element is the species with abundance \eqn{i} if unique
  and empty otherwise.  Function \code{phi()} is used by
  \code{theta.prob()}.

  Function \code{unphi()} does the reverse: given the output of
  \code{phi()}, it returns a corresponding \code{count} object.  Note that
  species names are lost.
}
\references{
  S. P. Hubbell 2001.  \dQuote{The Unified Neutral Theory of Biodiversity}.
  Princeton University Press.
}
\author{Robin K. S. Hankin}
\note{The code for setting the names is a dog's breakfast}
\seealso{\code{\link{preston}}}
\examples{

jj <- c(rep("oak",5) ,rep("ash",2),rep("elm",3),"pine","tea","yew")
a <- as.count(jj)

phi(a)
unphi(phi(a))   #should match 'a' except for species names (which are lost)

data(butterflies)
phi(butterflies,add=FALSE)

summary(unphi(phi(butterflies)))  #should match 'summary(butterflies)'

}
\keyword{math}
