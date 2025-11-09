# Construct, coerce, and test for a census object

In package untb, ecosystem data is held in one of two preferred forms:
census data and count data. Function `as.census()` coerces to census
format.

## Usage

``` r
census(a)
as.census(a)
is.census(a)
```

## Arguments

- a:

  Ecosystem data. In function `as.census()`, if a table, interpret as
  species count data; otherwise, interpret as census data

## Details

A “census” object is a list of individuals in the form of an unnamed
vector whose elements indicate the individuals' species; compare “count”
objects.

An object of class “census” is also an unordered factor. The levels are
always in alphabetical order.

Function `census()` takes an object of class “count” and returns an
object of class “census”. This function is not really intended for the
end user.

Function `as.census()` coerces to class “count” then returns `census()`
of the result.

## Value

Returns an object of class “census”.

## Author

Robin K. S. Hankin

## See also

[`count`](https://robinhankin.github.io/untb/reference/count.md)

## Examples

``` r
jj <- c(dogs=4,pigs=10,slugs=0,fish=1)

x <- census(jj)   # slugs appear as zero abundance
extant(x)  # slugs gone
#> pigs dogs fish 
#>   10    4    1 

x+x   # count method for census objects: order of elements lost
#>  [1] pigs pigs pigs pigs pigs pigs pigs pigs pigs pigs pigs pigs pigs pigs pigs
#> [16] pigs pigs pigs pigs pigs dogs dogs dogs dogs dogs dogs dogs dogs fish fish
#> Levels: pigs dogs fish slugs


as.census(jj)  # probably NOT what you meant
#> [1] 0  1  4  10
#> Levels: 0 1 4 10

a <- c(rep("oak",5) ,rep("ash",2),rep("elm",3),rep("xx",4))
# note that "a" is a plain vector here.
as.census(a)
#>  [1] oak oak oak oak oak xx  xx  xx  xx  elm elm elm ash ash
#> Levels: oak xx elm ash
```
