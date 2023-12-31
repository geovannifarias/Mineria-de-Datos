#---matrix, funcion para crear matrices (rbind and cbind)

vector1 = c(1:3)
vector2 = c(4:6)
vector3 = c(8:10)

matrizRB = rbind(vector1,vector2, vector3)
matrizRB

matrizCB = cbind(vector1,vector2,vector3)
matrizCB

#nombres en vectores en vez de indices
names(vector1) = c("ix1", "ix2")
vector1

#filas matriz con rownames 
vector1<- rep (c("a","a","c"),each=3)
vector1
matrizTest<-matrix(vector1,3,3)
#rownames
rownames(matrizTest)<-c("fila1","fila2","fila3")
matrizTest
#columnas
colnames(matrizTest)<-c("columna1","columna2","columna3")
matrizTest
#para llamar una matriz o nombre de las columnas 
matrizTest
matrizTest[2,3]
matrizTest["fila2","columna3"]

#quitar nombrer de filas y columnas
matrizTest
rownames(matrizTest)<-NULL
colnames(matrizTest)<-NULL
matrizTest



