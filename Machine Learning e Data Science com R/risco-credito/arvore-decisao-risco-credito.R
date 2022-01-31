base = read.csv("risco-credito/risco_credito.csv")

#install.packages('rpart')
library('rpart')

classificador = rpart(formula = risco ~ ., data = base, control = rpart.control(minbucket = 1))

plot(classificador)
text(classificador)
print(classificador)

#install.packages('rpart.plot')
library('rpart.plot')

rpart.plot(classificador)


# historia: boa, divida: alta, garantias: nenhuma, renda: >35
# historia: ruim, divida: alta, garantias: adeqauda, renda < 15
historia = c('boa', 'ruim')
divida = c('alta', 'alta')
garantias = c('nenhuma', 'nenhuma')
renda = c('acima_35', '0_15')
df = data.frame(historia ,divida,garantias,renda)

previsoes = predict(classificador, df)
