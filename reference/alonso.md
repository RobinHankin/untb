# Various functions from Alonso and McKane 2004

Various functions from Alonso and McKane 2004 dealing with analytical
solutions of a neutral model of biodiversity

## Usage

``` r
alonso.eqn6(JM, n, theta)
alonso.eqn11(J, n, theta)
alonso.eqn12(J, n, theta, give=FALSE)
```

## Arguments

- J,JM:

  Size of the community and metacommunity respectively

- n:

  Abundance

- theta:

  Biodiversity constant

- give:

  In function `alonso.eqn12()`, Boolean with default `FALSE` meaning to
  return the value of the integral, and `TRUE` meaning to return the
  full output of [`integrate()`](https://rdrr.io/r/stats/integrate.html)

## Details

Notation follows that of Alonso and McKane 2004

## References

D. Alonso and A. J. McKane 2004. “Sampling Hubbell's neutral model of
biodiversity”, Ecology Letters 7:901-910

## Author

Robin K. S. Hankin

## Note

Function `alonso.eqn6()` is identical to function
[`vallade.eqn5()`](https://robinhankin.github.io/untb/reference/vallade.md)

## Examples

``` r
J <- 100
plot(1:J , alonso.eqn11(J,n=1:J,
theta=5),log="y",type="l",xlab="n",ylab=expression(S(n)),main="Eqns
11 and 12 of Alonso and McKane")
points(1:J , alonso.eqn12(J,n=1:J, theta=5),type="l",lty=2)
legend("topright",legend=c("equation 11","equation 12"),lty=1:2)
```
