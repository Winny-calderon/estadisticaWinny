[22:23, 17/9/2020] +51 987 310 438: #Scrapping
  library(htmltab)
link="https://www.cia.gov/library/publications/resources/the-world-factbook/fields/257.html"
url='//*[@id="fieldListing"]'

elec = htmltab(doc = link, 
               which = url, #herramientas de desarrollador
               encoding = "UTF-8")
#cambio de nombre
names(elec) = c("País", "Electricidad")

head(elec)

#Extraer solo el número
library(stringr)
elec$Electricidad=str_extract_all(elec$Electricidad, "(\\d+\\.*\\d*)(?=\\%)")
#Tambien puede ser asi
PATRON = "(\\d+\\.\\d)(?=\\%)"
elec$Electricidad=str_extract_all(elec$Electricidad, PATRON)
head(elec)

#Convertir el número

elec$Electricidad = as.numeric(elec$Electricidad)

#Respondiendo la pregunta de Media, mediana y demás...
summary(elec$Electricidad)
[22:24, 17/9/2020] +51 952 285 285: Scrappi 
[22:24, 17/9/2020] +51 987 310 438: indicaciones: #En el siguiente enlace encontrará una base de datos que mide la capacidad de las plantas que
  #generan electricidad quemando combustibles fósiles (como el carbón, los productos derivados del
  #petróleo y el gas natural), expresada como una parte de 
  #la capacidad de generación total del país.
  #https://www.cia.gov/library/publications/resources/the-world-factbook/fields/257.html
  #Realice las siguientes actividades:
  #  1. Realice el scrapping de esta base de datos.
  #2. Limpie la base de datos cumpliendo las siguientes condiciones.
  #a. La base debe tener dos columnas llamadas: "País" y "Electricidad".
  #b. En la columna "Electricidad" solo se deben consignar los números (sin porcentaje).
  #c. La columna "Electricidad" debe ser numérica.
  #3. Responda las siguientes preguntas.
#a. ¿Cuál es el valor máximo, mínimo, promedio, media y mediana de la columna
#electricidad?