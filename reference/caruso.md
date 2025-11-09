# Dataset due to Caruso

A dataframe in standard format due to Migliorini and Caruso presenting
observations of oribatid mites.

## Usage

``` r
data(caruso)
```

## Format

Dataset `caruso` is a data frame with 194 observations on 5 variables.
Each row corresponds to a species; the observations (rows) are the
species abundances in each of 5 habitats.

Following Migliorini et al 2002, the habitats were:

- a pure beech woodland (‘`Beech`’)

- a coppice woodland (‘`Coppice`’)

- grassland (‘`Grassland`’)

- heathland (‘`Heathland`’)

- ‘Biancana’ badlands (‘`Biancana`’)

## Details

Oribatid mites are rather small and very interesting free living soil
microarthropods. They have a huge species diversity with populations
characterised by highly aggregated distributions over multiple spatial
scales ranging from a few centimetres to hundreds of meters.

Within each habitat, several soil samples were collected (five randomly
located replicates per each month: see the paper Migliorini et al.
2002). So, actually, that is a network of small samples that make a
single large sample.

The five study areas of this data set belong to five habitats that are
very typical of that Mediterranean region. These five areas also belong
to a rather homogeneous biogeographical region (southern Tuscany). On
the ground of what is known on the biology and community patterns of
Oribatida, several a-priori hypotheses can be made on expected changes
in the diversity of their assemblages and immigration rates respectively
between and within the five areas. For instance, under the Neutral Model
one might expect that the Beech forest should have the highest Theta and
an immigration rate of about 1, while one might expect the opposite for
the Biancana (a very arid habitat, a kind of gariga/garrigue with very
patchy vegetation).

## Source

Data kindly supplied by Tancredi Caruso

## See also

[`extractor`](https://robinhankin.github.io/untb/reference/extractor.md)

## References

- T. Caruso and others 2007. “The Berger-Parker index as an effective
  tool for monitoring the biodiversity of disturbed soils: a case study
  on Mediterranean oribatid (Acari: Oribatida) assemblages”.
  *Biodiversity Conservation*, 16:3277-3285

- M. Migliorini, A. Petrioli, and F. Bernini 2002. “Comparative analysis
  of two edaphic zoocoenoses (Oribatid mites and Carabid beetles) in
  five habitats of the ‘Pietraporciana’ and ‘Lucciolabella’ Nature
  Reserves (Orcia Valley, central Italy)”. *Acta Oecologica*, 23:361-374

## Note

Executing `optimal.params.sloss(caruso)` does not return useful output.
The reason for this is unknown.

## Examples

``` r
data(caruso)

summary(count(caruso[,1]))
#> Number of individuals: 10802 
#> Number of species: 122 
#> Number of singletons: 24 
#> Most abundant species: Microppia_minus (1826 individuals)
#> estimated theta:  19.17696 

```
