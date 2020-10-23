# Aula 14

vetorNomeCachaceiros <- c("Zé Guela", "Chico Bioca", "Zeca Muring")
vetorQuantidadeCachaceiros <- c(3, 5, 8)
vetorCachaceiros <- cbind(vetorNomeCachaceiros,vetorQuantidadeCachaceiros)
vetorColunas <- c("Nome do Cachaceiro", "Quantidade de Cachaça")

colnames(vetorCachaceiros) <- vetorColunas
vetorLinhas <- cbind("Último Lugar","Penultimo Lugar", "Primeiro Lugar")
rownames(vetorCachaceiros) <- vetorLinhas

vetorCachaceiros