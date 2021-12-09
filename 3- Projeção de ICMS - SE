################################################################################
################################################################################
########## Application of the exponential smoothing state space model ##########
################################################################################
################################################################################

etsICMS <- ets(Treinoicms) 
summary(etsICMS)



'-------------------------Residue test---------------------------------'
par(mfrow = c(1, 2), las = 1)
plot(etsICMS$residuals, xlab=' Period', main="Resid") #the parameters will not be changed
acf(etsICMS$residuals, main="Correlation Function Estimation")

'---------------Training chart and modeling----------------------------'
plot(etsICMS$x,
     main='',
     xlab='Periodo', ylab='Arrecadacao de ICMS',
     col='blue',
     bty='l')
par(new=TRUE)
plot(etsICMS$fitted,
     axes=F, ann=F,
     col='red',
     type = "l")

legend('topleft',
       c('Valor real', 'Modelagem Suavizacao Exponencial'),
       col=c('blue', 'red', 4), lty=1:2,
       bty='n')
grid(col='darkgrey')




'------------------------- forecast ----------------------------------'

etsICMS <- ets(Treinoicms) 
etsICMS
previsaoets <- forecast.ets(etsICMS, h=10, level= 95)
previsaoets <- data.frame(previsaoets)
previsaoets
summary(etsICMS)

plot(Testeicms,
     main='',
     xlab='Periodo', ylab='Arrecadacao de ICMS',
     col='blue',
     bty='l')
par(new=TRUE)
plot(previsaoets$Point.Forecast,
     axes=F, ann=F,
     col='red',
     type = "l")

legend('topleft',
       c('Valor real', 'Modelagem Suavizacao Exponencial'),
       col=c('blue', 'red', 4), lty=1:2,
       bty='n')
grid(col='darkgrey')
