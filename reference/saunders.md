# Dataset due to Saunders

A dataframe showing species inventories for a kelp holdfast (`saunders`)
including a Boolean flag indicating whether the holdfast was in a
sheltered or exposed location.

Also two data frames, one for the 20 exposed holdfasts
(`saunders.exposed`) and one for the 20 sheltered holdfasts
(`saunders.sheltered`).

Also three `count` objects, giving counts for all organisms
(`saunders.tot`), all those from exposed locations
(`saunders.exposed.tot`), and all those from sheltered locations only
(`saunders.sheltered.tot`).

## Usage

``` r
data(saunders)
```

## Format

Dataset `saunders` is a dataframe with 40 observations on 177 variables.
Each row corresponds to a holdfast. The first column is Boolean,
indicating whether or not that holdfast was exposed (`TRUE`) or
sheltered (`FALSE`). The other columns show species abundances for each
of 176 species.

Summary datasets `saunders.sheltered.tot`, `saunders.exposed.tot`, and
`saunders.tot` are objects of class `count` that are the species
abundance for sheltered holdfasts, exposed holdfasts, and the entire
dataset.

The user will probably be most interested in `saunders.sheltered` and
`saunders.exposed`, which are the **transpose** of the appropriate rows
of `saunders`. Thus these dataframes have 176 rows, one per species and
20 rows, one per holdfast.

## Details

Kelp are large seaweeds classified in kingdom Chromista. Kelp grows in
shallow oceans in kelp forests.

The holdfast is a root-like structure that anchors the kelp to the ocean
floor. Fauna inhabiting kelp holdfasts, being “incredibly diverse”
(Anderson et al 2005), are often used as indicators of environmental
change.

The data was collected in New Zealand, from eight sites along the Leigh
coastline from north of Leigh Harbour down to the southern end of Kawau
Island (a stretch of roughly 20 km). Four sites were wave-exposed, four
were sheltered (although two of the latter were arguably quite
tidally-dominated). Each site had a spatial extent of roughly one
hectare. They were collected from 5 - 10 November, 2003.

The `saunders` dataset must be arranged as it is because if it were
transposed, the first row would be the (nonsensical) observation
`c(T,T,...,T,F,...,F)`.

## Note

It is not entirely obvious how to derive the summary datasets from the
`saunders` dataframe. Use function
[`extractor()`](https://robinhankin.github.io/untb/reference/extractor.md)
for this.

## Source

Data supplied by Justine Saunders

## See also

[`extractor`](https://robinhankin.github.io/untb/reference/extractor.md)

## References

- J. Saunders 2007. “Biodiversity of kelp holdfasts” (provisional
  title). PhD thesis (in preparation); School of Geography and
  Environmental Sciences, The University of Auckland

- M. J. Anderson and others 2005. “Consistency and variation in kelp
  holdfast assemblages: Spatial patterns of biodiversity for the major
  phyla at different taxonomic resolutions”. *Journal of Experimental
  Marine Biology and Ecology*. Volume 320, pages 35-56

## Examples

``` r
data("saunders")

jj <- t(saunders)[-1,]
jj.exposed <- saunders[,1]
"saunders.tot" <- count(apply(jj,1,sum))
"saunders.exposed"   <- jj[, jj.exposed]
"saunders.sheltered" <- jj[,!jj.exposed]
"saunders.exposed.tot"   <- count(apply(saunders.exposed,1,sum))
"saunders.sheltered.tot" <- count(apply(saunders.sheltered,1,sum))


plot(saunders.sheltered.tot, uncertainty=TRUE, n=1)
#> Warning: 44 y values <= 0 omitted from logarithmic plot

preston(saunders.tot)
#>                   1   2  3-4  5-8  9-16  17-32  33-64  65-128  129-256  257-512
#> number of species 42 14   21   22    13     20     15      11       11        5
#>                    513-1024  1025-Inf
#> number of species         1         1
optimal.params.sloss(saunders.exposed)
#> $theta
#> [1] 29.90733
#> 
#> $m
#>  [1] 0.039839196 0.027662566 0.035370762 0.020723138 0.037506727 0.026863979
#>  [7] 0.025931901 0.009844845 0.015616487 0.008474941 0.044742548 0.022764829
#> [13] 0.034398083 0.039645886 0.055169279 0.019887729 0.008314553 0.006655426
#> [19] 0.025086580 0.022783148
#> 
#> $I
#>  [1] 27.7167975  7.4253334 18.1138573  4.6555682 23.0692337  5.9075930
#>  [7]  7.2945011  0.4573655  1.6974727  0.6325061 26.5104262  4.7056181
#> [13] 18.8448112 15.2745509 29.0201525  3.7944687  0.5449772  0.3283009
#> [19]  5.1978863  6.2016096
#> 
```
