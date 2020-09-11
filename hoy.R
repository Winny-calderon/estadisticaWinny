#Sesion 2

x=1
x
class(x)
y="pablo"
class(y)
#caracter, numerico y logico
z=c(7,10,150) #objetos concatenados, pero todos de la misma clase, cuando hay una fila  de elementos de la misma clase. vector
class(z)

#creando un propio objeto
nombre=c("Juan", "Pedro", "Pablo") #nombre como concatenaciòn de 3 objetos de clase caracter.
nombre

edad= c(18, 19, 25)
edad

examen = c (TRUE, FALSE, TRUE)  #clase lògica
examen

musica = c ("rock", "salsa", "rap")  #caracter. Cada vez que no es nùmero o logico, pondremos comillas
musica

examen[2]

#DATA FRAME: AGRUPAR VARIABLES QUE LUEGO ME PERMITE VER SUS INFOS (frecuencias, etc)

base=data.frame(nombre, edad, examen, musica, stringsAsFactors = F)
base
class(base)
str(base) #nos sale 1ero el tipo de objetos con el que nos estamos enfrentando; leugo el numero de observaciones dentre del DF. las observaciones son las filas y variables son columnas

#varias columnas de vectores de distinto tipo: data frame
#columnas del mismo tipo: matriz



####la siguiente funciòn es para abrir info desde mi carpeta de trabajo:
library(rio)
lapop=import("sub_lapop.sav")












