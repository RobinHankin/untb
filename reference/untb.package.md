# Unified neutral theory of biodiversity

Numerical simulations, and visualizations, of the unified neutral theory
of biodiversity

## Details

Package `untb` uses two classes of object to represent an ecosystem:
class `count` and class `census`. In essence, a `count` object is a
table of species abundances and a `census` object is a list of
individuals. See
[`?census`](https://robinhankin.github.io/untb/reference/census.md) and
[`?count`](https://robinhankin.github.io/untb/reference/count.md) for
more details. Although objects of either class can be coerced to the
other, class `count` is the preferred form: it is a more compact
representation, especially for large ecosystems.

The package simulates neutral ecological drift using function
[`untb()`](https://robinhankin.github.io/untb/reference/untb.md).
Function
[`display.untb()`](https://robinhankin.github.io/untb/reference/display.untb.md)
displays a semi-animated graphic of an ecosystem undergoing neutral
drift.

## Author

Robin K. S. Hankin

Maintainer: \<hankin.robin@gmail.com\>

## References

- S. P. Hubbell 2001. “The Unified Neutral Theory of Biodiversity”.
  Princeton University Press.

- R. K. S. Hankin 2007. *Introducing **untb**, an R package for
  simulating ecological drift under the unified neutral theory of
  biodiversity*. Journal of Statistical Software, volume 22, issue 12

## Examples

``` r
a <- untb(start=rep(1,100),prob=0.005,gens=5000,keep=FALSE)
preston(a)
#>                   1  2  3-4  5-8  9-16  17-32  33-Inf
#> number of species  0 0    0    1     1      0       2
no.of.spp(a)
#> [1] 4

display.untb(start=rep(1,100),prob=0.1,gens=1000)


data(butterflies)
plot(butterflies,uncertainty=TRUE)

```
