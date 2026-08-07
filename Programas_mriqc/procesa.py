import matplotlib.pyplot as plt

def saca_palabras(datos='', pal1=''):
   summary = []

   for ss in datos:
     ss = ss.replace('\n', '')
     if pal1 in ss:
      summary.append(ss)
   return summary

file='tt.txt'

fil= open(file, 'r')

datos= fil.readlines()

pal1 = 'summary'

palabrasT = saca_palabras(datos, pal1)

palabras = []
for ss in palabrasT:
  i = ss.find(':')
  palabras.append(ss[:i])

set1 = list(set(palabras))

print(set1)

palabra = 'summary_gm_mean'
summary_gm_mean = []

for ss in summary:
  if palabra in ss:  
    i = ss.find(':')
    k = len(ss)
    num = ss[(i+1):(k-1)]
    summary_gm_mean.append(float(num))

print(summary_gm_mean)

plt.plot(summary_gm_mean)
plt.title(palabra)
plt.savefig(palabra+'.png', dpi=300, bbox_inches='tight')
plt.show()








