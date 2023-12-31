
#construir una funcion que grafique datos con leyenda incluida. 
#considerar parametros matriz y leyenda como minimo
#usar la nueva funcion para graficar las tres matrices (goles, partidos,sueldos)

jugadores<-c("Messi","Haaland","Cristiano","AlexisSanchez")
Temporada<-c(2019,2020,2021,2022)
#GOLES
#matriz
#Goles jugadores
Messi<-c(15,12,14,20)
Haaland<-c(7,9,12,4)
Cristiano<-c(2,4,5,6)
AlexisSanchez<-c(12,22,31,15)

#goles jugadores
matrizGoles<- rbind(Messi,Haaland,Cristiano,AlexisSanchez)
rownames(matrizGoles)<-c(jugadores)
colnames(matrizGoles)<-c(Temporada)

matplot(t(matrizGoles),type = "b",pch=15:20,col=c(1:4,6))
legend("toplef",inset = 0.01,legend = jugadores,pch=15:20,col=c(1:4,6))

#PARTIDOS
#(organizar los datos)
jugadores<-c("Messi","Haaland","Cristiano","AlexisSanchez")
Temporada<-c(2019,2020,2021,2022)

#Partidos jugadores
Messi<-c(20,22,23,20)
Haaland<-c(15,22,31,30)
Cristiano<-c(12,44,11,30)
AlexisSanchez<-c(33,12,30,19)

matrizPartido<- rbind(Messi,Haaland,Cristiano,AlexisSanchez)
rownames(matrizPartido)<-c(jugadores)
colnames(matrizPartido)<-c(Temporada)

matplot(t(matrizPartido),type = "b",pch=15:20,col=c(1:4,6))
legend("toplef",inset = 0.01,legend = jugadores,pch=15:20,col=c(1:4,6))

#SUELDOS
#(organizar los datos)
jugadores<-c("Messi","Haaland","Cristiano","AlexisSanchez")
Temporada<-c(2019,2020,2021,2022)

#SUELDOS jugadores
Messi<-c(2000000,2200000,2300000,2000000)
Haaland<-c(1500000,220000,3100000,30000000)
Cristiano<-c(1200000,440000,110000,3000000)
AlexisSanchez<-c(33000000,1200000,3000000,19000000)

matrizSueldos<- rbind(Messi,Haaland,Cristiano,AlexisSanchez)
rownames(matrizSueldos)<-c(jugadores)
colnames(matrizSueldos)<-c(Temporada)


matplot(t(matrizSueldos),type = "b",pch=15:20,col=c(1:4,6))
legend("toplef",inset = 0.01,legend = jugadores,pch=15:20,col=c(1:4,6))

#
#solucion de el ejercicio
graficarMatriz = function(datos,legenda){
  matplot(t(datos),type = "b",pch=15:20,col=c(1:4,6))
  legend("toplef",inset = 0.01,legend = legenda,pch=15:20,col=c(1:4,6))
}
#3 matrices
graficarMatriz(matrizGoles,jugadores)
graficarMatriz(matrizPartido,jugadores)
graficarMatriz(matrizSueldos,jugadores)

#graficar sub matrices
matrizGoles[1:2,]
matrizPartido[1:3,]
matrizSueldos[1:2,]

SubMatriz = function(datos, leyenda, rango1, rango2){
  datosS= datos[rango1,rango2]
  matplot(t(datosS), type = "b",pch=15:20, col=c(1:4,6))
  legend("toplef",inset = 0.01,legend = leyenda,pch=15:20,col=1:4,6)
}
#las 3 sub matrices
SubMatriz(matrizGoles, jugadores, 1:2,)
SubMatriz(matrizPartido, jugadores, 1:3,)
SubMatriz(matrizSueldos, jugadores, 1:2,)

#instalar el package "ggplot 2" y habilitar la librería del mismo nombre.
#el comando:

#install.packages("ggplot2")
#library(ggplot2)
#?ggplot()


