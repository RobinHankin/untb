\name{theta.prob}
\alias{theta.prob}
\alias{theta.likelihood}
\title{Posterior probabilities for theta}
\description{
  Determines the posterior probability and likelihood for theta,
  given a count object
}
\usage{
theta.prob(theta, x=NULL, give.log=TRUE)
theta.likelihood(theta, x=NULL, S=NULL, J=NULL, give.log=TRUE)
}
\arguments{
  \item{theta}{biodiversity parameter}
  \item{x}{object of class count or census}
  \item{give.log}{Boolean, with \code{FALSE} meaning to return
    the  value, and default \code{TRUE} meaning to return
    the (natural) logarithm of the value}
  \item{S, J}{In function \code{theta.likelihood()}, the number of
    individuals (\code{J}) and number of species (\code{S}) in
    the ecosystem, if \code{x} is not
    supplied.  These arguments are provided so that \code{x} need
    not be specified if \code{S} and \code{J} are known.}
}
\details{
  The formula was originally given by Ewens (1972) and is shown on
  page 122 of Hubbell (2001):
  \deqn{\frac{J!\theta^S}{
      1^{\phi_1}2^{\phi_2}\ldots J^{\phi_J}
      \phi_1!\phi_2!\ldots \phi_J!
      \prod_{k=1}^J\left(\theta+k-1\right)}.}{J!.theta^S /
    (1^{phi_1}*2^{phi_2}*...*J^{phi_J}*
      phi_1!*phi_2!*...*phi_J!*
      (theta)*(theta+1)*...*(theta+J))}

  The likelihood is thus given by
  \deqn{\frac{\theta^S}{\prod_{k=1}^J\left(\theta+k-1\right)}.}{theta^S/((theta)*(theta+1)*...*(theta+J)).}

Etienne observes that the denominator is equivalent to a Pochhammer
symbol \eqn{(\theta)_J}{(theta)_J}, so is thus readily evaluated as
\eqn{\Gamma(\theta+J)/\Gamma(\theta)}{Gamma(theta+J)/Gamma(theta)}
(Abramowitz and Stegun 1965, equation 6.1.22). 
}
\references{
  \itemize{
    \item S. P. Hubbell 2001.
    \dQuote{The Unified Neutral Theory of Biodiversity},
    Princeton University Press.
    \item W. J. Ewens 1972.  \dQuote{The sampling theory of selectively
      neutral alleles}, \emph{Theoretical Population Biology}, \bold{3}:87--112
    \item M. Abramowitz and I. A. Stegun 1965.
    \emph{Handbook of Mathematical Functions}, New York: Dover
  }
}
\author{Robin K. S. Hankin}
\note{
  If estimating \code{theta}, use \code{theta.likelihood()} rather than
  \code{theta.probability()} because the former function generally
  executes \strong{much} faster: the latter calculates a factor that is
  independent of \code{theta}.
  
  The likelihood function \eqn{L(\theta)}{L(theta)} is any function of
  \eqn{\theta}{theta} proportional, for fixed observation \eqn{z}, to
  the probability density \eqn{f(z,\theta)}{f(z,theta)}.  There is thus
  a slight notational inaccuracy in speaking of \dQuote{the} likelihood
  function which is defined only up to a multiplicative constant.  Note
  also that the \dQuote{support} function is usually defined as a
  likelihood function with maximum value \eqn{1} (at the maximum
  likelihood estimator for \eqn{\theta}{theta}).  This is not easy to
  determine analytically for \eqn{J>5}.

  Note that \eqn{S} is a sufficient statistic for \eqn{\theta}{theta}.

  Function \code{theta.prob()} does \strong{not} give a PDF for
  \eqn{\theta}{theta} (so, for example, integrating over the real line
  does not give unity).  The PDF is over partitions of \eqn{J}; an
  example is given below.

  Function \code{theta.prob()} requires a count object (as opposed to
  \code{theta.likelihood()}, for which  \eqn{J} and \eqn{S} are
  sufficient) because it needs to call \code{phi()}.
}
\seealso{\code{\link{phi}}, \code{\link{optimal.prob}}}
\examples{

theta.prob(1,rand.neutral(15,theta=2))

gg <- as.count(c(rep("a",10),rep("b",3),letters[5:9]))
theta.likelihood(theta=2,gg)

optimize(f=theta.likelihood,interval=c(0,100),maximum=TRUE,x=gg)


## An example showing that theta.prob() is indeed a PMF:

a <- count(c(dogs=3,pigs=3,hogs=2,crabs=1,bugs=1,bats=1))
x <- partitions::parts(no.of.ind(a))
f <- function(x){theta.prob(theta=1.123,extant(count(x)),give.log=FALSE)}
sum(apply(x,2,f))  ## should be one exactly.
}

\keyword{math}
