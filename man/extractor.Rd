\name{extractor}
\alias{extractor}
\title{Extract rows of a database in count form}
\description{
  Extracts rows of a data frame and, if there is one row only, coerces
  to a count object, preserving the species names
}
\usage{
extractor(x, index)
}
\arguments{
  \item{x}{A data frame with column headings being species names}
  \item{index}{A vector of indices to extract}
}
\details{
If \code{index} is length one, the numbers are interpreted as species
counts, and the output is coereced to a \code{count} object.
}
\author{Robin K. S. Hankin}
\examples{
data(saunders)
plot(extractor(saunders.exposed,1))
}
\keyword{math}
