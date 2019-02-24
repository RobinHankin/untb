\name{volkov}
\alias{volkov}
\title{Expected frequency of species}
\description{

  Given a community size, biodiversity parameter \eqn{\theta}{theta},
  and an immigration rate \eqn{m}, returns the expected frequency of
  species with \eqn{n}  individuals, for \eqn{0<n\leq J}{0<n<=J}.
}
\usage{
volkov(J, params, bins = FALSE, give = FALSE)
}
\arguments{
  \item{J}{Size of community}
  \item{params}{A two-element vector with first element interpreted as
    theta, the Fundamental biodiversity parameter and the second, m,
    interpreted as the probability of immigration.  This argument will
    accept the output of \code{optimal.params()}}
  \item{bins}{Boolean, with default \code{FALSE} meaning to return the
    expected number of species with \eqn{1,2,\ldots,J}{1,2,...J}
    individuals, and \code{FALSE} meaning to return the binned total,
    using a Preston-like binning system as used in \code{preston()}}
  \item{give}{Boolean, with \code{TRUE} meaning to return \emph{all} the
    output of \code{integrate()}, and default \code{FALSE} meaning to
    return just the value of the integral}
}
\value{
Returns an object of class \dQuote{phi}.
}
\references{
I. Volkov and others 2003. \dQuote{Neutral theory and relative species
  abundance in ecology}.  \emph{Nature}, volume 424, number 28.
  }
\author{Robin K. S. Hankin}
\note{
  The method used is slightly inefficient: the terms to the left of the
  integral sign [in Volkov's equation 7] are integrated and this is,
  strictly, unnecessary as it is not a function of \eqn{y}.  However,
  taking advantage of this fact results in messy code.
  
}
\seealso{\code{\link{phi}},\code{\link{preston}}}
\examples{
\dontrun{
  volkov(J=21457,c(theta=47.226, m=0.1)) # Example in figure 1
} 

volkov(J=20,params=c(theta=1,m=0.4))

 data(butterflies)
 r <- plot(preston(butterflies,n=9,orig=TRUE))

 \dontrun{  jj <- optimal.params(butterflies)  }  # needs PARI/GP

 jj <- c(9.99980936124759, 0.991791987473506)

 points(r,volkov(no.of.ind(butterflies), jj, bins=TRUE),type="b")
 
}
\keyword{math}
