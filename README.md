# Projeção para as principais receitas públicas do Pará.

 _&nbsp;_ _&nbsp;_  Nesse trabalho é feito a projeção para uma das principais receitas públicas do Pará, sendo ela o ICMS (imposto sobre operações relativas à circulação de mercadorias e sobre prestações de serviços de transporte interestadual).\
 _&nbsp;_ _&nbsp;_  As projeções são feitas através da análise de Séries Temporais, usando as metodologias do modelo de espaço de estado de suavização exponencial (SE) e a suavização exponêncial de Holt-Winters (HW). \
 _&nbsp;_ _&nbsp;_  A base de dados é uma série temporal mensalmente de jan/2004 a out/2021. \
Para a análise dos dados e realização de estimativas deste estudo, utilizou-se a linguagem R versão 4.1.2.

Link da Base de dados: http://www.sefa.pa.gov.br/index.php/receitas-despesas


## Projeção para o ICMS
### Análise Exploratória
 _&nbsp;_ _&nbsp;_  Na figura abaixo, temos a série temporal de arrecadação de ICMS.
![Rplot01](https://user-images.githubusercontent.com/54318133/143904378-b49c70ec-2e66-474d-bc33-59718ec9da79.png)

 _&nbsp;_ _&nbsp;_  Na figura abaixo, temos a arrecadação de ICMS decomposta em tendência, sazonalidade e resíduo.
![DECOMPOSTA](https://user-images.githubusercontent.com/54318133/143904671-8b10fd61-966d-4258-b04d-b9671f6c50dd.png)

 _&nbsp;_ _&nbsp;_  Na figura abaixo, temos a série de arrecadação de ICMS anualmente.
![ATual](https://user-images.githubusercontent.com/54318133/144069542-92b7e670-1940-439c-aa11-1818e0d8d23c.png)

 _&nbsp;_ _&nbsp;_  A série de ICMS apresenta uma tendência crescente e uma aparente sazonalidade de 12 meses. Será feito a separação da base de dados em TREINO e TESTE, sendo a de treino de jan/2004 a dez/2020, e o de teste de jan/2021 a out/2021.

### Projeção para o ICMS com o modelo de  suavização exponencial de Holt-Winters (HW)
 _&nbsp;_ _&nbsp;_  O primeiro passo para a projeção com modelo HW é a escolha entre o uso do modelo de HW aditivo ou multiplicativo.
Essa escolha é feita através do critério de informação do Erro Absoluto Médio Percentual (MAPE). \
 _&nbsp;_ _&nbsp;_ O valor do MAPE para o valor real da série de treino e a modelagem para o HW multiplicativo foi de 5.05, para o valor real da série de treino e a modelagem para o HW aditivo foi de 5.4,logo, será usado o HW multiplicativo para a modelagem de ICMS. \
 _&nbsp;_ _&nbsp;_ Com a modelagem de HW multiplicativo, obtivemos os parâmetros alfa= 0.35, beta= 0.009 e gama= 12, porém, para uma melhor predição, foi feito a troca de parâmetros através do critério de informação MAPE, e obtivemos um alfa= 0.3, beta= 0.0009 e gama= 0.09 com um menor valor de MAPE.
 
  _&nbsp;_ _&nbsp;_ Na figura abaixo, temos o resíduo da modelagem de HW multiplicativo.
![residuoMMM](https://user-images.githubusercontent.com/54318133/144073449-2d6c64ce-fe53-40e4-8a89-bb65a94a4b81.png)

  _&nbsp;_ _&nbsp;_ Na figura abaixo, temos a série de treino do ICMS e a modelagem de HW multiplicativo.
![Model MMM](https://user-images.githubusercontent.com/54318133/144073642-d6f80314-0852-4c2f-b66c-cb7f7545c258.png)

 _&nbsp;_ _&nbsp;_ Com a escolha dos parâmetros, o próximo passo é fazer a projeção de arrecadação de ICMS para 10 meses a frente para fazer a comparação de melhor modelo( SE ou HW) através do MAPE. Essa comparação será feita na conclusão. \
 _&nbsp;_ _&nbsp;_ Na figura abaixo, temos o valor de teste e o valor previsto pela modelagem de HW multiplicativo. 
 ![projeçãoHW MMM](https://user-images.githubusercontent.com/54318133/144074880-b7498d0c-dd68-4db7-8236-c8b013b509d6.png)




### Projeção para o ICMS com o modelo de espaço de estado de suavização exponencial (SE)
 _&nbsp;_ _&nbsp;_  Após a aplicação da função da modelagem SE, foi obtido os parâmetros alfa= 0.36, beta= 0.017, gama= 1e-04 e phi= 0.98. Não foi feito a troca de parâmetros . \
 _&nbsp;_ _&nbsp;_  Na figura abaixo, temos o gráfico de resíduo da modelagem de SE.
![residuo](https://user-images.githubusercontent.com/54318133/143907539-48d797c5-2389-4eb7-a72d-9f97e88b5412.png)

 _&nbsp;_ _&nbsp;_  Na figura abaixo, temos a modelagem de SE e a base de treino.
![modelagem](https://user-images.githubusercontent.com/54318133/143907803-9ebcb223-9856-4d1e-ad87-9a7738c54146.png)

 _&nbsp;_ _&nbsp;_  Na figura abaixo, temos o valor de teste e o valor previsto pela modelagem de espaço de estado de suavização exponencial.
 ![projeçãoHW MMM](https://user-images.githubusercontent.com/54318133/144077442-7908ed05-bb48-43d2-a302-1259ce9570ab.png)








