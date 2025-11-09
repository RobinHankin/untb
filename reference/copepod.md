# Copepod data supplied by Phil Pugh

A dataset of copepod (resp: ostracod) abundances supplied by Dr Phil
Pugh of the National Oceanography Centre, Southampton

## Usage

``` r
data(copepod)
data(ostracod)
```

## Format

A table with names of different copepod (resp: ostracod) species, and
entries corresponding to the numbers of individuals of each species.

## Source

Kindly supplied by Southampton Oceanography Centre.

## Examples

``` r
data(copepod)
optimize(f=theta.likelihood,interval=c(10,100), maximum=TRUE,
S=no.of.spp(copepod), J=no.of.ind(copepod), give.log=TRUE)
#> $maximum
#> [1] 34.72088
#> 
#> $objective
#> [1] -24553989
#> 

data(ostracod)
preston(ostracod)
#>                   1  2  3-4  5-8  9-16  17-32  33-64  65-128  129-256  257-512
#> number of species  2 4    2    4     7      7      8       4        5        5
#>                    513-1024  1025-2048  2049-4096  4097-8192  8193-16384
#> number of species        17          7         14          7          15
#>                    16385-32768  32769-65536  65537-Inf
#> number of species            8            9          4
```
