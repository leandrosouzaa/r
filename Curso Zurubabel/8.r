# Aula 8 - Nomeando Vetores

vitorias <- c(1, 2, 3, 4, 5, 6, 7)

nomesSemana <- c("Segunda", "Terça", "Quarta", "Quinta", "Sexta")

# Nomear Vitórias
names(vitorias) <- nomesSemana
vitorias

# Pode selecionar vetores por número e nomes;
vitorias["Segunda"]

x <- c(1:10)
x

# Não comleta os nomes só renomeia os dois primeiros.
names(x) <- c("Ímpar", "Par")
x

# Valores em outras variaveis
index <- 3

vitorias[index]


# Vetores de Lógicos
vitorias[c(TRUE, TRUE, FALSE ,FALSE , FALSE)]

# vETOR DE CHAVES
vitorias[c(1,3,5)]

vitorias[c(TRUE, FALSE)]
vitorias[c(TRUE, FALSE, TRUE)]