# Animation of neutral ecological drift

Displays an ongoing simulation of neutral ecological drift using nice
colours and a simple animation technique. **Does not work as intended in
RStudio: use base R**

## Usage

``` r
display.untb(start, gens=100, prob.of.mutate = 0, cex=3, individually
= TRUE, ask = FALSE, flash = FALSE, delay = 0, cols=NULL, ...)
```

## Arguments

- start:

  Starting ecosystem; coerced to class census. Usually, pass an object
  of class count; see examples. To start with a monoculture of size 10,
  use `start=rep(1,10)` and to start with a system of maximal diversity
  (ie all singletons), use `start=1:10`

- gens:

  Number of generations to simulate

- prob.of.mutate:

  Probability of mutation. The default of zero corresponds to
  \\\theta=0\\ and this means that any ecosystem will eventually become
  a monoculture (it is particularly instructive to watch this happen,
  especially with a starting ecosystem of maximal
  diversity\\\mbox{---}\\but be warned, this can take a long time,
  especially for ecosystems with a large number of individuals). Nonzero
  values mean that a nontrivial dominance-diversity curve will
  eventuate, although this too can take a long time to happen. Try a
  nonzero value of `prob.of.mutate` with monoculture start (use
  `individually=FALSE` for such experiments)

- cex:

  The size of the dots used for plotting, defaulting to 3

- individually:

  Boolean, with default `TRUE` meaning that a timestep means the death
  of a single individual and the simultaneous birth of a new individual;
  and `FALSE` meaning that a timestep refers to every individual in the
  system

- ask:

  Boolean, with default `FALSE` meaning to display the generations
  autonomously, and `TRUE` meaning to wait for the user to hit the
  “return” before proceeding

- flash:

  Boolean, with `TRUE` meaning to indicate the site of a death/birth
  with a flashing ring; and default `FALSE` meaning to omit the flashing
  ring. Use `TRUE` for pedagogic purposes, possibly with `ask` set to
  `TRUE`, or a nonzero `delay`. This option only kicks in if
  `individually` is `TRUE`

- delay:

  Time delay between generations in seconds; meaningful whatever the
  value of `flash` and `individually`

- cols:

  A vector of colours with default `NULL` meaning to choose them
  randomly. Useful for printing stills from a movie

- ...:

  Further arguments passed to
  [`plot()`](https://rdrr.io/r/graphics/plot.default.html) and
  [`points()`](https://rdrr.io/r/graphics/points.html)

## References

S. P. Hubbell 2001. “The Unified Neutral Theory of Biodiversity”.
Princeton University Press.

## Author

Robin K. S. Hankin

## Examples

``` r
data(butterflies)
display.untb(start=butterflies,prob=0, gens=1e2)
```
