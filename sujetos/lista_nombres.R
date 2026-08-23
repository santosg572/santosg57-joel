source('funciones.R')

sacar_informacion_var <- function(dd=''){
  ss = dim(dd)
  print(paste('tamaño: ', ss))
  variables = names(dd)
  nl = length(variables)

  print('Variables en este data Frame')

  for (i in 1:nl){
    print(paste(i, ' - ', variables[i]))
  }

}

saca_registro <- function(id, dd=0){
   nom = as.vector(dd[id, 2])
   num_suj = as.vector(dd[id, 4])
   campos_scl90 = as.double(dd[id, 15:104])
   ret = list(nombre=nom, num_suj = num_suj, campos =campos_scl90)
}

saca_nombres <- function(dd=0){
  ss = dim(dd)
  nom <- c()
  for (i in 1:ss[1]){
   nom = c(nom, dd[i, 2])
  }
  ret = nom
}

saca_numero_sujeto <- function(dd=0){
  ss = dim(dd)
  num <- c()
  for (i in 1:ss[1]){
   num = c(num, dd[i, 4])
  }
  ret = num
}

saca_campos_scl90 <- function(id, dd=0){
  campos = dd[id,15:104]
  ret = campos
}



file = 'Edinburgh_santosg57_7_31_2026_9_0_53.xlsm_Hoja1.csv'

datos = read.csv(file, header=T)

ss = dim(datos)

print(ss)

#sacar_informacion_var(datos)

isscl90=0

for (i in 1:ss[1]){
   registro = saca_registro(i, datos)
   nom = registro$nombre
   num = registro$num_suj
   campos = registro$campos
   if (!(is.na(campos[1]))){
      print(paste('-----------------', i, '----------------')) 
      print(nom)
      print(num)
      print(campos)
      isscl90= isscl90+1
   }
}

print(paste('isscl90= ', isscl90))

#nom =saca_nombres(datos)

#for (ss in nom){
#  print(ss)
#}

#suj <- saca_numero_sujeto(datos)

#for (ss in suj){
  print(ss)
#}
