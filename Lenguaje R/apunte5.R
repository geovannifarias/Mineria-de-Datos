#---apunte 5-------
valores <- read.csv(file.choose())
valores
#funciones para el dataframe
head(valores)
tail(valores)
head(valores,15)

#--------
nrow(valores)
ncol(valores)
str(valores)
summary(valores)

#acceder a un valor especifico a traves de indices atraves del dataframe
head(valores)
valores[6,4]

#-opcion 2
valores[6,"CantPersonas.Internet"]

#retornando un vector por columna y especifica con el signo $
head(valores)
#retorna el codigo de pais (formato vector)
valores$Codigo.Pais
#opcion 2
valores$Codigo.Pais[6]

#--------------------
head(valores)
#c retorna valores especificos 
# la ","y si esta vacio , muestra todas las columnas 
#retorna infromacion de la fila 1,20 y 60 con todas las columnas
valores[c(1,20,60),]

#--------------creacion de columnas apartir de operaciones aritmeticas------
head(valores)
valores$ejemplo1<-valores$Tasa.Natalidad*valores$CantPersonas.Internet
head(valores)

#eliminar columnas annadidas
head(valores)
valores$ejemplo1<-NULL
head(valores)

#filtrando valores de un dateframe con operaciones logicas con sus condiciones 
val1<-valores$Tasa.Natalidad>=38 & valores$Tasa.Natalidad<=42
val2<-valores$Tasa.Natalidad>=38
valores[val1,]#","todas las columnas para eso es la ","
valores[val2,]
#---------------
#estamos mostrando todos los paises donde la tasa de natalidad sea mayor a 27
#y la cantidad de personas con internet ,sea mayor a 30
valores[valores$Tasa.Natalidad>27 & valores$CantPersonas.Internet>30,]

#filtrar valores
#filtrar todos los registros cuyo grupo de ingreso sea alto
valores[valores$Grupo.Ingresos=="ingreso alto ",]

#graficar
#library(ggplot2)
qplot(data=valores,x=CantPersonas.Internet,y=Tasa.Natalidad
      ,size=I(2),color=Grupo.Ingresos)

#crear dataframe


