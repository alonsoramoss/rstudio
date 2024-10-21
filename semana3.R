
library(readxl)
PropinaAtencion <- read_excel("C:/Users/alonso/Downloads/propina_atencion.xlsx")
View(PropinaAtencion)

# Realizar la regresión lineal
regresion_lineal <- lm(Propina ~ TiempoAtencion, data = PropinaAtencion)
summary(regresion_lineal)


plot(PropinaAtencion$TiempoAtencion, PropinaAtencion$Propina, 
     main = "Regresión Lineal: Tiempo de Atención - Propina", 
     xlab = "Tiempo de Atención (minutos)", 
     ylab = "Propina (S/)", 
     pch = 19, col = "red")

abline(regresion_lineal, col = "green4", lwd = 2)

# Hacer la predicción para TiempoAtencion = 6
nuevo_dato <- data.frame(TiempoAtencion = 6)
prediccion_propina <- predict(regresion_lineal, nuevo_dato)
prediccion_propina

---------

library(rpart)
library(rpart.plot)

# Ajustar el árbol de decisión
arbol_decision <- rpart(Propina ~ TiempoAtencion, data = PropinaAtencion)

# Visualizar el árbol
rpart.plot(arbol_decision)



rm(list = ls())
