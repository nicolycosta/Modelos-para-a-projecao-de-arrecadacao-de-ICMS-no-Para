#################################################################################################
#################################################################################################
################ Application of the exponential smoothing Holt Winters model ####################
#################################################################################################
#################################################################################################


'------ choice of additive model and multiplicative model  by the MAPE decision criterion --------'



modelo_holtwintersMult <- HoltWinters(x = Treinoicms, 
                                      seasonal = "multiplicative")
modelo_holtwintersAdit <- HoltWinters(x = Treinoicms, 
                                      seasonal = "additive") 

'residual and acf'

residual <- modelo_holtwintersMult$fitted[,1] - window(Treinoicms, start= c(2005,1), end= c(2020,12))
Resid1 <- modelo_holtwintersMult$fitted[,1] - Treinoicms
par(mfrow = c(1, 2), las = 1)
plot(Resid1, xlab=' Period', main="Resid")
acf(Resid1, main="Correlation Function Estimation")


residual <- modelo_holtwintersAdit$fitted[,1] - window(Treinoicms, start= c(2005,1), end= c(2020,12))
Resid2 <- modelo_holtwintersAdit$fitted[,1] - Treinoicms
par(mfrow = c(1, 2), las = 1)
plot(Resid2, xlab=' Period', main="Resid")
acf(Resid2, main="Correlation Function Estimation")




'----------------------------------- Parameters and residual test --------------------------------'


modelo_holtwinters0 <- HoltWinters(x = Treinoicms, 
                                  seasonal = "multiplicative") # as the mape = 0.05, the model will be multiplicative


'---change of parameters---'
modelo_holtwinters <- HoltWinters(x = Treinoicms , alpha = 0.3,
                                  beta = 0.0009, 
                                  gamma = 0.09,
                                  seasonal = "multiplicative") 

mean(abs(((Treinoicms - modelo_holtwinters$fitted[,1])/Treinoicms)*100)) # MAPE = 5.006
mean(abs(((Treinoicms - modelo_holtwinters0$fitted[,1])/Treinoicms)*100))



'---residual---'
residual <- modelo_holtwinters$fitted[,1] - window(Treinoicms, start= c(2005,1), end= c(2020,12))
plot(residual, xlab=' Periodo')


'---Model---'
plot(window(Treinoicms, start= c(2005,1), end= c(2020,12)),
     main='',
     xlab='Periodo', ylab='Arrecadacao de ICMS',
     col='blue',
     bty='l')
par(new=TRUE)
plot( modelo_holtwinters$fitted[,1],
      axes=F, ann=F,
      col='red',
      type = "l")

legend('topleft',
       c('Valor real', 'Holt-Winters Multiplicativo'),
       col=c('blue', 'red', 4), lty=1:2,
       bty='n')
grid(col='darkgrey')




'------------------------------- forecast -------------------------------------'
modelo_holtwinters <- HoltWinters(x = Treinoicms , alpha = 0.3,
                                  beta = 0.0009, 
                                  gamma = 0.09,
                                  seasonal = "multiplicative")
previsao_holtwinters <- forecast(modelo_holtwinters, h = 10, level = 0.95) 
previsao_Holtwinters <- data.frame(previsao_holtwinters)
previsao_Holtwinters



plot(Testeicms,
     main='',
     xlab='Periodo', ylab='Arrecadacao de ICMS',
     col='blue',
     bty='l')
par(new=TRUE)
plot(previsao_Holtwinters$Point.Forecast,
     axes=F, ann=F,
     col='red',
     type = "l")
legend('topleft',
       c('Valor real', "previsao"),
       col=c('blue', 'red', 4), lty=1:2,
       bty='n')
grid(col='darkgrey')










