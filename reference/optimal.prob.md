# Returns an estimate of the fundamental biodiversity number

Returns a maximum likelihood estimate for the fundamental biodiversity
number \\\theta\\ (function `optimal.theta()`) or the probability of
mutation (function `optimal.prob()`) and optionally return information
about the likely error

## Usage

``` r
optimal.prob(x,  interval=NULL, N=NULL, like=NULL, ...)
optimal.theta(x, interval=NULL, N=NULL, like=NULL, ...)
```

## Arguments

- x:

  Ecosystem vector or species count table

- interval:

  Bracketing interval for probability of mutation to be passed to the
  optimization routine (here
  [`optimize()`](https://rdrr.io/r/stats/optimize.html)). Default of
  `NULL` means to use a wide interval. Note that this argument is
  interpreted as an interval of *\\\theta\\* for both `optimal.prob()`
  and `optimal.theta()`.

- N:

  Integer; the number of parametric resampled estimates to give. Default
  of `NULL` means to return just the maximum likelihood estimate

- like:

  Units of likelihood to calculate credible interval. Edwards recommends
  using 2

- ...:

  Further arguments passed to
  [`optimize()`](https://rdrr.io/r/stats/optimize.html)

## Note

The fundamental biodiversity parameter \\\theta\\ is \\2\nu J\\, where
\\\nu\\ is the probability of mutation (ie, as estimated by
`optimal.prob()`), and \\J\\ is the size of the ecosystem.

For the general case of dispersal limitation, see functions
[`etienne()`](https://robinhankin.github.io/untb/reference/etienne.md)
and
[`optimal.params()`](https://robinhankin.github.io/untb/reference/etienne.md).

## Author

Robin K. S. Hankin

## See also

[`etienne`](https://robinhankin.github.io/untb/reference/etienne.md),[`optimal.params.sloss`](https://robinhankin.github.io/untb/reference/optimal.params.sloss.md),[`optimal.params.gst`](https://robinhankin.github.io/untb/reference/optimal.params.gst.md)

## Examples

``` r
data(butterflies)
optimal.prob(butterflies)
#> [1] 0.01328401
optimal.theta(butterflies)
#> [1] 9.989579
```
