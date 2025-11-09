# Etienne's sampling formula

Function `etienne()` returns the probability of a given dataset given
`theta` and `m` according to the Etienne's sampling formula. Function
`optimal.params()` returns the maximum likelihood estimates for `theta`
and `m` using numerical optimization

## Usage

``` r
etienne(theta, m, D, log.kda = NULL, give.log = TRUE, give.like = TRUE)
optimal.params(D, log.kda = NULL, start = NULL, give = FALSE, ...)
```

## Arguments

- theta:

  Fundamental biodiversity parameter

- m:

  Immigration probability

- D:

  Dataset; a count object

- log.kda:

  The KDA as defined in equation A11 of Etienne 2005. See details
  section

- give.log:

  Boolean, with default `TRUE` meaning to return the logarithm of the
  value

- give.like:

  Boolean, with default `TRUE` meaning to return the likelihood and
  `FALSE` meaning to return the probability

- start:

  In function `optimal.params()`, the start point for the optimization
  routine \\(\theta,m)\\.

- give:

  In function `optimal.params()`, Boolean, with `TRUE` meaning to return
  all output of the optimization routine, and default `FALSE` meaning to
  return just the point estimate

- ...:

  In function `optimal.params()`, further arguments passed to
  [`optim()`](https://rdrr.io/r/stats/optim.html)

## Details

Function `etienne()` is just Etienne's formula 6:
\$\$P\[D\|\theta,m,J\]=
\frac{J!}{\prod\_{i=1}^Sn_i\prod\_{j=1}^J{\Phi_j}!}
\frac{\theta^S}{(\theta)\_J}\times \sum\_{A=S}^J\left(K(D,A)
\frac{(\theta)\_J}{(\theta)\_A} \frac{I^A}{(I)\_J} \right)\$\$

where \\\log K(D,A)\\ is given by function
[`logkda()`](https://robinhankin.github.io/untb/reference/logkda.md)
(qv). It might be useful to know the (trivial) identity for the
Pochhammer symbol \[written \\(z)\_n\\\] documented in `theta.prob.Rd`.
For convenience, Etienne's Function `optimal.params()` uses
[`optim()`](https://rdrr.io/r/stats/optim.html) to return the maximum
likelihood estimate for \\\theta\\ and \\m\\.

Compare function
[`optimal.theta()`](https://robinhankin.github.io/untb/reference/optimal.prob.md),
which is restricted to no dispersal limitation, ie \\m=1\\.

Argument `log.kda` is optional: this is the \\K(D,A)\\ as defined in
equation A11 of Etienne 2005; it is computationally expensive to
calculate. If it is supplied, the functions documented here will not
have to calculate it from scratch: this can save a considerable amount
of time

## References

R. S. Etienne 2005. “A new sampling formula for biodiversity”. *Ecology
letters* 8:253-260

## Author

Robin K. S. Hankin

## See also

[`logkda`](https://robinhankin.github.io/untb/reference/logkda.md),[`optimal.theta`](https://robinhankin.github.io/untb/reference/optimal.prob.md)

## Examples

``` r
data(butterflies)
if (FALSE) optimal.params(butterflies) # \dontrun{}  #takes too long without PARI/GP


#Now the one from Etienne 2005, supplementary online info:

zoo <- count(c(pigs=1, dogs=1, cats=2, frogs=3, bats=5, slugs=8))
l <- logkda.R(zoo, use.brob=TRUE)  # Use logkda() if pari/gp is available
optimal.params(zoo, log.kda=l)  #compare his answer of 7.047958 and 0.22635923.
#>     theta         m 
#> 7.0577736 0.2261709 
```
