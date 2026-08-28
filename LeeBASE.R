rm(list=ls())

tabla <- read.csv('BASE_2708_V1.csv')

titulos <- names(tabla)

print(titulos[7:96])

suj = as.numeric(tabla[2,7:96])

print(sum(suj))




