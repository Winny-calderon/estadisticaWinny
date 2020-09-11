###### PC1 ######



###EJERCICIO 1###

#Primero, creo el objeto "Link1", el cual es el enlace de donde obtendre la data
link1="https://github.com/schrodingercase/practicaest2/raw/master/Base1.xlsx"

#Luego, abrimos nuestra libreria: rio
library(rio)

#Asimismo, importamos la base de datos y le asiganmos el nombre "dataesta"
dataesta=import(link1)

#Para saber cuantas observaciones y variables de tiene nuestra base "dataest", usamos la funcion str
str(dataesta)

#De acuerdo a nuetsro resultado, podemos decir que nuestra base de datos cuenta 
#con 195 observaciones (es decir, filas) y con 6 variables (es decir, columnas)




### EJERCICIO 2 ###

#En primer lugar, ubicamos nuestra pagina web de donde obtendremos la tabla. 
#Despues, generamos el objeto link 2:
link2="https://en.wikipedia.org/wiki/Index_of_Economic_Freedom"

#En segundo lugar, creamos un objeto que sea el xpath de la tabla, es decir la UBICACION de la 
#tabla dentro de la pagina web que hemos elegido
xpath2='//*[@id="mw-content-text"]/div[1]/table[4]'

#Luego, abrimos el paquete HTMLTAB:
library(htmltab)

#Utilizamos la funcion htmltab, especificando el enlace de donde esta la tabla y la ubicacion de 
#ella dentro de la pagina 
dataestadi= htmltab(doc =link2,
               which =xpath2)

#Por ultimo, para saber las observaciones y variables usaremos el comando str:
str(dataestadi)

#Con lo obtenido, podemos decir que nuestra base de datos, etiquetada como "dataestadi" cuenta 
#con 39 observaciones y 15 variables.
