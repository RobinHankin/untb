\name{copepod}
\alias{copepod}
\alias{ostracod}
\docType{data}
\title{Copepod data supplied by Phil Pugh}
\description{
  A dataset of copepod (resp: ostracod) abundances supplied by Dr Phil
  Pugh of the National Oceanography Centre, Southampton
}
\usage{
data(copepod)
data(ostracod)
}
\format{
  A table with names of different copepod (resp: ostracod) species,
  and entries corresponding to the numbers of individuals of each
  species.
}
\source{
\url{http://www.soc.soton.ac.uk/}
}
\examples{
data(copepod)
optimize(f=theta.likelihood,interval=c(10,100), maximum=TRUE,
S=no.of.spp(copepod), J=no.of.ind(copepod), give.log=TRUE)

data(ostracod)
preston(ostracod)

}
\keyword{datasets}
