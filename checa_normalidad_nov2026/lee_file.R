datos <- read.csv('BASE_normalizar.csv', header=T)

attach(datos)

print(names(datos))

print(dim(datos))

np = 61
s1 = SAAC.1[1:np]
s2 = SAAC.2[1:np]
s3 = SAAC.3[1:np]

print(s1)
print(s2)
print(s3)

print(which(is.na(s1) == T))
print(which(is.na(s2) == T))
print(which(is.na(s3) == T))

s1 = s1[!is.na(s1)]
s2 = s2[!is.na(s2)]
s3 = s3[!is.na(s3)]

print(s1)
print(s2)
print(s3)

r1 = shapiro.test(s1)
r2 = shapiro.test(s2)
r3 = shapiro.test(s3)

print('shapiro SAAC.1:')
print(r1)

print('shapiro SAAC.2:')
print(r2)

print('shapiro SAAC.3:')
print(r3)

