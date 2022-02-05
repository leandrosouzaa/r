base = read.csv('wine-quality/wine-quality.csv', sep = ';')

sum(is.na(base))

# Encoding da Classe (Transformar em fatores)
base$quality = ifelse(base$quality<6, 0, 1)
hist(base$quality, main = 'Qualidade do Vinho')
base$quality = factor(base$quality, levels = c(0, 1))

library(caTools)
set.seed(1)
divisao = sample.split(base$quality, SplitRatio = 0.80)
print(divisao)

base_treinamento = subset(x = base, divisao == TRUE)
base_testes = subset(base, divisao == FALSE)

# install.packages('rpart')
library('rpart')

classificador = rpart(formula = quality ~ ., data = base_treinamento)

library('rpart.plot')
rpart.plot(classificador)

previsoes = predict(classificador, newdata = base_testes[-12], type = 'class')
matriz_confusao = table(base_testes[, 12], previsoes)
print(matriz_confusao)

# install.packages('caret')
library(caret)

# estatisticas do algoritmo de previsão
confusionMatrix(matriz_confusao)

