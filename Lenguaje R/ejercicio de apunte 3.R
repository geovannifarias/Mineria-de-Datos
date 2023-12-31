#ejercicio 
#(organizar los datos)
jugadores<-c("Messi","Haaland","Cristiano","AlexisSanchez")
Temporada<-c(2019,2020,2021,2022)

#Goles jugadores
Messi<-c(15,12,14,20)
Haaland<-c(7,9,12,4)
Cristiano<-c(2,4,5,6)
AlexisSanchez<-c(12,22,31,15)

#Partidos jugadores
Messi<-c(20,22,23,20)
Haaland<-c(15,22,31,30)
Cristiano<-c(12,44,11,30)
AlexisSanchez<-c(33,12,30,19)
#goles jugadores
matrizGoles<- rbind(Messi,Haaland,Cristiano,AlexisSanchez)
rownames(matrizGoles)<-c(jugadores)
colnames(matrizGoles)<-c(Temporada)