#apunte clase 2

vector1 <-c(1,5,2,8,32,38)
#forma para actualizar
vector1 <-c(vector1,1,9)
print(vector1)

# otro ejemplo
vector1 <-c(1,5,2,8,32,38)
vector1 <-c(vector1,1,9)
vector2 <-c(1,9,32,38)
vector3 <-c(vector1,vector2)
print(vector3)

# para imprimir los valores del vector
print(vector3)#todos los valores
print(vector3[1-8])#todos los valores indice 1 al 8
print(vector3[1])#valor indice 1
print(vector3[c(-1:-8)])#todos los valores menos del indice 1 al 8

#crear 2 vectores con 3  valores cada uno, posteriormente se solicita sumar los dos vectores,
#es decir ,indice 1 del vector 1 + indice 1 del vector 2

#suma 1
vector1<-rnorm(10)
vector2<-rnorm(10)

vector3<- vector1+vector2#proceso automatico para sumar indice por indice 
print(vector3)

# suma 2
vector4 <-c()
for (i in 1:10){
  vector4[i]<-vector1[i]+vector2[i]
}
print(vector4)
  
#crear funciones 
sumarNumeros <- function(x, y){
  resultado <- x+y
  return(resultado)
}
sumarNumeros(10,20)

#crear funciones pero con otro orden de argumentos
sumarNumeros <- function(x, y){
  resultado <- x+y
  return(x)
}
sumarNumeros(y=10,x=20)


