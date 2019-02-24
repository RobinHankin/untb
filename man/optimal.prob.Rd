\name{optimal.prob}
\alias{optimal.prob}
\alias{optimal.theta}
\title{Returns an estimate of the fundamental biodiversity number}
\description{
Returns a maximum likelihood estimate for the fundamental biodiversity
number \eqn{\theta}{theta} (function \code{optimal.theta()}) or the
probability of mutation (function \code{optimal.prob()}) and optionally
return information about the likely error
}
\usage{
optimal.prob(x,  interval=NULL, N=NULL, like=NULL, ...)
optimal.theta(x, interval=NULL, N=NULL, like=NULL, ...)
}
\arguments{
  \item{x}{Ecosystem vector or species count table}
  \item{interval}{Bracketing interval for probability of mutation to be
    passed to the optimization routine (here \code{optimize()}).  
    Default of \code{NULL} means to use a wide interval.  Note that this
    argument is interpreted as an interval of \emph{\eqn{\theta}{theta}} for
    both \code{optimal.prob()} and \code{optimal.theta()}.}
  \item{N}{Integer; the number of parametric resampled estimates to
    give.  Default of \code{NULL} means to return just the maximum
    likelihood estimate}
  \item{like}{Units of likelihood to calculate credible interval.
    Edwards recommends using 2}
  \item{\dots}{Further arguments passed to \code{optimize()}}
}
\note{
  The fundamental biodiversity parameter \eqn{\theta}{theta} is
  \eqn{2\nu J}{2*nu*J}, where \eqn{\nu}{nu} is the probability of
  mutation (ie, as estimated by \code{optimal.prob()}), and \eqn{J} is
  the size of the ecosystem.

  For the general case of dispersal limitation, see functions
  \code{etienne()} and \code{optimal.params()}.
}
\author{Robin K. S. Hankin}
\seealso{\code{\link{etienne}},\code{\link{optimal.params.sloss}},\code{\link{optimal.params.gst}}}
\examples{
data(butterflies)
optimal.prob(butterflies)
optimal.theta(butterflies)
}
\keyword{math}
