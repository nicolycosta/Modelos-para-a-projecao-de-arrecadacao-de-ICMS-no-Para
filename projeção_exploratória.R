
################################################################################
#Pacotes usados
install.packages("xlsx")
install.packages('readxl')
install.packages('forecast')
install.packages('MLmetrics')
install.packages("formattable")
library(xlsx)
library(readxl)
library(forecast)
library(MLmetrics)
library(formattable)




################################################################################
#Downloading the main public revenue database

Base <- read_xlsx(path = "Base.xlsx", sheet = 1)
Base$MES <- as.Date(Base$MES)
Base <- data.frame(Base)
head(Base, 6) #mostrando os 6 primeiros valores
tail(Base) #mostrando os 6 últimos valores


################################################################################
#TRANSFORMANDO AS VARIÁVEIS EM SÉRIES TEMPORAIS

ICMS <- ts(Base$ICMS, start = c(2004,1), end = c(2021,10), frequency = 12)
IPVA <- ts(Base$IPVA, start = c(2004,1), end = c(2021,10), frequency = 12)
ITCD <- ts(Base$ITCD, start = c(2004,1), end = c(2021,10), frequency = 12)


################################################################################
#ANÁLISE EXPLORATÓRIA


#ICMS
plot(ICMS, xlab= 'Período', ylab= 'Arrecadação de ICMS')
plot(decompose(ICMS, type= "multiplicative"), xlab= "Ano", col="black")
ggseasonplot(ICMS)


#IPVA
plot(IPVA, xlab= 'Período', ylab= 'Arrecadação de IPVA')
plot(decompose(IPVA, type= "multiplicative"), xlab= "Ano", col="black")
ggseasonplot(IPVA)


#ITCD
plot(ITCD, xlab= 'Período', ylab= 'Arrecadação de ITCD')
plot(decompose(ITCD, type= "multiplicative"), xlab= "Ano", col="black")
ggseasonplot(ITCD, main="")

#################################################################################


