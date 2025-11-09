# Randomly select a subset of an ecosystem

Return an ecosystem comprised of individuals randomly sampled from a
metacommunity

## Usage

``` r
isolate(a, size = no.of.ind(a), replace = TRUE)
```

## Arguments

- a:

  Ecosystem data

- size:

  Number of individuals to sample

- replace:

  Boolean, with default `TRUE` meaning to sample individuals from the
  metacommunity with replacement and `FALSE` meaning to sample without
  replacement. See details section

## Details

Setting argument `replace` to default `TRUE` is much faster.

The canonical example is given by Leigh et al 1993, in which islands
were isolated from the mainland by rising waters. The trees on the
islands were held to be a randomly drawn sample from the metacommunity.

Given that the usual usage of this function is to generate a plausible
ecosystem under such a scenario, one would have a hard time justifying
the use of `replace=TRUE` as it allows (for example) a singleton
metacommunity species to have multiple representatives in the returned
ecosystem.

However, for large metacommunities and small subsamples, the distinction
between `replace=TRUE` and `replace=FALSE` is small.

## Value

Returns a `count` object

## References

E. G. Leigh and others 1993. “The decline of tree diversity on newly
isolated tropical islands: a test of a null hypothesis and some
implications”. Evolutionary Ecology, 7:76-102

## Author

Robin K. S. Hankin

## Note

If `replace=FALSE`, the returned count object includes extinct species.
Use `extant(isolate(...))` to return only extant species

## Examples

``` r
a <- rand.neutral(1000,10)
no.of.spp(a)
#> [1] 51
no.of.spp(isolate(a))
#> [1] 45
```
