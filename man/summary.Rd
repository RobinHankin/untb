\name{summary.count}
\alias{summary.count}
\alias{summary.census}
\title{Summary methods for count and census objects}
\description{
Summary methods for count and census objects
}
\usage{
\method{summary}{count}(object, ...)
\method{summary}{census}(object, ...)
}
\arguments{
  \item{object}{Ecosystem object coerced to class count}
  \item{...}{Further arguments, currently ignored}
}
\details{
  Prints a summary of an ecosystem object.
}
\author{Robin K. S. Hankin}
\seealso{\code{\link{phi}}}
\examples{
data(ostracod)
summary(ostracod)
}
\keyword{math}
