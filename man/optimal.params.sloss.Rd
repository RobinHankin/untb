\name{optimal.params.sloss}
\alias{optimal.params.sloss}
\title{ Estimation of neutral community parameters using a two-stage maximum-likelihood procedure }
\description{
  Function \code{optimal.params.sloss()} returns maximum likelihood
  estimates of \code{theta} and \code{m(k)} using numerical
  optimization.
  
  It differs from \code{untb}'s \code{optimal.params()} function as it
  applies to a network of smaller community samples \code{k} instead of
  to a single large community sample.
  
  Although there is a single, common \code{theta} for all communities,
  immigration estimates are provided for each local community \code{k},
  sharing a same biogeographical background.
}
\usage{
optimal.params.sloss(D, nbres = 100, ci = FALSE, cint = c(0.025, 0.975))
}
\arguments{
  \item{D}{ Species counts over a network of community samples (species by sample table) }
  \item{nbres}{ Number of resampling rounds for \code{theta} estimation}
  \item{ci}{ Specifies whether bootstraps confidence intervals should be provided for estimates }
  \item{cint}{ Bounds of confidence intervals, if ci = T }
}
\value{
  \item{theta}{Mean \code{theta} estimate}
  \item{I}{The vector of estimated immigration numbers \code{I(k)}}
  Output of the bootstrap procedure, if ci = T:
  \item{thetaci}{Confidence interval for \code{theta}}
  \item{msampleci}{Confidence intervals for \code{m(k)}}
  \item{thetasamp}{theta estimates provided by the resampling procedure}
  \item{Iboot}{Bootstrapped values of \code{I(k)}}
  \item{mboot}{Bootstrapped values of \code{m(k)}}
}
\references{
  Francois Munoz, Pierre Couteron, B. R. Ramesh, and Rampal S. Etienne
  2007. \dQuote{Estimating parameters of neutral communities: from one
  single large to several small samples}. \emph{Ecology}
  88(10):2482-2488 
}
\author{ Francois Munoz }
\note{ The function returns unhelpful output when run with the
  \code{caruso} dataset as in \code{optimal.params.sloss(caruso)}.  The
  reason for this behaviour is unknown.}
\seealso{ \link{optimal.params}, \link{optimal.params.gst} }
\examples{
data(ghats)
optimal.params.sloss(ghats)
}
\keyword{optimize}
