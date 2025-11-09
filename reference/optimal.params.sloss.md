# Estimation of neutral community parameters using a two-stage maximum-likelihood procedure

Function `optimal.params.sloss()` returns maximum likelihood estimates
of `theta` and `m(k)` using numerical optimization.

It differs from `untb`'s
[`optimal.params()`](https://robinhankin.github.io/untb/reference/etienne.md)
function as it applies to a network of smaller community samples `k`
instead of to a single large community sample.

Although there is a single, common `theta` for all communities,
immigration estimates are provided for each local community `k`, sharing
a same biogeographical background.

## Usage

``` r
optimal.params.sloss(D, nbres = 100, ci = FALSE, cint = c(0.025, 0.975))
```

## Arguments

- D:

  Species counts over a network of community samples (species by sample
  table)

- nbres:

  Number of resampling rounds for `theta` estimation

- ci:

  Specifies whether bootstraps confidence intervals should be provided
  for estimates

- cint:

  Bounds of confidence intervals, if ci = T

## Value

- theta:

  Mean `theta` estimate

- I:

  The vector of estimated immigration numbers `I(k)`

Output of the bootstrap procedure, if ci = T:

- thetaci:

  Confidence interval for `theta`

- msampleci:

  Confidence intervals for `m(k)`

- thetasamp:

  theta estimates provided by the resampling procedure

- Iboot:

  Bootstrapped values of `I(k)`

- mboot:

  Bootstrapped values of `m(k)`

## References

Francois Munoz, Pierre Couteron, B. R. Ramesh, and Rampal S. Etienne
2007. “Estimating parameters of neutral communities: from one single
large to several small samples”. *Ecology* 88(10):2482-2488

## Author

Francois Munoz

## Note

The function returns unhelpful output when run with the `caruso` dataset
as in `optimal.params.sloss(caruso)`. The reason for this behaviour is
unknown.

## See also

[optimal.params](https://robinhankin.github.io/untb/reference/etienne.md),
[optimal.params.gst](https://robinhankin.github.io/untb/reference/optimal.params.gst.md)

## Examples

``` r
data(ghats)
optimal.params.sloss(ghats)
#> $theta
#> [1] 55.55249
#> 
#> $m
#>  [1] 0.010169266 0.012183169 0.015668392 0.011809752 0.014205202 0.016711233
#>  [7] 0.015310061 0.012147998 0.015344402 0.015566512 0.013218774 0.010232225
#> [13] 0.006476517 0.009309429 0.016707263 0.014491497 0.012162066 0.009190696
#> [19] 0.009243802 0.012035898 0.012229750 0.011327484 0.014109889 0.005542073
#> [25] 0.012006370 0.007279013 0.022656762 0.015584249 0.012371054 0.011394466
#> [31] 0.018888178 0.017471137 0.011089396 0.006492917 0.009196983 0.012487368
#> [37] 0.020117358 0.014740135 0.019014335 0.018376337 0.015496710 0.017826122
#> [43] 0.012099540 0.013114927 0.010243057 0.014614345 0.012467319 0.015696922
#> [49] 0.012454655 0.018108994
#> 
#> $I
#>  [1]  2.1985808  3.2436918  7.1152556  2.5694411  5.5622204 10.2311375
#>  [7]  4.8354600  4.3163827  5.1737293  8.4123348  4.6081727  2.9876835
#> [13]  0.8800294  3.7493665  6.4226505  6.6758830  2.7578438  2.0778125
#> [19]  1.9313198  2.5583304  2.6248078  2.7382866  5.7962901  1.9338165
#> [25]  3.0380686  0.7552357 14.4191985  6.9022999  3.5824401  3.7458837
#> [31] 16.8453334  8.3930121  3.0613536  1.1240802  1.4758941  7.3848400
#> [37] 12.9957276  7.5850530 13.0059175 13.6096933  9.7277142 10.3453061
#> [43]  6.8954732  9.2360039  2.8045961  4.7607805  4.5322727  7.6865718
#> [49]  4.7420104  8.0226954
#> 
```
