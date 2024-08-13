# Atividade de hoje (01/02/2018) - Realizar a leitura de um
# banco de dados externo

#Objetivo da aula:
# 1. Retirar uma amostra de tamanho 60 para compor o banco de
# dados de cada um individualmente

Dados_professor <- read.table("C:\\Users\\Professor\\Downloads\\Banco de Dados Trabalho.xlsx", header = T, sep ="\t")


#Como realizar leitura de arquivo .xslx no R?
#Tentativa 1 -> Transformar o arquivo .xlsx em arquivo de
# texto separado por tabulação (.txt)

Dados_professor_tentativa_1 <- read.table("C:\\Users\\Professor\\Downloads\\Banco de Dados Trabalho.txt", header = T, sep ="\t")


#Banco de dados Ok!!!!

#Agora estamos prontos para tentar retirar nossa amostra
# de tamanho 60.

Amostra <- Dados_professor_tentativa_1[sample(nrow(Dados_professor_tentativa_1), 60),]

# Pronto! Agora temos nosso banco de dados! Mãos a obra com as análises!

