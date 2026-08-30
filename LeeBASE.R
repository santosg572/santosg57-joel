rm(list=ls())

source('Fun_calculaSCL90.R')

tabla <- read.csv('BASE_2708_V1.csv')

attach(tabla)

datosN <- cbind(Nombre, X, Age, Group, SCL90_1)

#print(datosN)

for (i in 1:55){
  print(paste('================= ', i, ' ================='))
  dd = SCL90_1[i]
  dd = as.numeric(dd)
  print(dd)
  if (!(is.na(dd))){
    vec = as.numeric(tabla[i, 7:96])
    res = calculoSCL90(vec)
    print(dd)
    print(vec)
    print(res)
  }
}

