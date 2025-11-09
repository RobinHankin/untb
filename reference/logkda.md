# Etienne's K(D,A)

Calculates Etienne's \\K(D,A)\\ using a variety of different methods

## Usage

``` r
logkda.R(a, use.brob=TRUE)
logkda.a11(a)
logkda.pari(a, numerical=TRUE, gp_binary = "gp")
logkda.polyn(a)
logkda(a, method="pari", ...)
logkda_pari_unix(a, numerical, pari_string, gp_binary)
logkda_pari_windows(a, numerical, pari_string)
```

## Arguments

- a:

  Count object

- use.brob:

  In function `logkda.R()`, Boolean, with default `TRUE` meaning to use
  Brobdingnagian numbers for the calculation. This is slower but allows
  one to analyze larger datasets

- numerical:

  Boolean, with default `TRUE` meaning to coerce to a numerical vector
  (thereby losing precision), and `FALSE` meaning to return the string
  produced by `pari/gp`

- method:

  In function `logkda()`, a string specifying which method to use. Takes
  “R”, “a11”, or “pari”

- pari_string,gp_binary:

  configuration variables (not intended to be changed by the user)

- ...:

  In function `logkda()`, further arguments which are passed to the
  other functions

## Details

The user should use function `logkda()`, which is a wrapper for the
other functions. Note that the default method, `pari`, requires the
pari/gp system to be installed. This is the preferred option because it
is much faster than the other methods.

Functions `logkda.R()` and `logkda.pari()` calculate \\K(D,A)\\ using
the method appearing in Etienne (2005), supplementary online material;
they use `R` and `pari/gp` respectively. Function `logkda.a11` is a
direct implementation of formula A11 in Etienne (2005). The formula is

\$\$ K(D,A)= \sum\_{\left\\a_1,\ldots,a_S\|\sum a_i=A\right\\}
\prod\_{i=1}^S\frac{ \overline{s}\left(n_i, a_i\right)
\overline{s}\left(a_i, 1\right) }{ \overline{s}\left(n_i,1\right)}\$\$
where \\\overline{s}\left(n_i,a_i\right)\\ are Stirling numbers of the
first kind (see `logS1`).

Function `logkda.pari()` dispatches to either `logkda_pari_unix()` or
`logkda_pari_windows()` but the windows function is not guaranteed to
work.

## References

R. S. Etienne 2005. “A New Sampling Formula for Neutral Biodiversity”.
*Ecology Letters*, volume 8, pp253–260.
`doi: 10.111/j.1461-0248.2004.00717.x`

C. Batut and K. Belabas and D. Bernardi and H. Cohen and M. Olivier
2000. “User's guide to PARI/GP”. <http://www.parigp-home.de/>

## Author

Robin K. S. Hankin; `logkda()` is an R transliteration of `pari/gp` code
appearing in Etienne 2005 (supplementary online material) due to Chave.

Function `logkda.polyn()` provided by Francois Munoz.

Function `.logkda.pari.windows()` provided by Andrea Manica and Francois
Munoz.

## Note

If `method` takes its default value of “`pari`”, and `pari/gp` is not
installed (the test is `gp --version`), then the method is changed to
`R` and a warning given.

Function `logkda.a11()` is included because the computational method is
a direct transcription of formula A11; it is very slow.

Function `logkda.pari()` is a wrapper for `.logkda.pari.windows()` or
`.logkda.pari.unix()`. It uses “`if(R.Version()$os == 'windows')`” to
check for windows operating systems.

It would be nice to use `gp2c` (rather than `gp`) but I can't make the
“`-g`” flag work properly; and I had to hack `gp2c-run` to make it call
`gp` with the `-q` flag

## See also

[`etienne`](https://robinhankin.github.io/untb/reference/etienne.md),[`logS1`](https://robinhankin.github.io/untb/reference/logS1.md)

## Examples

``` r
a <- count(c(dogs=7,pigs=3,crabs=1,hogs=1,slugs=1))

if (FALSE) logkda(a) # \dontrun{}

logkda.R(a)
#> [1] 0.000000 1.373716 2.217693 2.730572 2.972051 2.910991 2.491827 1.609438
#> [9] 0.000000
logkda.R(a, use.brob=FALSE)
#> [1] 0.000000 1.373716 2.217693 2.730572 2.972051 2.910991 2.491827 1.609438
#> [9] 0.000000
logkda.a11(a)
#> [1] 0.000000 1.373716 2.217693 2.730572 2.972051 2.910991 2.491827 1.609438
#> [9] 0.000000
# All four should be the same up to numerical errors
```
