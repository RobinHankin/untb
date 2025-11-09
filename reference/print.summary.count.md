# Print method for summary objects

Print method for summary objects

## Usage

``` r
# S3 method for class 'summary.count'
print(x, ...)
```

## Arguments

- x:

  Object of class “summary.count”

- ...:

  extra arguments, currently ignored

## Author

Robin K. S. Hankin

## Examples

``` r
data(butterflies)
summary(butterflies)
#> Number of individuals: 376 
#> Number of species: 37 
#> Number of singletons: 10 
#> Most abundant species: Little Sulphur (53 individuals)
#> estimated theta:  9.989579 
```
