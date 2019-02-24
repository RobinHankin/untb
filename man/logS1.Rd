\name{logS1}
\alias{logS1}
\alias{logS1vect}
\docType{data}
\title{logarithms of Stirling numbers of the first kind}
\description{
Natural logarithms of Stirling numbers of the first kind, used by
function \code{logkda.a11()} (dataset \code{logS1}) and function
\code{logkda.polyn()} (dataset \code{logS1vect}).
}
\usage{logS1}
\format{
Dataset \code{logS1} is a 100-by-100 matrix of logs of Stirling numbers
of the first kind; \code{logS1vect} is a vector of length 499500

}
\source{
Calculated by Maple
}
\seealso{\code{\link{etienne}}}
\examples{
exp(logS1[1:5,1:5])
}
\keyword{datasets}
