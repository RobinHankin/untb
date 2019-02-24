\name{expected.abundance}
\alias{expected.abundance}
\title{Expected abundances under the neutral model}
\description{
Returns a vector of expected abundances of the i-th ranked species under
the neutral model
}
\usage{
expected.abundance(J, theta)
}
\arguments{
  \item{J}{Size of the ecosystem}
  \item{theta}{Biodiversity parameter}
}
\value{
  Returns an object of class \code{count}.  Species names (capital
  letters) are assigned by function \code{count()}. 
}
\references{
  S. P. Hubbell 2001.  \dQuote{The Unified Neutral Theory of Biodiversity}.
  Princeton University Press.
}
\author{Robin K. S. Hankin}
\note{
  Function is very slow even for moderate J. 
}
\seealso{\code{\link{rand.neutral}},\code{\link{count}}}
\examples{
expected.abundance(J=10,theta=3)

sum(expected.abundance(J=10,theta=3))  #should be 10
}
\keyword{math}
