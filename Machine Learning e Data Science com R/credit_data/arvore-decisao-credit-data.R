base = read.csv('credit_data/credit_data.csv')

base$clientid = NULL

summary(base)

# Valores incosistentes
base$age = ifelse(base$age < 0, 40.92, base$age)

# Valores Faltantes
base$age= ifelse(is.na(base$age), mean(base$age, na.rm=TRUE), base$age)

# Escalonamento
base[, 1:3] = scale(base[, 1:3])

# Encoding da Classe (Transformar em fatores)
base$default = factor(base$default, levels = c(0, 1))

library(caTools)
set.seed(1)
divisao = sample.split(base$income, SplitRatio = 0.75)
print(divisao)

base_treinamento = subset(x = base, divisao == TRUE)
base_testes = subset(base, divisao == FALSE)

classificador = rpart(formula = default ~ ., data = base_treinamento)

library('rpart.plot')
rpart.plot(classificador)

previsoes = predict(classificador, newdata = base_testes[-4], type = 'class')
matriz_confusao = table(base_testes[, 4], previsoes)
print(matriz_confusao)

# install.packages('caret')
library(caret)

# estatisticas do algoritmo de previsão
confusionMatrix(matriz_confusao)
