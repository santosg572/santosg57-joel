calculoSCL90 <- function(ss = 0){
      xx = as.double(ss);

#      print(xx)
      res = rep(0,10)
        
      va1 = (xx[1] + xx[4] +xx[12] + xx[27]+ xx[40] + xx[42]+xx[48]+xx[49] + xx[52]+xx[53]+xx[56]+xx[58])/12.0; # Somatización
      res[1] = va1
      va2 = (xx[3] + xx[9] + xx[10]+ xx[28]+ xx[38]+ xx[45]+ xx[46] + xx[51]+xx[55]+xx[65])/10.0; # Obsesivo-compulsivo
      res[2] = va2
      va3 = (xx[6]+xx[21]+xx[34]+xx[36]+xx[37]+xx[41]+xx[61]+xx[69]+xx[73])/9.0;        # Sensi. Interpersonal
      res[3] = va3
      va4 = (xx[5]+xx[14]+xx[15]+xx[20]+xx[22]+xx[26]+xx[29]+xx[30]+xx[31]+xx[32]+xx[54]+xx[71]+xx[79])/13.0; # Depresión
      res[4] = va4
      va5 = (xx[2]+xx[17]+xx[23]+xx[33]+xx[39]+xx[57]+xx[72]+xx[78]+xx[80]+xx[86])/10.0;        # Ansiedad
      res[5] = va5
      va6 = (xx[11]+xx[24]+xx[63]+xx[67]+xx[74]+xx[81])/6.0; # Hostilidad
      res[6] = va6
      va7 = (xx[13]+xx[25]+xx[47]+xx[70]+xx[75]+xx[82]+xx[50])/7.0; # Ansiedad fóbica
      res[7] = va7
      va8 = (xx[8]+xx[18]+xx[43]+xx[68]+xx[76]+xx[83])/6;       # Paranoia
      res[8] = va8
      va9 = (xx[7]+xx[16]+xx[35]+xx[62]+xx[77]+xx[84]+xx[85]+xx[87]+xx[88]+xx[90])/10.0;        # Psicoticismo
      res[9] = va9
	
      va10 = 0.0;
      for (i in 1:90){
	va10 = va10 + xx[i];
      }
	  
      va10 = va10/90.0;  # ISG
	  
      res[10] = va10
      re =  res
}

# titulos = c('Somatización', 'Obsesivo-compulsivo', 'Sensi. Interpersonal', 'Depresión', 'Ansiedad', 'Hostilidad', 'Ansiedad fóbica', 'Paranoia', 'Psicoticismo', 'ISG')

#r = c()
#for (i in 1:90){
#  r = c(r, paste(i))
#}

#dd = calculoSCL90(r)

#print(dd)



