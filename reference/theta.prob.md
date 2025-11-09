# Posterior probabilities for theta

Determines the posterior probability and likelihood for theta, given a
count object

## Usage

``` r
theta.prob(theta, x=NULL, give.log=TRUE)
theta.likelihood(theta, x=NULL, S=NULL, J=NULL, give.log=TRUE)
```

## Arguments

- theta:

  biodiversity parameter

- x:

  object of class count or census

- give.log:

  Boolean, with `FALSE` meaning to return the value, and default `TRUE`
  meaning to return the (natural) logarithm of the value

- S, J:

  In function `theta.likelihood()`, the number of individuals (`J`) and
  number of species (`S`) in the ecosystem, if `x` is not supplied.
  These arguments are provided so that `x` need not be specified if `S`
  and `J` are known.

## Details

The formula was originally given by Ewens (1972) and is shown on page
122 of Hubbell (2001): \$\$\frac{J!\theta^S}{ 1^{\phi_1}2^{\phi_2}\ldots
J^{\phi_J} \phi_1!\phi_2!\ldots \phi_J!
\prod\_{k=1}^J\left(\theta+k-1\right)}.\$\$

The likelihood is thus given by
\$\$\frac{\theta^S}{\prod\_{k=1}^J\left(\theta+k-1\right)}.\$\$

Etienne observes that the denominator is equivalent to a Pochhammer
symbol \\(\theta)\_J\\, so is thus readily evaluated as
\\\Gamma(\theta+J)/\Gamma(\theta)\\ (Abramowitz and Stegun 1965,
equation 6.1.22).

## References

- S. P. Hubbell 2001. “The Unified Neutral Theory of Biodiversity”,
  Princeton University Press.

- W. J. Ewens 1972. “The sampling theory of selectively neutral
  alleles”, *Theoretical Population Biology*, **3**:87–112

- M. Abramowitz and I. A. Stegun 1965. *Handbook of Mathematical
  Functions*, New York: Dover

## Author

Robin K. S. Hankin

## Note

If estimating `theta`, use `theta.likelihood()` rather than
`theta.probability()` because the former function generally executes
**much** faster: the latter calculates a factor that is independent of
`theta`.

The likelihood function \\L(\theta)\\ is any function of \\\theta\\
proportional, for fixed observation \\z\\, to the probability density
\\f(z,\theta)\\. There is thus a slight notational inaccuracy in
speaking of “the” likelihood function which is defined only up to a
multiplicative constant. Note also that the “support” function is
usually defined as a likelihood function with maximum value \\1\\ (at
the maximum likelihood estimator for \\\theta\\). This is not easy to
determine analytically for \\J\>5\\.

Note that \\S\\ is a sufficient statistic for \\\theta\\.

Function `theta.prob()` does **not** give a PDF for \\\theta\\ (so, for
example, integrating over the real line does not give unity). The PDF is
over partitions of \\J\\; an example is given below.

Function `theta.prob()` requires a count object (as opposed to
`theta.likelihood()`, for which \\J\\ and \\S\\ are sufficient) because
it needs to call
[`phi()`](https://robinhankin.github.io/untb/reference/phi.md).

## See also

[`phi`](https://robinhankin.github.io/untb/reference/phi.md),
[`optimal.prob`](https://robinhankin.github.io/untb/reference/optimal.prob.md)

## Examples

``` r
theta.prob(1,rand.neutral(15,theta=2))
#> [1] -5.087596

gg <- as.count(c(rep("a",10),rep("b",3),letters[5:9]))
theta.likelihood(theta=2,gg)
#> [1] -34.48785

optimize(f=theta.likelihood,interval=c(0,100),maximum=TRUE,x=gg)
#> $maximum
#> [1] 3.720075
#> 
#> $objective
#> [1] -33.87535
#> 


## An example showing that theta.prob() is indeed a PMF:

a <- count(c(dogs=3,pigs=3,hogs=2,crabs=1,bugs=1,bats=1))
x <- partitions::parts(no.of.ind(a))
f <- function(x){theta.prob(theta=1.123,extant(count(x)),give.log=FALSE)}
sum(apply(x,2,f))  ## should be one exactly.
#> [1] 1
```
