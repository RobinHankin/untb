\name{simpson}
\alias{simpson}
\title{Simpson's diversity index}
\description{
Simpson's diversity index
}
\usage{
simpson(x, with.replacement=FALSE)
}
\arguments{
  \item{x}{Ecosystem vector; coerced to class \code{count}}
  \item{with.replacement}{Boolean, with default \code{FALSE} meaning to
    sample without replacement; see details section}
}
\details{
  Returns the Simpson index \eqn{D}: the
  probability that two randomly sampled individuals belong to
  different species.
  
  There is some confusion as to the precise definition: some authors
  specify that the two individuals are necessarily distinct (ie sampling
  without replacement), and some do not.

  Simpson (1949) assumed sampling without replacement and gave

  \deqn{ 1-\frac{\sum_{i=1}^Sn_i\left(n_i-1\right)}{J(J-1)} }
  in our notation.

  He and Hu (2005) assumed sampling with replacement:
  \deqn{ 1-\frac{\sum_{i=1}^Sn_i^2}{J^2}. }

  The difference is largely academic but is most pronounced when many
  species occur with low counts (ie close to 1).
  
}
\references{
  \itemize{
    \item S. P. Hubbell 2001.
    \dQuote{The Unified Neutral Theory of Biodiversity}.
    Princeton University Press.
    \item F. He and X.-S. Hu 2005.
    \dQuote{Hubbell's Fundamental Biodiversity
      Parameter and the Simpson Diversity Index}.  \emph{Ecology Letters}, volume 8,
    pp386-390. doi: \code{10.1111/j.1461-0248.2005.00729.x}
    \item E. H. Simpson 1949. \dQuote{Measurement of diversity},
    \emph{Nature}, volume 163, p688
  }  
}
\author{Robin K. S. Hankin}
\seealso{\code{\link{preston}}}
\examples{
data(butterflies)

D <- simpson(butterflies)
theta <- optimal.prob(butterflies)*2*no.of.ind(butterflies)

# compare theta with D/(1-D) (should be roughly equal; see He & Hu 2005):
theta
D/(1-D)


# Second argument pedantic in practice.

# Mostly, the difference is small:
simpson(butterflies,FALSE) - simpson(butterflies,TRUE)

# Most extreme example:
x <- count(c(1,1))
simpson(x,TRUE)
simpson(x,FALSE)


}
\keyword{math}
