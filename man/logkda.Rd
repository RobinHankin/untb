\name{logkda}
\alias{logkda}
\alias{logkda.a11}
\alias{logkda.R}
\alias{logkda.pari}
\alias{logkda.polyn}
\alias{logkda_pari_unix}
\alias{logkda_pari_windows}
\title{Etienne's K(D,A)}
\description{
Calculates Etienne's \eqn{K(D,A)} using a variety of different methods
}
\usage{
logkda.R(a, use.brob=TRUE)
logkda.a11(a)
logkda.pari(a, numerical=TRUE, gp_binary = "gp")
logkda.polyn(a)
logkda(a, method="pari", ...)
logkda_pari_unix(a, numerical, pari_string, gp_binary)
logkda_pari_windows(a, numerical, pari_string)
}
\arguments{
  \item{a}{Count object}
  \item{use.brob}{In function \code{logkda.R()}, Boolean, with default
    \code{TRUE} meaning to use Brobdingnagian numbers for the
    calculation.  This is slower but allows one to analyze larger
    datasets}
  \item{numerical}{Boolean, with default \code{TRUE} meaning to coerce
    to a numerical vector (thereby losing precision), and \code{FALSE}
    meaning to return the string produced by \code{pari/gp}}
  \item{method}{In function \code{logkda()}, a string specifying which
    method to use.  Takes \dQuote{R}, \dQuote{a11}, or \dQuote{pari}}
  \item{pari_string,gp_binary}{configuration variables (not intended to
    be changed by the user)}
  \item{...}{In function \code{logkda()}, further arguments which are
    passed to the other functions}
}
\details{
  The user should use function \code{logkda()}, which is a wrapper for
  the other functions.  Note that the default method, \code{pari},
  requires the pari/gp system to be installed.  This is the preferred
  option because it is much faster than the other methods.
  
  Functions \code{logkda.R()} and \code{logkda.pari()} calculate
  \eqn{K(D,A)} using the method appearing in Etienne (2005), supplementary
  online material; they use \code{R} and \code{pari/gp} respectively.
  Function \code{logkda.a11} is a direct implementation of formula A11
  in Etienne (2005).  The formula is

\deqn{
  K(D,A)=
  \sum_{\left\{a_1,\ldots,a_S|\sum a_i=A\right\}}
  \prod_{i=1}^S\frac{
    \overline{s}\left(n_i, a_i\right)
    \overline{s}\left(a_i,   1\right) }{
  \overline{s}\left(n_i,1\right)}}{ommitted...see PDF}
   where \eqn{\overline{s}\left(n_i,a_i\right)} are Stirling numbers of
   the first kind (see \code{logS1}).

Function \code{logkda.pari()} dispatches to either
\code{logkda_pari_unix()} or \code{logkda_pari_windows()} but the
windows function is not guaranteed to work.

 }


 
\references{
R. S. Etienne 2005. \dQuote{A New Sampling Formula for Neutral
Biodiversity}.  \emph{Ecology Letters}, volume 8, pp253--260.
\code{doi: 10.111/j.1461-0248.2004.00717.x}

C. Batut and K. Belabas and D. Bernardi and H. Cohen and M. Olivier
2000.  \dQuote{User's guide to PARI/GP}.  \url{http://www.parigp-home.de/}

}
\author{Robin K. S. Hankin; \code{logkda()} is an \R transliteration of
  \code{pari/gp} code appearing in Etienne 2005 (supplementary online
  material) due to Chave.

  Function \code{logkda.polyn()} provided by Francois Munoz.

  Function \code{.logkda.pari.windows()} provided by Andrea Manica and
  Francois Munoz.
  
}
\note{
  If \code{method} takes its default value of \dQuote{\code{pari}}, and
  \code{pari/gp} is not installed (the test is \code{gp --version}),
  then the method is changed to \code{R} and a warning given.
  
  Function \code{logkda.a11()} is included because the computational
  method is a direct transcription of formula A11; it is very slow.
  
  Function \code{logkda.pari()} is a wrapper for
  \code{.logkda.pari.windows()} or \code{.logkda.pari.unix()}.  It uses
  \dQuote{\code{if(R.Version()$os == 'windows')}} to check for windows
  operating systems.

  It would be nice to use \code{gp2c} (rather than \code{gp}) but I
  can't make the \dQuote{\code{-g}} flag work properly; and I had to
  hack \code{gp2c-run} to make it call \code{gp} with the \code{-q}
  flag
}
\seealso{\code{\link{etienne}},\code{\link{logS1}}}
\examples{
a <- count(c(dogs=7,pigs=3,crabs=1,hogs=1,slugs=1))

\dontrun{logkda(a)}

logkda.R(a)
logkda.R(a, use.brob=FALSE)
logkda.a11(a)
# All four should be the same up to numerical errors

}
\keyword{math}
