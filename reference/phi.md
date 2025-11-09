# Hubbell's phi

Hubbell's phi: counts of species abundances

## Usage

``` r
phi(x,addnames=TRUE)
unphi(freq, string="spp")
```

## Arguments

- x:

  Ecosystem vector; is coerced to class `count`

- addnames:

  Boolean, with default `TRUE` meaning to set the name of the \\i\\th
  element to the species with abundance \\i\\ if unique. This can be
  confusing. Set to `FALSE` to suppress this, which is useful if the
  species names are long

- freq:

  Frequency data (eg as returned by `phi()`)

- string:

  Character; species name to prepend (using `NULL` can be confusing)

## Details

Function `phi()` coerces its argument to a `count` object and by default
returns a named vector whose \\i\\th element is the number of species
with \\i\\ individuals. The name of the \\i\\th element is the species
with abundance \\i\\ if unique and empty otherwise. Function `phi()` is
used by
[`theta.prob()`](https://robinhankin.github.io/untb/reference/theta.prob.md).

Function `unphi()` does the reverse: given the output of `phi()`, it
returns a corresponding `count` object. Note that species names are
lost.

## References

S. P. Hubbell 2001. “The Unified Neutral Theory of Biodiversity”.
Princeton University Press.

## Author

Robin K. S. Hankin

## Note

The code for setting the names is a dog's breakfast

## See also

[`preston`](https://robinhankin.github.io/untb/reference/preston.md)

## Examples

``` r
jj <- c(rep("oak",5) ,rep("ash",2),rep("elm",3),"pine","tea","yew")
a <- as.count(jj)

phi(a,addnames=FALSE) # three singleton spp, one species with abundance 2, etc
#> [1] 3 1 1 0 1
unphi(phi(a))   #should match 'a' except for species names (which are lost)
#> spp6 spp5 spp4 spp1 spp2 spp3 
#>    5    3    2    1    1    1 

data(butterflies)
phi(butterflies,add=FALSE)
#>  [1] 10  5  6  1  2  2  0  1  1  0  0  0  0  0  0  0  0  0  1  2  1  0  0  1  0
#> [26]  0  0  0  0  0  0  0  0  0  0  0  0  1  0  0  0  0  0  0  0  0  1  0  0  0
#> [51]  0  0  2

summary(unphi(phi(butterflies)))  #should match 'summary(butterflies)'
#> Number of individuals: 376 
#> Number of species: 37 
#> Number of singletons: 10 
#> Most abundant species: spp36 (53 individuals)
#> estimated theta:  9.989579 
```
