
'------------------------------ choice of the best model --------------------------'


etsICMS <- ets(Treinoicms) 
previsaoets <- forecast.ets(etsICMS, h=10, level= 95)
previsaoets <- data.frame(previsaoets)
previsaoets

modelo_holtwinters <- HoltWinters(x = Treinoicms , alpha = 0.3,
                                  beta = 0.0009, 
                                  gamma = 0.09,
                                  seasonal = "multiplicative")
previsao_holtwinters <- forecast(modelo_holtwinters, h = 10, level = 0.95) 
previsao_Holtwinters <- data.frame(previsao_holtwinters)
previsao_Holtwinters


MapeETS <- mean(abs((Testeicms - previsaoets$Point.Forecast)/Testeicms))*100
MapeETS

MapeHW <- mean(abs((Testeicms - previsao_Holtwinters$Point.Forecast)/Testeicms))*100
MapeHW



'------------------------------------- forecast ------------------------------------------'

etsICMS <- ets(ICMS) 
previsaoets <- forecast.ets(etsICMS, h=14, level= 95)
previsaoets <- data.frame(previsaoets)
previsaoets$Lo.95 <- NULL
previsaoets$Hi.95 <- NULL

plot(Treinoicms,
     main='',
     xlab='Periodo', ylab='Arrecadacao de ICMS',
     col='black',
     bty='l')
abline(previsaoets, col='red')




previsaoets$Point.Forecast  <- ts(previsaoets$Point.Forecast, start= c(2021,11), end= c(2022,12), frequency = 12)
previsaoets$Point.Forecast <- window(previsaoets$Point.Forecast, start= c(2021,11), end= c(2022,12))

autoplot(ICMS, xlab = "Periodo",ylab = 'Arrecadacao de ICMS')+
   autolayer(previsaoets$Point.Forecast)

