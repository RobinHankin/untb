# Extract rows of a database in count form

Extracts rows of a data frame and, if there is one row only, coerces to
a count object, preserving the species names

## Usage

``` r
extractor(x, index)
```

## Arguments

- x:

  A data frame with column headings being species names

- index:

  A vector of indices to extract

## Details

If `index` is length one, the numbers are interpreted as species counts,
and the output is coerced to a `count` object.

## Author

Robin K. S. Hankin

## Examples

``` r
data(saunders)
plot(extant(extractor(saunders,1)))
```
