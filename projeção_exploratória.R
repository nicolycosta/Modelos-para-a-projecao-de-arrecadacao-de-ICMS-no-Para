################################################################################
#Used packages
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
library(ggplot2)

################################################################################
#Downloading the main public revenue database

Base <- read_xlsx(path = "Base.xlsx", sheet = 1)
Base$MES <- as.Date(Base$MES)
Base <- data.frame(Base)
head(Base, 6) #showing the first 6 values
tail(Base) #showing the last 6 values


################################################################################
#transforming the variables into time series

ICMS <- ts(Base$ICMS, start = c(2004,1), end = c(2021,10), frequency = 12)
IPVA <- ts(Base$IPVA, start = c(2004,1), end = c(2021,10), frequency = 12)
ITCD <- ts(Base$ITCD, start = c(2004,1), end = c(2021,10), frequency = 12)


################################################################################
#exploratory analysis

#ICMS
plot(ICMS, xlab= 'Periodo', ylab= 'Arrecadacao de ICMS')
plot(decompose(ICMS, type= "multiplicative"), xlab= "Ano", col="black")
ggseasonplot(ICMS)

#IPVA
plot(IPVA, xlab= 'Periodo', ylab= 'Arrecadacao de IPVA')
plot(decompose(IPVA, type= "multiplicative"), xlab= "Ano", col="black")
ggseasonplot(IPVA)

#ITCD
plot(ITCD, xlab= 'Periodo', ylab= 'Arrecadacao de ITCD')
plot(decompose(ITCD, type= "multiplicative"), xlab= "Ano", col="black")
ggseasonplot(ITCD, main="")

#################################################################################

#################################################################################


