\name{census}
\alias{census}
\alias{as.census}
\alias{is.census}
\title{Construct, coerce, and test for a census object}
\description{
In package untb, ecosystem data is held in one of two preferred forms:
census data and count data.  Function \code{as.census()} coerces to
census format.
}
\usage{
census(a)
as.census(a)
is.census(a)
}
\arguments{
  \item{a}{Ecosystem data.  In function \code{as.census()}, if a table,
    interpret as species count data; otherwise, interpret as census data}
}
\details{
  A \dQuote{census} object is a list of individuals in the form of an
  unnamed vector whose elements indicate the individuals' species;
  compare \dQuote{count} objects.
  
  An object of class \dQuote{census} is also an unordered factor.  The
  levels are always in alphabetical order.
  
  Function \code{census()} takes an object of class \dQuote{count} and
  returns an object of class \dQuote{census}.  This function is not
  really intended for the end user.

  Function \code{as.census()} coerces to class \dQuote{count} then
  returns \code{census()} of the result.

}
\value{
  Returns an object of class \dQuote{census}.
}
\author{Robin K. S. Hankin}
\seealso{\code{\link{count}}}
\examples{

jj <- c(dogs=4,pigs=10,slugs=0,fish=1)

x <- census(jj)   # slugs appear as zero abundance
extant(x)  # slugs gone

x+x   # count method for census objects: order of elements lost


as.census(jj)  # probably NOT what you meant

a <- c(rep("oak",5) ,rep("ash",2),rep("elm",3),rep("xx",4))
# note that "a" is a plain vector here.
as.census(a)
}
\keyword{math}
