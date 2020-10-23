# Aula 12 - Coerção de dados em vetores

numeros <- c(1:3)
class(numeros[1])

# Atribuindo novo valor ao npumeros
numeros <- c(numeros, 3.3)
numeros

class(numeros[1])

# Vetor só pode ter um tipo de dados
numeros <- c(numeros, 4L)
numeros

# Adicionando String no vetor
numeros <- c(numeros, "18") # Converte todos os elementos em caractere
numeros <-c (numeros, 90)
numeros

# Atribuir valor Logical no vetor numérico
numeros <- c(numeros, TRUE)
numeros <- c(numeros, FALSE)
numeros

# Vetor de lógicios
logicos <- c(TRUE, FALSE, TRUE)
logicos
class(logicos[1])

logicos <- c(logicos,90)
logicos