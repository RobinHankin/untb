# Various functionality to implement Fisher's logseries

Various functions connected to Fisher's logseries including creation of
synthetic datasets and estimation of Fisher's alpha

## Usage

``` r
fishers.alpha(N, S, give=FALSE)
fisher.ecosystem(N, S, nmax, alpha=NULL, c=0)
```

## Arguments

- N:

  Size of the ecosystem. In the case of `fisher.ecosystem()`, the
  expected size of the ecosystem

- S:

  Number of species in ecosystem

- alpha:

  In function `fisher.ecosystem()`, Fisher's \\\alpha\\. If not
  supplied, it will be calculated from `N` and `S`.

- give:

  In function `fishers.alpha()`, Boolean variable with default `FALSE`
  meaning to return alpha, and `TRUE` meaning to return a list
  containing `x` and `alpha`.

- nmax:

  In function `fisher.ecosystem()`, the maximum number of species
  abundance classes to consider

- c:

  In function `fisher.ecosystem()`, the rare species advantage term

## Details

Function `fishers.alpha()` solves for \\\alpha\\ given \\N\\ and \\S\\,
as per Fisher's table 9, p55.

Given \\N\\ and \\S\\ (or \\\alpha\\), function `fisher.ecosystem()`
generates a Fisherian ecosystem with expected size \\N\\ and expected
species count \\S\\.

## References

R. A. Fisher and A. S. Corbet and C. B. Williams 1943. “The relation
between the number of species and the number of individuals in a random
sample of an animal population”, *Journal of Animal Ecology*, volume 12,
pp 42–58

## Author

Robin K. S. Hankin

## Examples

``` r
 fishers.alpha(N=100000,S=100)
#> [1] 10.96717
#compare the Table value:
  100000/10^3.95991
#> [1] 10.96705
```
