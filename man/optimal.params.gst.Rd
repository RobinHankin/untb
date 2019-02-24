\name{optimal.params.gst}
\alias{optimal.params.gst}
\alias{GST.k}
\alias{I.k}

\title{ Estimation of local immigration using GST(k) statistics}
\description{
  
  Functions \code{optimal.params.gst()}, \code{GST.k()} and \code{I.k()}
  apply to count data collected over a network of community samples k
  (species by sample matrix).  A theoretical relationship between
  \code{GST(k)} statistics and local immigration numbers \code{I(k)}, in
  the context of a spatially-implicit neutral community model (Munoz et
  al 2008), is used to provide \code{GST(k)} and \code{I(k)} statistics
  any sample k.
  
  If requested, \code{optimal.params.gst()} further provides the user with
  confidence bounds.
  
}
\usage{
optimal.params.gst(D, exact = TRUE, ci = FALSE, cint = c(0.025, 0.975), nbres = 100)
GST.k(D, exact = TRUE)
I.k(D, exact = TRUE)
}
\arguments{
  
  \item{D}{ A data table including species counts in a network of
    community samples (columns) }
  \item{exact}{ If \code{TRUE}, exact similarity statistics are
  calculated (sampling without replacement) while, if false, approximate
  statistics (sampling with replacement) are considered (see Munoz et al
  2008 for further statistical discussion)}

  \item{ci}{ Specifies whether bootstraps confidence intervals of
    immigration estimates are to be calculated}
  \item{cint}{ Bounds of the confidence interval, if \code{ci = TRUE}} 
  \item{nbres}{ Number of rounds of the bootstrap procedure for
    confidence interval calculation, if ci = T}
}
\value{
  \item{GST}{A vector of 0 to 1 \code{GST(k)} numbers (specific output of \code{GST.k})}
  \item{nk}{Number of individuals within samples (length = number of samples)}
  \item{distrib}{Species counts of the merged dataset (output of \code{GST.k} and \code{I.k})}
  \item{I}{Immigration estimates (output of \code{I.k} and \code{optimal.params.gst})}
  \item{m}{Corresponding immigration rates (output of \code{I.k} and
    \code{optimal.params.gst}).  Specific outputs of \code{optimal.params.gst} when ci = T (bootstrap procedure)}
  \item{Ici}{Confidence interval of \code{I(k)}}
  \item{mci}{Confidence interval of \code{m(k)}}
  \item{Iboot}{Table of bootstrapped values of \code{I(k)}}
  \item{mboot}{Table of bootstrapped values of i\code{m(k)}}
}
\references{
  Francois Munoz, Pierre Couteron and B.R. Ramesh
    (2008). \dQuote{Beta-diversity in spatially implicit neutral models:
    a new way to assess species migration.} \emph{The American
    Naturalist} 172(1): 116-127
  }
\author{ Francois Munoz }
\seealso{ \code{\link{optimal.params}},\code{\link{optimal.params.sloss}} }
\examples{
data(ghats)
optimal.params.gst(ghats)
}
\keyword{optimize}


