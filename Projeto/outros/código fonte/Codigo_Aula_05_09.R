#Atividade de hoje (05/09/2018) - Aprender a leitura de dados no R

#Criando vetores no R

altura = c(1.63, 1.78, 1.69, 1.85, 1.75, 1.65, 1.67, 1.65, 1.65, 1.71, 1.84, 1.83, 1.76, 1.69, 1.67, 1.80) #separador decimal � o ponto


#Criando matrizes no R

teste = matrix(nrow = 2, ncol = 2, c(0,1,2,3))
teste

#Lendo dados externos ao R

#fun��o read.txt ou read.csv ou read.table

#a fun��o read.table precisa do caminho do arquivo, al�m de voc� dizer se existe cabe�alho no seu arquivo e qual o tipo de separador

dados = read.table("Z:\\1926573\\Downloads\\Banco_de_dados_Trabalho.txt", header = T, sep = "\t")
dados


