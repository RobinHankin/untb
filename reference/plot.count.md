# Abundance curves

Plot the ranked abundance curve

## Usage

``` r
# S3 method for class 'count'
plot(x, uncertainty = FALSE, expectation = FALSE, theta = NULL, n = 10, ...)
# S3 method for class 'census'
plot(x, uncertainty = FALSE, expectation = FALSE, theta = NULL, n = 10, ...)
```

## Arguments

- x:

  Ecosystem object, coerced to class count

- uncertainty:

  Boolean, with `TRUE` meaning to show bootstrapped estimates for the
  species diversity curve, and default `FALSE` meaning to omit this

- expectation:

  Boolean, with `TRUE` meaning to plot expected abundances, and default
  `FALSE` meaning not to plot them. **Warning** this option takes a
  loooong time to run, even for moderate values of \\J\\

- theta:

  Fundamental biodiversity number used if argument `uncertainty` or
  `expectation` are `TRUE`. Default value of `NULL` means to use the
  maximum likelihood estimate returned by function
  [`optimal.theta()`](https://robinhankin.github.io/untb/reference/optimal.prob.md)

- n:

  Number of bootstrapped estimates to plot

- ...:

  Extra parameters passed to
  [`untb()`](https://robinhankin.github.io/untb/reference/untb.md)

## Details

Plots a ranked abundance curve, optionally with parametrically resampled
datasets showing the uncertainties

## Note

If using `expectation`, it's usually necessary to set `ylim` and
possibly `xlim` manually.

## Author

Robin K. S. Hankin

## Examples

``` r
data(copepod)
plot(copepod)


data(butterflies)
plot(butterflies,uncertainty=TRUE)


x <- count(c(pigs=1, dogs=1, cats=2, frogs=3, bats=5, slugs=8))
plot(x,expectation=TRUE,ylim=c(0.5,10))

```
