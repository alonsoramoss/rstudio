probabilidad_cara <- 1/10
print(probabilidad_cara)

prob_silla<-5/122
print(prob_silla)

prob_binom<-dbinom(3, size = 5, prob = 0.6)
print(prob_binom)

# regresion logistica
set.seed(1234)
datos <- data.frame(edad = rnorm(150, mean = 45, sd = 10 ),
                    compra = sample(c(0, 1), size = 150, replace = TRUE))
modelo.logistico <- glm(compra ~ edad, data = datos, family = "binomial")
summary(modelo.logistico)

# regresion lineal
set.seed(1000)
datos <- data.frame(x = rnorm(150), y = 2 * x + rnorm(150))
modelo_lineal <- lm(y ~ x, data = datos)
summary(modelo_lineal)

set.seed(1500)
hist(1500, seq=0.5, prob=TRUE)


# Generar datos
set.seed(1500)
datos <- rnorm(100)

# Crear el histograma con densidad
hist(datos, probability = TRUE, 
     main = "Histograma de Datos Aleatorios con Densidad",
     xlab = "Valores", 
     ylab = "Densidad", 
     col = "lightblue", 
     border = "black")

# Añadir línea de densidad
lines(density(datos), col = "red", lwd = 2)

