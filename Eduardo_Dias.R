#Verificar em qual pasta voce esta trabalhando

getwd()

library(openxlsx)

#Selecionar o seu diretorio de trabalho

setwd("C:/Users/Eduado/Documents/Meus Documentos/Eduardo - Backup/Meus documentos/Projeto Final/Copia de Segurança")


#Carregando um arquivo csv

# Vamos pegar um exemplo de documento em txt e, a partir dele, criar o mesmo documento em xlsx (Excel).
# Pegarei a região de Anchieta em Dezembro de 2001, vou ler a partir da sexta linha
# (skip = 5 ignora as 5 primeiras linhas) e irei separar por aspas (""). Também darei nomes às colunas.

#df <- read.csv("anchieta_200112_Plv.txt",skip = 5, sep = "")
df <- read.csv("alto_da_boa_vista_201407_Plv.txt",skip = 5, sep = "")

#str(df)

if (ncol(df) == 8) {
colnames(df) <- c("Dia","Hora","HBV","15 min","01 h", "04 h", "24 h", "96 h")
} else {
colnames(df) <- c("Dia","Hora","15 min","01 h", "04 h", "24 h", "96 h")
}


write.xlsx(df, 'alto_da_boa_vista_201407_Plv.xlsx')




# Testando para um arquivo onde HBV está no meio

df2 <- read.csv("alto_da_boa_vista_201410_Plv.txt",skip = 5, sep = "")

if (ncol(df2) == 8) {
  colnames(df2) <- c("Dia","Hora","HBV","15 min","01 h", "04 h", "24 h", "96 h")
} else {
  colnames(df2) <- c("Dia","Hora","15 min","01 h", "04 h", "24 h", "96 h")
}


write.xlsx(df2, 'alto_da_boa_vista_201410_Plv.xlsx')