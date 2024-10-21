help(hist)

file.show("C:/Users/alonso/Downloads/Libro.xlsx")

excel_sheets("C:/Users/alonso/Downloads/Libro.xlsx")

library(readxl)
Libro <- read_excel("C:/Users/alonso/Downloads/Libro.xlsx")
View(Libro)

head(Libro, 5)

#histograma
hist(Libro$Edad)

hist(Libro$Edad, 
     main="Histograma de edad", 
     xlab="Edad", 
     ylab="Frecuencia",
     col="red")

----------------

#diagrama de barras
table(Libro$Edad)
table(Libro$Peso)

peso <- table(Libro$Peso)

barplot(peso, 
        main="Gráfico de barras de peso", 
        xlab="Peso", 
        ylab="Frecuencia", 
        col="purple")

---------------

rango<-table(Libro$Peso,Libro$Edad)

barplot(rango)

prop.table(rango, margin = 1)
prop.table(rango, margin = 2)
prop.table(rango)

ptab_rango<-prop.table(rango, margin = 2)
unique(Libro$Peso)
barplot(ptab_rango, 
        main = "edades y pesos",
        xlab = "Edad",
        ylab = "Proporcion",
        col = c("royalblue", "grey", "green", "salmon", "orange", "purple"))
legend(x = "topright", legend = c("41", "42", "43", "44", "45", "50"), 
       fill = c("royalblue", "grey", "green", "salmon", "orange", "purple"), 
       title = "Pesos")
-----------
  
ptab_rango<-prop.table(rango,margin=2)

unique(Libro$Peso)

barplot(ptab_rango, main = "edades y pesos", xlab = "Peso", ylab = "Proporcion",col = c("royalblue","grey"))

legend(x="topright",legend =c("50","41","45","44","43","42"), fill=c("royalblue","grey"),title = "Pesos"  )

#diagrama de dispersion
plot(x = Libro$Edad, y = Libro$Peso)

Libro$Peso<-ifelse(Libro$Peso>45,45,Libro$Peso)
plot(x = Libro$Edad, y = Libro$Peso)
plot(x = Libro$Edad, y = Libro$Peso, col=Libro$Peso)
legend(x = "topleft", legend = c("41", "42", "43", "44", "45", "50"), 
       fill = c("black", "salmon", "green", "royalblue", "skyblue", "yellow"), 
       title = "Pesos")

plot(Libro$Edad, Libro$Peso, 
     main="Diagrama de dispersión Edad-Peso", 
     xlab="Edad", 
     ylab="Peso")

----------
#diagrama de caja
  
plot(x = Libro$Educacion, y = Libro$Edad)

plot(x = Libro$Educacion, y = Libro$Edad, main = "Edad por nivel educativo", 
     xlab = "Educacion", ylab = "Edad", 
     col = c("orange3", "yellow3"))

boxplot(x = Libro$Edad)
boxplot(x = Libro$Educacion)

boxplot(formula = Edad ~ Educacion, data =  Libro)

# Crear el diagrama de caja
boxplot(Edad ~ Educacion, 
        data = Libro, 
        main = "Edad por nivel educativo", 
        xlab = "Educacion", 
        ylab = "Edad", 
        col = c("orange3", "yellow3"))

