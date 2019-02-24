\name{count}
\alias{count}
\alias{as.count}
\alias{is.count}
\title{Construct, coerce, and test for a count object}
\description{
  In package untb, ecosystem data is held in one of two preferred forms:
  census data and count data.  Function \code{count} creates an object
  of class \dQuote{count}, and \code{as.count()} coerces to this class.
}
\usage{
as.count(a,add="")
count(a)
is.count(a)
}
\arguments{
  \item{a}{Ecosystem data.  In function \code{as.count()}, if a table,
    interpret as species count data; otherwise, interpret as census
    data.  Special dispensation is made for single rows of a dataframe}
  \item{add}{In function \code{as.count()}, character argument with
    default \code{""} (empty string) meaning to leave the species
    names unchanged.  A non-empty string is prepended
    to the species names using \code{paste()}.  This is useful if the
    species names are integers because the display can become confusing}
}
\details{
  A \dQuote{count} object is a list of species together with
  their abundance.  It also has class \dQuote{table}; compare
  \dQuote{census} objects.
  
  An object of class \dQuote{count} is a table sorted from most to least
  abundant species.  The singletons are thus tabulated last.

  Function \code{count()} takes a vector, the elements of which are
  interpreted as abundances.  If any of the elements are named, the
  names are interpreted as species names (unnamed elements are given the
  null name).  If the vector is unnamed, then the species names are
  upper case letters, with the first element being named
  \dQuote{\code{A}}, the second \dQuote{\code{B}}, and so on; this
  behaviour is inherited from \code{as.table()}.  Note that this means
  that the species names are not necessarily in alphabetical order.
  From version 1.6-9, zero elements are interpreted as zero abundance
  species (ie extinct).

  To access or change species names, use \code{names()} and
  \code{names<-} respectively.

  Function \code{as.count()} coerces its argument to count form.

}
\value{
  Returns an object of class \dQuote{count}.
}
\author{Robin K. S. Hankin}
\seealso{\code{\link{census}}}
\examples{ 



a <- c(rep("oak",5) ,rep("ash",2),rep("elm",3),rep("xx",4))
as.count(a)




data(saunders)
as.count(saunders[1,-(1:150)])

jj <- sample(1:5,5,replace=TRUE)
as.count(jj)
as.count(jj,add="spp.")

}
\keyword{math}
