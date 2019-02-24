\name{caruso}
\alias{oribatid}
\alias{Oribatid}
\alias{caruso}
\alias{Caruso}
\docType{data}
\title{Dataset due to Caruso}
\description{
  
  A dataframe in standard format due to Migliorini and Caruso presenting
  observations of oribatid mites.
}
\usage{data(caruso)}
\format{
  Dataset \code{caruso} is a data frame with 194 observations on 5
  variables.  Each row corresponds to a species; the observations (rows)
  are the species abundances in each of 5 habitats.

    Following Migliorini et al 2002, the habitats were:
  
  \itemize{
    \item a pure beech woodland (\sQuote{\code{Beech}})
    \item a coppice woodland (\sQuote{\code{Coppice}})
    \item grassland (\sQuote{\code{Grassland}})
    \item heathland (\sQuote{\code{Heathland}})
    \item \sQuote{Biancana} badlands (\sQuote{\code{Biancana}})
    }

}
\details{
 Oribatid mites are rather small and very interesting free living soil
 microarthropods.  They have a huge species diversity with populations
 characterised by highly aggregated distributions over multiple spatial
 scales ranging from a few centimetres to hundreds of meters.

 Within each habitat, several soil samples were collected (five randomly
 located replicates per each month: see the paper Migliorini et
 al. 2002). So, actually, that is a network of small samples that make a
 single large sample.

 The five study areas of this data set belong to five habitats that are
 very typical of that Mediterranean region.  These five areas also
 belong to a rather homogeneous biogeographical region (southern
 Tuscany).  On the ground of what is known on the biology and community
 patterns of Oribatida, several a-priori hypotheses can be made on
 expected changes in the diversity of their assemblages and immigration
 rates respectively between and within the five areas.  For instance,
 under the Neutral Model one might expect that the Beech forest should
 have the highest Theta and an immigration rate of about 1, while one
 might expect the opposite for the Biancana (a very arid habitat, a kind
 of gariga/garrigue with very patchy vegetation).
}  
\source{
  Data kindly supplied by Tancredi Caruso
}
\seealso{\code{\link{extractor}}}
\references{
  \itemize{
    \item T. Caruso and others 2007. \dQuote{The Berger-Parker index as
      an effective tool for monitoring the biodiversity of disturbed
      soils: a case study on Mediterranean oribatid (Acari: Oribatida)
      assemblages}. \emph{Biodiversity Conservation}, 16:3277-3285
    \item M. Migliorini, A. Petrioli, and F. Bernini 2002.
      \dQuote{Comparative analysis of two edaphic zoocoenoses (Oribatid
	mites and Carabid beetles) in five habitats of the
	\sQuote{Pietraporciana} and \sQuote{Lucciolabella} Nature Reserves
	(Orcia Valley, central Italy)}.  \emph{Acta Oecologica}, 23:361-374
  }
}

\note{Executing \code{optimal.params.sloss(caruso)} does not return
  useful output.  The reason for this is unknown.}
\examples{
data(caruso)

summary(count(caruso[,1]))


}
\keyword{datasets}
