rm(list=ls())

source('Fun_calculaSCL90.R')

tabla <- read.csv('BASE_2708_V1.csv')

attach(tabla)

SCL90_1[54] = ''

datosN <- cbind(No.[1:55], Nombre[1:55], X[1:55], Age[1:55], Group[1:55], SCL90_1[1:55])

k = rep(0,10)
Res = c()
for (i in 1:55){
  print(paste('================= ', i, ' ================='))
  dd = SCL90_1[i]
  dd = as.numeric(dd)
  print(dd)
  if (!(is.na(dd))){
    if (i != 54){
      vec = as.numeric(tabla[i, 7:96])
      res = round(calculoSCL90(vec),3)
      print(dd)
      print(vec)
      print(res)
      Res = rbind(Res, res)
    } else {
        Res = rbind(Res, k)
    }  
  } else{
    Res = rbind(Res, k)
  }
}

Res = as.matrix(Res)

print(dim(Res))

datosN <- cbind(datosN, Res)

rownames(datosN) <- NULL

print(datosN)

