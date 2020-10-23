# Aula 14 - rbind e cbind

# Começa a distribuir linha por linha
rbind(1:4, 2:5)

# Começa coluna por coluna
cbind(1:4, 2:5)

# Exemplo
v
vetorPessoas <- c("Xicão", "Zé", "Tião", "Pedrão")
vetorCachacasIngeridas <- c(3, 4, 1, 12)

cbind(vetorPessoas, vetorCachacasIngeridas)
rbind(vetorPessoas, vetorCachacasIngeridas)