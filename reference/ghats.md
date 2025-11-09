# Tree counts in 1-ha plots from the Western Ghats mountains (South India)

Tree species counts are given in 50 one-hectare sampling plots (species
by sample matrix). This only includes trees over 10 cm dbh (diameter at
breast height) and species labels (row names) are numeric.

## Usage

``` r
data(ghats)
```

## Format

Data frame displaying 304 species counts over 50 one-hectare plots.

## Source

Ecological Archives E088-149-A1.
<http://www.esapubs.org/Archive/ecol/E088/149/appendix-A.htm>

## References

Francois Munoz, Pierre Couteron, B. R. Ramesh, and Rampal S. Etienne
2007. “Estimating parameters of neutral communities: from one single
large to several small samples.” *Ecology* 88(10):2482-2488.

## Examples

``` r
data(ghats)
# Rank-abundance picture of plot 1 (column 1 in ghats)
plot(extant(count(ghats[,1])))


#histogram of optimal theta across the 50 plots:
hist(apply(ghats,2,optimal.theta),col='gray')

```
