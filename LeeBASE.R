rm(list=ls())

source('Fun_calculaSCL90.R')

tabla <- read.csv('BASE_2708_V1.csv')

titulos <- names(tabla)

print(titulos[7:96])

nn = dim(tabla)

print(nn)

suj = as.numeric(tabla[2,7:96])

for (i in 1:nn[1]){
  ss = tabla[i,]
  nombre = as.character(ss[1])
  scl90 = as.numeric(ss[7:96])
  if (!is.na(scl90[1])){
    print(nombre)
    print(scl90)
    res = calculoSCL90(scl90)
    print(res)
  }
}




