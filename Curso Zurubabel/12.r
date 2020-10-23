# Aula 12 - Criando Matrizes

# Vetor - uuma linha com várias colunas

umAoCem <- c(1:100)
umAoCem

# Matriz (matrix) - Dividir um vetor em linhas e colunas
# matrix(data, nrow=[qt. Linhas], ncol = [qt. Colunas], byrow = [F ou T] ,dimnames)
matrix(c(1:100), 5)
matrix(c(1:100), ncol=5)# 5 colunas e 20 linhas

# Atribuindo matrix para uma variavel
matrizCem <- matrix(umAoCem, ncol=5)

# Matriz combyrow = T
matrix(1:10, nrow=5, byrow= TRUE)
matrix(1:10, nrow=5, byrow= FALSE)

#