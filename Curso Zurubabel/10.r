# Aula 10 - Adiciona / Remoendo elementos em vetores

vitorias <- c(1:5)
names(vitorias) <- c("V1", "V2", "V3", "V4", "V5")
vitorias

vitorias[6] <- 6
vitorias

length(vitorias)
vitorias[length(vitorias) + 1] <- 7
vitorias

vitorias <- c(vitorias, 8) 
vitorias

# Remover elementos

#Remover via index
vitorias[-3]

vitorias[-c(1:3)];
