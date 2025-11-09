# Biodiversity dataset provided by SAHFOS

Species counts in the North Atlantic

## Usage

``` r
data(sahfos)
```

## References

Warner AJ and Hays GC 1994. “Sampling by the Continuous Plankton
Recorder Survey”. *Progress in Oceanography*, 34: 237-256

## Examples

``` r
data(sahfos)
preston(sahfos)
#>                   1  2  3-4  5-8  9-16  17-32  33-64  65-128  129-256  257-512
#> number of species 10 2    2    2     3      1      4       1        3        5
#>                    513-1024  1025-2048  2049-4096  4097-8192  8193-16384
#> number of species         2          5          3          1           5
#>                    16385-32768  32769-65536  65537-131072  131073-Inf
#> number of species            2            2             0           1
```
