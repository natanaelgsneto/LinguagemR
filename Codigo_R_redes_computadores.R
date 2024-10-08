#############ATEN��O!!!###############
#Caso voc� tenha d�vida sobre o uso de alguma fun��o espec�fica, voc� possui dois caminhos
#Caso voc� j� saiba o nome da fun��o, voc� pode pedir ajudar utilizando o ? junto ao nome da fun��o. Exemplo
?mean
#Caso voc� n�o saiba o nome da fun��o, mas tenha ideia da mesma por alguma palavra similar, utilize o ?? junto a palavra que deve estar entre aspas
??"standard deviance"

#Agora vamos come�ar!

#Opera��es b�sicas direto no console do R
2 + 4
Soma <- 2 + 4 #uma vari�vel recebe algum valor pelo sinal de <- ou = tanto faz qual utilizar
Multiplicacao = 3*6
Operacao = Soma/Multiplicacao

#Criando vetores no R

altura = c(1.63, 1.78, 1.69, 1.85, 1.75, 1.65, 1.67, 1.65, 1.65, 1.71, 1.84, 1.83, 1.76, 1.69, 1.67, 1.80) #separador decimal � o ponto


#Criando matrizes no R

teste = matrix(nrow = 2, ncol = 2, c(0,1,2,3))
teste

#Lendo dados externos ao R

#fun��o read.txt ou read.csv ou read.table

#a fun��o read.table precisa do caminho do arquivo, al�m de voc� dizer se existe cabe�alho no seu arquivo e qual o tipo de separador

dados = read.table("E:\\Natanael\\tsi\\3periodo\\estatistica\\projeto\\Banco_de_dados_Trabalho.txt", header = T, sep = "\t") #o separador de tabula��o � "\t" e da v�rgula ";"
dados

#� necess�rio primeiro salvar o arquivo .xls (ou .xlsx) no formato .txt (serparaddo por tabula��o) ou .csv (separado por v�rgulas)

#No caso espec�fico do nosso banco, existem muitas informa��es faltantes
#classificadas como NA pelo R. � preciso elimin�-las com o uso da seguinte

dados1 = na.exclude(dados)
na.action(na.omit(c(1, NA)))


#S� a partir desse momento � poss�vel retirar sua amostra.
#Agora estamos prontos para tentar retirar nossa amostra de tamanho 60.

Amostra1 <- dados[sample(nrow(dados), 60),]

#Ap�s selecionar a amostra, voc� precisa salva-la em um arquivo, sen�o voc� vai gerar uma nova amostra toda vez que for acessar seu c�digo
#Para salvar sua amostra, utilize o seguinte comando
#classificadas como NA pelo R. � preciso elimin�-las com o uso da seguinte

dados1 = na.exclude(Amostra1)
write.table(Amostra1, "E:\\Natanael\\tsi\\3periodo\\estatistica\\projeto\\Banco_de_dados_Trabalho7.txt",  na=" ", append = F, sep = "\t", row.names = F) #O comando append = F
#diz ao R que caso voc� gere uma nova amostra, ela vai sobrepor a anterior. O comando row.names = F impede que o arquivo seja salvo com um t�tulo para cada linha

#Uma vez salva sua amostra, voc� est� pronto para come�ar as an�lises!

#Primeira parte - Estat�stica Descritiva
#a. Classificar as vari�veis do banco - var. qualitativas nominais e ordinais; var. quantitativas discretas e cont�nuas;
#b. Construir tabelas e gr�ficos para as vari�veis qualitativas;
#c. Calcular as medidas de posi��o e dispers�o para as vari�veis quantitativas;

