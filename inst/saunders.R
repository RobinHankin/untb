## Sourcing this file shows how to  create datasets
## saunders.exposed, saunders.sheltered, saunders.exposed.tot,
## saunders.sheltered.tot from 'saunders'.


require(untb, quietly=TRUE)
data("saunders")

jj <- t(saunders)[-1,]
jj.exposed <- saunders[,1]

"saunders.tot" <- count(apply(jj,1,sum))

"saunders.exposed"   <- jj[, jj.exposed]
"saunders.sheltered" <- jj[,!jj.exposed]

"saunders.exposed.tot"   <- count(apply(saunders.exposed,1,sum))
"saunders.sheltered.tot" <- count(apply(saunders.sheltered,1,sum))

rm(jj)
rm(jj.exposed)
