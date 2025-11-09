# Print and plot objects of class Preston

Print and plot objects of class Preston

## Usage

``` r
# S3 method for class 'preston'
print(x, ...)
# S3 method for class 'preston'
plot(x, ...)
```

## Arguments

- x:

  Object of class “preston”

- ...:

  further arguments passed to
  [`print()`](https://rdrr.io/r/base/print.html) after class reset

## Author

Robin K. S. Hankin

## Note

Intended to work with the output of function
[`preston()`](https://robinhankin.github.io/untb/reference/preston.md).

See the vignette for how to annotate a Preston plot.

## See also

[`preston`](https://robinhankin.github.io/untb/reference/preston.md)

## Examples

``` r
data(butterflies)
print(preston(butterflies))
#>                   1  2  3-4  5-8  9-16  17-32  33-Inf
#> number of species 10 5    7    5     1      5       4
```
