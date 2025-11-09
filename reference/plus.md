# Add two count objects

Adds two count objects

## Usage

``` r
# S3 method for class 'count'
a + b
# S3 method for class 'census'
a + b
```

## Arguments

- a,b:

  objects of class `count`

## Details

Consider count objects `a` and `b`. Then `a+b` is a count object that
records the number of each species in `a` and `b` combined. It is as
though the organisms in the surveys were pooled.

Census objects are coerced to count objects, added, then the result
coerced to a count object.

The operation is commutative and associative.

## Author

Robin K. S. Hankin, based on an R-help tip from Gabor Grothendiek

## Examples

``` r
a <- count(c(dogs=4,pigs=0,slugs=5))
b <- count(c(slugs=4,hogs=1,frogs=19))

a+b
#> frogs slugs  dogs  hogs  pigs 
#>    19     9     4     1     0 
```
