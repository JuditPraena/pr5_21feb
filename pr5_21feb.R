#Estadística descriptiva

#Ejercicio 1 data_frame
set.seed(123)
datos_arqueologicos <- 200
site <- sample(paste0("Site", 1:10),
                     datos_arqueologicos, replace = TRUE)
tipo_artefacto <- sample(c("pottery", "tools", "jewerly", "weapons"),
                         datos_arqueologicos, replace = TRUE)
numero_artefactos <- sample(c(1:1000),
                            datos_arqueologicos, replace = TRUE)
contexto <- sample(c("habitacional", "funerario", "otros"),
                   datos_arqueologicos, replace = TRUE)
latitud <- sample(c(0:90),
                  datos_arqueologicos, replace = TRUE)
longitud <- sample(c(-180:180),
                   datos_arqueologicos, replace = TRUE)
datos_arqueologicos <- data.frame(site = site, tipo_artefacto = tipo_artefacto,
                                  numero_artefactos = numero_artefactos, contexto = contexto,
                                  latitud = latitud, longitud = longitud)
print(datos_arqueologicos)
View(datos_arqueologicos)


#Ejercicio 2 media_y_cuartiles
#media
media_artefactos <- mean(numero_artefactos)
#cuartil
primer_cuartil <- quantile(datos_arqueologicos$numero_artefactos, probs = 0.25)
print(primer_cuartil)
segundo_cuartil <- quantile(datos_arqueologicos$numero_artefactos, probs = 0.50)
print(segundo_cuartil)
tercer_cuartil <- quantile(datos_arqueologicos$numero_artefactos, probs = 0.75)
print(tercer_cuartil)
cuarto_cuartil <- quantile(datos_arqueologicos$numero_artefactos, probs = 1)
print(cuarto_cuartil)


#Ejercicio 3 histograma_numero_artefactos
#La media y la mediana son iguales, por lo que, 
#tenemos una distribución de frecuencia "simétrica".
hist(datos_arqueologicos$numero_artefactos)
mean(datos_arqueologicos$numero_artefactos)
median(datos_arqueologicos$numero_artefactos)

#Ejercicio 4 gráfico_caja_y_bigote
#Los cuantiles de la distribución de la variable "numero de artefactos" indican 
#que se trata de una distribución simétrica positiva
library(ggplot2)
boxplot(datos_arqueologicos$numero_artefactos)


#Ejercicio 5 gráfico de barras
barplot(table(datos_arqueologicos$numero_artefactos, datos_arqueologicos$site), 
        main = "Número medio de artefactos por yacimiento")


#Ejercicio 6 mapa_de_calor
ggplot(datos_arqueologicos, aes(x = longitud, y = latitud)) +
  geom_bin2d() +
  labs(title = "mapa de calor", x = longitud, y = latitud)


#Ejercicio 7 número_total_artefactos_yacimientos
artefactos_totales <- sum(datos_arqueologicos$numero_artefactos)
print(artefactos_totales)


#Ejercicio 8 mediana_artefactos_yacimientos
mediana_artefactos <- median(datos_arqueologicos$numero_artefactos)
print(artefactos_totales)


#Ejercicio 9 desviación_entándar 
desviacion_estandar_numero_artefactos <- sd(datos_arqueologicos$numero_artefactos)
print(desviacion_estandar_numero_artefactos)


#Ejercicio 10 yacimiento_mayor_numero_artefactos
which.max(datos_arqueologicos$numero_artefactos)


#Ejercicio 11 tabla_resumen
tabla_resumen <- data.frame(media = media_artefactos,
                            mediana = mediana_artefactos,
                            desviacion_estandar = desviacion_estandar_numero_artefactos)
print(tabla_resumen)
View(tabla_resumen)


#Ejercicio 12 distribución_artefactos
boxplot(numero_artefactos ~ site, 
        main = "Artefactos por yacimiento",
        xlab = "yacimientos",
        ylab = "numero artefactos")





