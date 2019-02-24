\name{alonso}
\alias{alonso.eqn6}
\alias{alonso.eqn11}
\alias{alonso.eqn12}
\title{Various functions from Alonso and McKane 2004}
\description{
  Various functions from Alonso and McKane 2004 dealing with analytical
  solutions of a neutral model of biodiversity
}
\usage{
alonso.eqn6(JM, n, theta)
alonso.eqn11(J, n, theta)
alonso.eqn12(J, n, theta, give=FALSE)
}
\arguments{
  \item{J,JM}{Size of the community and metacommunity respectively}
  \item{n}{Abundance}
  \item{theta}{Biodiversity constant}
  \item{give}{In function \code{alonso.eqn12()}, Boolean with default
    \code{FALSE} meaning to return the value of the integral, and
    \code{TRUE} meaning to return the full output of \code{integrate()}}
}
\details{
  Notation follows that of Alonso and McKane 2004
}
\references{D. Alonso and A. J. McKane 2004.  \dQuote{Sampling
  Hubbell's neutral model of biodiversity}, Ecology Letters 7:901-910} 
\author{Robin K. S. Hankin}
\note{Function \code{alonso.eqn6()} is identical to function
  \code{vallade.eqn5()}
  }
\examples{
J <- 100
plot(1:J , alonso.eqn11(J,n=1:J,
theta=5),log="y",type="l",xlab="n",ylab=expression(S(n)),main="Eqns
11 and 12 of Alonso and McKane")
points(1:J , alonso.eqn12(J,n=1:J, theta=5),type="l",lty=2)
legend("topright",legend=c("equation 11","equation 12"),lty=1:2)
}
\keyword{math}
