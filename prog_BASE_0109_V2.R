file = 'BASE_0109_V2.csv'

datos = read.csv(file,header=T)

nom = names(datos)

print(dim(datos))

ii = 12

print(nom[ii])
print(datos[,ii])

dd = data.frame(datos[,4])

#, datos[,6], datos[,7], datos[,8], datos[,9],  datos[,10], datos[,11])

nn = c('participant_id', nom[6:21])

print(nn)

dd = cbind(dd, datos[6:21])

#dd = cbind(dd, datos[,6])

colnames(dd) <- nn

#colnames(dd) <- c(nom[4], nom[6])

print(dd)

write.table(dd, 'dd.csv', quote = F, row.names =F, sep='\t')

