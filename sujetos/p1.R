source('funciones.R')

file = 'Edinburgh_santosg57_7_31_2026_9_0_53.xlsm_Hoja1.csv'

scl90SI = c(0)
suj = 2

datos = read.csv(file, header=T)

campos = names(datos)
#print(campos)

dd = as.data.frame(datos)

inf = dd[c("X", "X.1", "X.2", "X.3", "X.4")]

nombres = dd["X"]
#print(nombres)

i1 = 15
i2 = 104

#print(c(campos[i1], campos[i2]))

suj = rep(0,55)

jj = 2

sujeto = dd[jj,]

print('----------------------- SUJETO -----------------------')
print(sujeto)
print('------------------------------------------------------')
#nn = paste('NOMBRE:', sujeto[2])
#print(nn)

campos_scl90 = dd[jj,i1:i2]

id = campos_scl90[1]

print(id)

if (is.na(id)){
  print('NANANANA')
}


print('----------------------- CAMPOS  -----------------------')
print(campos_scl90)
print('-------------------------------------------------------')

if (!(is.na(id))){
   nn = paste('NOMBRE:', sujeto[2])
   print(nn)
   ss = as.double(dd[jj,i1:i2])

   print(ss)

   res = calculoSCL90(ss)

   print(res)
}
