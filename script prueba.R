##Ejercico 1 de GITHUB

#Creo el objeto enlace 1, que es nuestro enlace
enlace1="https://raw.githubusercontent.com/CSSEGISandData/COVID-19/master/csse_covid_19_data/csse_covid_19_daily_reports_us/09-10-2020.csv"

#abrimos nuestra libreria rio
library(rio)
#cuando usamos rio, 3 funciones basicas: import, convert y export
#importamos la base de datos y le asiganmos el nombre "datacovid"
datacovid=import(enlace1)

#para ver las filas y columnas del data.fream puedo usar la funcion str
str(datacovid)
#saber cuantas columnas y filas:hay 58 obs(filas) y 18 variables(columnas)


#####Ejercicio 2: ejercicio de web scraping

#ubicamos nuestra pagina web, generamos el objeto link 2 y creo el link
enlace2="https://en.wikipedia.org/wiki/World_Happiness_Report"

#creamos un objeto que sea el xpath de la tabla, es decir la UBICACION de la 
#tabla dentro de la pagian web que nos interesa
xpath1='//*[@id="mw-content-text"]/div[1]/table'

#abrimos el paquete HTMLTAB. htmltab es funcion para extraer info de la tabla de la pagina
library(htmltab)

#utilizamos la funcion htmltab, especificando el enlace de donde està la tabla y
#ubicacion de la tabla dentro de la pagina
#happy es el objeto, 
data2= htmltab(doc =enlace2,
               which =xpath1)

#para saber las columnas y filas:
str(data2)
#la base de datos etiquetada como data 2, tiene 156 filas (obs) y 9 columnas (varib)
head(data2)
#este es el script









