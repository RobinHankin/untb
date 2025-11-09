# Expected abundances under the neutral model

Returns a vector of expected abundances of the i-th ranked species under
the neutral model

## Usage

``` r
expected.abundance(J, theta)
```

## Arguments

- J:

  Size of the ecosystem

- theta:

  Biodiversity parameter

## Value

Returns an object of class `count`. Species names (capital letters) are
assigned by function
[`count()`](https://robinhankin.github.io/untb/reference/count.md).

## References

S. P. Hubbell 2001. “The Unified Neutral Theory of Biodiversity”.
Princeton University Press.

## Author

Robin K. S. Hankin

## Note

Function is very slow even for moderate J.

## See also

[`rand.neutral`](https://robinhankin.github.io/untb/reference/rand.neutral.md),[`count`](https://robinhankin.github.io/untb/reference/count.md)

## Examples

``` r
expected.abundance(J=10,theta=3)
#>            A            B            C            D            E            F 
#> 4.4711170860 2.2510808983 1.3637195617 0.8804978355 0.5808816964 0.3066629464 
#>            G            H            I            J 
#> 0.1140706169 0.0277780032 0.0039448052 0.0002465503 

sum(expected.abundance(J=10,theta=3))  #should be 10
#> [1] 10
```
