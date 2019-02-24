\name{etienne}
\alias{etienne}
\alias{Etienne}
\alias{optimal.params}
\title{Etienne's sampling formula}
\description{
  Function \code{etienne()} returns the probability of a given dataset
  given \code{theta} and \code{m} according to the Etienne's sampling
  formula.  Function \code{optimal.params()} returns the maximum likelihood
  estimates for \code{theta} and \code{m} using numerical optimization
}
\usage{
etienne(theta, m, D, log.kda = NULL, give.log = TRUE, give.like = TRUE)
optimal.params(D, log.kda = NULL, start = NULL, give = FALSE, ...) 
}
\arguments{
  \item{theta}{Fundamental biodiversity parameter}
  \item{m}{Immigration probability}
  \item{D}{Dataset; a count object}
  \item{log.kda}{The KDA as defined in equation A11 of Etienne 2005.
    See details section}
  \item{give.log}{Boolean, with default \code{TRUE} meaning to return
    the logarithm of the value}
  \item{give.like}{Boolean, with default \code{TRUE} meaning to return
    the likelihood and \code{FALSE} meaning to return the probability}
  \item{start}{In function \code{optimal.params()}, the start point for
    the optimization routine \eqn{(\theta,m)}{(theta,m)}.}
  \item{give}{In function \code{optimal.params()}, Boolean, with
    \code{TRUE} meaning to return all output of the optimization
    routine, and default \code{FALSE} meaning to return just the point
    estimate}
  \item{...}{In function \code{optimal.params()}, further arguments
    passed to \code{optim()}}
}
\details{
  Function \code{etienne()} is just Etienne's formula 6:
  \deqn{P[D|\theta,m,J]=
    \frac{J!}{\prod_{i=1}^Sn_i\prod_{j=1}^J{\Phi_j}!}
    \frac{\theta^S}{(\theta)_J}\times
    \sum_{A=S}^J\left(K(D,A)
       \frac{(\theta)_J}{(\theta)_A}
       \frac{I^A}{(I)_J}
       \right)}{omitted...see PDF}

where \eqn{\log K(D,A)} is given by function \code{logkda()} (qv).  It
might be useful to know the (trivial) identity for the Pochhammer symbol
[written \eqn{(z)_n}] documented in \code{theta.prob.Rd}.  For
convenience, Etienne's Function \code{optimal.params()} uses
\code{optim()} to return the maximum likelihood estimate for
\eqn{\theta}{theta} and \eqn{m}.

Compare function \code{optimal.theta()}, which is restricted to no
dispersal limitation, ie \eqn{m=1}.

Argument \code{log.kda} is optional: this is the \eqn{K(D,A)} as defined
in equation A11 of Etienne 2005; it is computationally expensive to
calculate.  If it is supplied, the functions documented here will not
have to calculate it from scratch: this can save a considerable amount
of time

}
\references{R. S. Etienne 2005. \dQuote{A new sampling formula for
    biodiversity}.  \emph{Ecology letters} 8:253-260}
\author{Robin K. S. Hankin}
\seealso{\code{\link{logkda}},\code{\link{optimal.theta}}}
\examples{
data(butterflies)
\dontrun{optimal.params(butterflies)}  #takes too long without PARI/GP


#Now the one from Etienne 2005, supplementary online info:

zoo <- count(c(pigs=1, dogs=1, cats=2, frogs=3, bats=5, slugs=8))
l <- logkda.R(zoo, use.brob=TRUE)  # Use logkda() if pari/gp is available
optimal.params(zoo, log.kda=l)  #compare his answer of 7.047958 and 0.22635923.

}
\keyword{math}
