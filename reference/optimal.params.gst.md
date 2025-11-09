# Estimation of local immigration using GST(k) statistics

Functions `optimal.params.gst()`, `GST.k()` and `I.k()` apply to count
data collected over a network of community samples k (species by sample
matrix). A theoretical relationship between `GST(k)` statistics and
local immigration numbers `I(k)`, in the context of a spatially-implicit
neutral community model (Munoz et al 2008), is used to provide `GST(k)`
and `I(k)` statistics any sample k.

If requested, `optimal.params.gst()` further provides the user with
confidence bounds.

## Usage

``` r
optimal.params.gst(D, exact = TRUE, ci = FALSE, cint = c(0.025, 0.975), nbres = 100)
GST.k(D, exact = TRUE)
I.k(D, exact = TRUE)
```

## Arguments

- D:

  A data table including species counts in a network of community
  samples (columns)

- exact:

  If `TRUE`, exact similarity statistics are calculated (sampling
  without replacement) while, if false, approximate statistics (sampling
  with replacement) are considered (see Munoz et al 2008 for further
  statistical discussion)

- ci:

  Specifies whether bootstraps confidence intervals of immigration
  estimates are to be calculated

- cint:

  Bounds of the confidence interval, if `ci = TRUE`

- nbres:

  Number of rounds of the bootstrap procedure for confidence interval
  calculation, if ci = T

## Value

- GST:

  A vector of 0 to 1 `GST(k)` numbers (specific output of `GST.k`)

- nk:

  Number of individuals within samples (length = number of samples)

- distrib:

  Species counts of the merged dataset (output of `GST.k` and `I.k`)

- I:

  Immigration estimates (output of `I.k` and `optimal.params.gst`)

- m:

  Corresponding immigration rates (output of `I.k` and
  `optimal.params.gst`). Specific outputs of `optimal.params.gst` when
  ci = T (bootstrap procedure)

- Ici:

  Confidence interval of `I(k)`

- mci:

  Confidence interval of `m(k)`

- Iboot:

  Table of bootstrapped values of `I(k)`

- mboot:

  Table of bootstrapped values of i`m(k)`

## References

Francois Munoz, Pierre Couteron and B.R. Ramesh (2008). “Beta-diversity
in spatially implicit neutral models: a new way to assess species
migration.” *The American Naturalist* 172(1): 116-127

## Author

Francois Munoz

## See also

[`optimal.params`](https://robinhankin.github.io/untb/reference/etienne.md),[`optimal.params.sloss`](https://robinhankin.github.io/untb/reference/optimal.params.sloss.md)

## Examples

``` r
data(ghats)
optimal.params.gst(ghats)
#> $I
#>  [1] 16.774694 12.915263 18.654831  8.420867  8.638719  7.334220 23.669878
#>  [8] 10.362868 12.024855 19.147550 12.596480  8.274654 11.324572  4.841787
#> [15] 34.973891 10.915280 28.603709 11.719364 18.204995 16.323013 27.496478
#> [22] 27.646331  3.826457  1.323756  7.927096 14.818397 26.328859 10.753630
#> [29] 29.014992 14.957210  8.205501  8.468848  8.681752 13.086981 17.554385
#> [36]  4.362208 17.625929 16.267331 10.960310  9.976792  9.353981 13.502007
#> [43]  4.643317  2.569371 13.644226 34.402876 16.861746 12.533388 17.380008
#> [50] 25.281964
#> 
#> $m
#>  [1] 0.072688619 0.046808801 0.040061500 0.037690602 0.021890195 0.012036449
#>  [7] 0.070726047 0.028677179 0.034953449 0.034741242 0.035324184 0.027835046
#> [13] 0.077393510 0.011989317 0.084687899 0.023477997 0.113235506 0.049717443
#> [19] 0.080837440 0.072122640 0.114809530 0.103681647 0.009359611 0.003800362
#> [25] 0.030733862 0.125773200 0.040610345 0.024070605 0.092106701 0.043997332
#> [31] 0.009290590 0.017626217 0.030821139 0.070707194 0.099427637 0.007414154
#> [37] 0.027090726 0.031087992 0.016071772 0.013537457 0.014910212 0.023139607
#> [43] 0.008179990 0.003683320 0.047934314 0.096799654 0.044861564 0.025343866
#> [49] 0.044181218 0.054927123
#> 
```
