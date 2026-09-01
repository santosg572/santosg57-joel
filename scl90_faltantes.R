rm(list=ls())

file = 'scl90_faltantes_sep0126.csv'

source('Fun_calculaSCL90.R')

tabla <- read.csv(file, header=T)

attach(tabla)

nom = names(tabla)
print(nom)

i1 = 2
i2 = 91

datosN <- data.frame(Nombre)

print(datosN)

k = rep(0,10)

Res = c()

for (i in 1:7){
  print(paste('================= ', i, ' ================='))
  vec = as.numeric(tabla[i, i1:i2])
  res = round(calculoSCL90(vec),3)
  print(vec)
  print(res)
  Res = rbind(Res, res)
}

Res = as.matrix(Res)

print(Res)

titulos2 = c('Somatización', 'Obsesivo-compulsivo', 'Sensi. Interpersonal', 'Depresión', 'Ansiedad', 'Hostilidad', 'Ansiedad fóbica', 'Paranoia', 'Psicoticismo', 'ISG')

print(titulos2)

rownames(Res) <- NULL

colnames(Res) <- titulos2

print(Res)

datosN <- cbind(datosN, Res)
 
print(datosN)

write.csv(datosN, 'datosN_faltantes.csv')


