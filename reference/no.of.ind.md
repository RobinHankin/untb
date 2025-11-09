# Ecosystem diagnostics

Ecosystem diagnostics such as species count, individual count, number of
singletons, etc

## Usage

``` r
no.of.ind(x)
no.of.spp(x, include.extinct=FALSE)
no.of.singletons(x)
no.of.extinct(x)
maximal.abundance(x)
singletons(x)
extinct(x)
extant(x)
```

## Arguments

- x:

  Ecosystem vector; is coerced to class `count`

- include.extinct:

  In function `no.of.spp()`, Boolean argument with `TRUE` meaning to
  include extinct species (ie species with an abundance of zero), and
  default `FALSE` meaning to return the number of extant species

## Details

- Function `no.of.spp()` returns the number of species in an ecosystem
  object, treating extinct species in line with argument
  `include.extinct`

- Function `no.of.ind()` returns the number of individuals

- Function `no.of.singletons()` returns the number of singletons

- Function `no.of.extinct()` returns the number of extinct species

- Function `maximal.abundance()` returns the abundance of the most
  abundant species

- Function `singletons()` returns a `count` object containing only the
  singletons: each abundance is one

- Function `extinct()` returns a `count` object containing only the
  extinct species: each abundance is zero

- Function `extant()` returns a `count` object containing only the
  extant species: each abundance is greater than zero

## References

S. P. Hubbell. “The Unified Neutral Theory of Biodiversity”. Princeton
University Press, 2001.

## Author

Robin K. S. Hankin

## Note

It is sometimes useful to include species with an abundance of zero
when, for example, taking a single row of the Saunders dataframe.

The default for `include.extinct` is `FALSE` because this is required
for (eg)
[`optimal.theta()`](https://robinhankin.github.io/untb/reference/optimal.prob.md)

## Examples

``` r
data(butterflies)
no.of.spp(butterflies)
#> [1] 37
no.of.ind(butterflies)
#> [1] 376

jj1 <- count(c(dogs=7,pigs=3,crabs=0,slugs=1))
jj2 <- count(c(squid=0,dogs=3,bugs=0))
jj3 <- count(c(bugs=3,rats=0,crabs=3,cats=0))

extinct(jj1 + jj2) 
#>  bugs crabs squid 
#>     0     0     0 
extinct(jj3)               #rats and cats
#> rats cats 
#>    0    0 
extant(jj3)                #bugs and crabs
#>  bugs crabs 
#>     3     3 

singletons(jj1)
#> slugs 
#>     1 
singletons(jj2)           # empty 
#> character(0)
singletons(jj1 + jj3)     # slugs
#> slugs 
#>     1 
```
