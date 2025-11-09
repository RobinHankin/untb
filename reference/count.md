# Construct, coerce, and test for a count object

In package untb, ecosystem data is held in one of two preferred forms:
census data and count data. Function `count` creates an object of class
“count”, and `as.count()` coerces to this class.

## Usage

``` r
as.count(a,add="")
count(a)
is.count(a)
```

## Arguments

- a:

  Ecosystem data. In function `as.count()`, if a table, interpret as
  species count data; otherwise, interpret as census data. Special
  dispensation is made for single rows of a dataframe

- add:

  In function `as.count()`, character argument with default `""` (empty
  string) meaning to leave the species names unchanged. A non-empty
  string is prepended to the species names using
  [`paste()`](https://rdrr.io/r/base/paste.html). This is useful if the
  species names are integers because the display can become confusing

## Details

A “count” object is a list of species together with their abundance. It
also has class “table”; compare “census” objects.

An object of class “count” is a table sorted from most to least abundant
species. The singletons are thus tabulated last.

Function `count()` takes a vector, the elements of which are interpreted
as abundances. If any of the elements are named, the names are
interpreted as species names (unnamed elements are given the null name).
If the vector is unnamed, then the species names are upper case letters,
with the first element being named “`A`”, the second “`B`”, and so on;
this behaviour is inherited from
[`as.table()`](https://rdrr.io/r/base/table.html). Note that this means
that the species names are not necessarily in alphabetical order. From
version 1.6-9, zero elements are interpreted as zero abundance species
(ie extinct).

To access or change species names, use
[`names()`](https://rdrr.io/r/base/names.html) and `names<-`
respectively.

Function `as.count()` coerces its argument to count form.

## Value

Returns an object of class “count”.

## Author

Robin K. S. Hankin

## See also

[`census`](https://robinhankin.github.io/untb/reference/census.md)

## Examples

``` r
count(c(
   slugs = 9, pigs = 1, dogs = 1, hogs = 2, bats = 3,
   cats = 1, frogs = 1, pugs = 2, ants = 1,
   yaks = 2, rats = 4))
#> slugs  rats  bats  hogs  pugs  yaks  pigs  dogs  cats frogs  ants 
#>     9     4     3     2     2     2     1     1     1     1     1 


a <- c(rep("oak",5) ,rep("ash",2),rep("elm",3),rep("xx",4))
as.count(a)
#> oak  xx elm ash 
#>   5   4   3   2 




data(saunders)
as.count(saunders[1,-(1:150)])
#>            Exogoninae             Nematodes              Syllinae 
#>                    27                    24                    20 
#>            Nereididae            Eusyllinae            Nemerteans 
#>                     6                     5                     5 
#>          Protoaricia.            Sabellidae Spionidae...Boccardia 
#>                     4                     4                     3 

jj <- sample(1:5,5,replace=TRUE)
as.count(jj)
#> 3 5 4 
#> 2 2 1 
as.count(jj,add="spp.")
#> spp.3 spp.5 spp.4 
#>     2     2     1 
```
