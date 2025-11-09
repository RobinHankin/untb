# Simpson's diversity index

Simpson's diversity index

## Usage

``` r
simpson(x, with.replacement=FALSE)
```

## Arguments

- x:

  Ecosystem vector; coerced to class `count`

- with.replacement:

  Boolean, with default `FALSE` meaning to sample without replacement;
  see details section

## Details

Returns the Simpson index \\D\\: the probability that two randomly
sampled individuals belong to different species.

There is some confusion as to the precise definition: some authors
specify that the two individuals are necessarily distinct (ie sampling
without replacement), and some do not.

Simpson (1949) assumed sampling without replacement and gave

\$\$ 1-\frac{\sum\_{i=1}^Sn_i\left(n_i-1\right)}{J(J-1)} \$\$ in our
notation.

He and Hu (2005) assumed sampling with replacement: \$\$
1-\frac{\sum\_{i=1}^Sn_i^2}{J^2}. \$\$

The difference is largely academic but is most pronounced when many
species occur with low counts (ie close to 1).

## References

- S. P. Hubbell 2001. “The Unified Neutral Theory of Biodiversity”.
  Princeton University Press.

- F. He and X.-S. Hu 2005. “Hubbell's Fundamental Biodiversity Parameter
  and the Simpson Diversity Index”. *Ecology Letters*, volume 8,
  pp386-390. doi: `10.1111/j.1461-0248.2005.00729.x`

- E. H. Simpson 1949. “Measurement of diversity”, *Nature*, volume 163,
  p688

## Author

Robin K. S. Hankin

## See also

[`preston`](https://robinhankin.github.io/untb/reference/preston.md)

## Examples

``` r
data(butterflies)

D <- simpson(butterflies)
theta <- optimal.prob(butterflies)*2*no.of.ind(butterflies)

# compare theta with D/(1-D) (should be roughly equal; see He & Hu 2005):
theta
#> [1] 9.989579
D/(1-D)
#> [1] 11.32517


# Second argument pedantic in practice.

# Mostly, the difference is small:
simpson(butterflies,FALSE) - simpson(butterflies,TRUE)
#> [1] 0.002443791

# Most extreme example:
x <- count(c(1,1))
simpson(x,TRUE)
#> [1] 0.5
simpson(x,FALSE)
#> [1] 1

```
