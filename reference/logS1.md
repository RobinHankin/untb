# logarithms of Stirling numbers of the first kind

Natural logarithms of Stirling numbers of the first kind, used by
function
[`logkda.a11()`](https://robinhankin.github.io/untb/reference/logkda.md)
(dataset `logS1`) and function
[`logkda.polyn()`](https://robinhankin.github.io/untb/reference/logkda.md)
(dataset `logS1vect`).

## Usage

``` r
logS1
```

## Format

Dataset `logS1` is a 100-by-100 matrix of logs of Stirling numbers of
the first kind; `logS1vect` is a vector of length 499500

## Source

Calculated by Maple

## See also

[`etienne`](https://robinhankin.github.io/untb/reference/etienne.md)

## Examples

``` r
exp(logS1[1:5,1:5])
#>      [,1] [,2] [,3] [,4] [,5]
#> [1,]    1    0    0    0    0
#> [2,]    1    1    0    0    0
#> [3,]    2    3    1    0    0
#> [4,]    6   11    6    1    0
#> [5,]   24   50   35   10    1
```
