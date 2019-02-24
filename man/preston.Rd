\name{preston}
\alias{preston}
\alias{Preston}
\title{Preston diagram of an ecosystem}
\description{
  Gives a standard Preston diagram for an ecosystem.
}
\usage{
preston(x,n=NULL,original=FALSE)
}
\arguments{
  \item{x}{Ecosystem vector that is coerced to class \code{count}, or a
    matrix whose rows are species counts}
  \item{n}{An integer specifying the number of species abundance classes
    to use, with default \code{NULL} meaning to use
    \eqn{1+\log_2(J)}{1+log2(J)}.  Must be greater than 1 if specified.
    If \code{x} is a vector, \code{NULL} is not acceptable as the
    program does not try to guess what is required}
  \item{original}{Boolean, with default \code{FALSE} meaning to use the
    nonoverlapping technique discussed below, and \code{TRUE}
    meaning to use Preston's original formulation.}
}
\details{
  The Preston diagram is a table showing the number of species having
  abundances in specified abundance classes.  Consider the following
  Preston diagram, created with \code{original = FALSE}:
\preformatted{
                  1  2  3-4  5-8  9-16  17-32  33-64  65-Inf
number of species 10 5    7    5     1      5      4       0
}

This shows that there are 10 species with abundance 1 (that is,
singletons); 5 species with abundance 2; 7 species with abudance 3-4; 5
species with abundance 5-8, and so on.  This method is used by Hubbell
(2001), and Chisholm and Burgman (2004).

Setting argument \code{original} to \code{TRUE} means to follow Preston
(1948) and count any species with an abundance on the boundary between
two adjacent abundance classes as being split 50-50 between the classes.
Thus the fourth class would be
\eqn{\phi_4/2+\phi_5+\phi_6+\phi_7+\phi_8/2}{phi_4/2+phi_5+phi_6+phi_7+phi_8/2}
where \eqn{\phi_i}{phi_i} is the number of species with abundance
\eqn{i} (given by \code{phi(x)}).

}
\value{
  Function \code{preston()} returns an object of class \dQuote{\code{preston}}.
}
\references{
  \itemize{
    \item
    F. W. Preston 1948. \dQuote{The Commonness, and Rarity, of Species}.
    \emph{Ecology} 29(3):254-283

    \item
    R. A. Chisholm and M. A. Burgman 2004. \dQuote{The unified neutral
      theory of biodiversity and biogeography: comment}.  \emph{Ecology} 85(11):
    3172-3174

    \item
    S. P. Hubbell 2001.  \dQuote{The Unified Neutral Theory of Biodiversity}.
    Princeton University Press
    }
}
\author{Robin K. S. Hankin}
\seealso{\code{\link{phi}}}
\examples{
preston(untb(start=rep(1,100), prob=0.01, gens=1000, keep=FALSE))

data(butterflies)
preston(butterflies)
preston(butterflies,original=TRUE)

data(copepod)
preston(copepod)
}
\keyword{math}
