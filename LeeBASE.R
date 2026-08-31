rm(list=ls())

source('Fun_calculaSCL90.R')

tabla <- read.csv('BASE_2708_V1.csv')

attach(tabla)

SCL90_1[54] = ''

suj1 = paste('suj-0',1:9, sep='')
suj2 = paste('suj-',10:55, sep='')
suj = c(suj1, suj2)

print(suj)

#datosN <- data.frame(No.[1:55], Nombre[1:55])

#print(datosN)

titulo = c('Número', 'Nombre', 'id-XNAT', 'SUJ-BIDS', 'EDAD', 'GRUPO', 'SCL90_1')
datosN <- data.frame(No.[1:55], Nombre[1:55], X[1:55], suj,  Age[1:55], Group[1:55], SCL90_1[1:55])

colnames(datosN) <- titulo

print(datosN)

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

titulos2 = c('Somatización', 'Obsesivo-compulsivo', 'Sensi. Interpersonal', 'Depresión', 'Ansiedad', 'Hostilidad', 'Ansiedad fóbica', 'Paranoia', 'Psicoticismo', 'ISG')

print(titulos2)

rownames(Res) <- NULL

colnames(Res) <- titulos2

print(Res)

datosN <- cbind(datosN, Res)
 
print(datosN)

write.csv(datosN, 'datosN.csv')

