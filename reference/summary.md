# Summary methods for count and census objects

Summary methods for count and census objects

## Usage

``` r
# S3 method for class 'count'
summary(object, ...)
# S3 method for class 'census'
summary(object, ...)
```

## Arguments

- object:

  Ecosystem object coerced to class count

- ...:

  Further arguments, currently ignored

## Details

Prints a summary of an ecosystem object.

## Author

Robin K. S. Hankin

## See also

[`phi`](https://robinhankin.github.io/untb/reference/phi.md)

## Examples

``` r
data(ostracod)
summary(ostracod)
#> Number of individuals: 1159337 
#> Number of species: 129 
#> Number of singletons: 2 
#> Most abundant species: o010650 (102035 individuals)
#> estimated theta:  11.12049 
```
