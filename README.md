# Projeção para as principais receitas públicas do Pará.

 _&nbsp;_ _&nbsp;_  Nesse trabalho é feito a projeção para as principais receitas públicas do Pará, sendo elas o ICMS (imposto sobre operações relativas à circulação de mercadorias e sobre prestações de serviços de transporte interestadual, intermunicipal e de comunicação), IPVA (Imposto Sobre Propriedade de Veículo Automotor) e ITCD (Imposto sobre a Transmissão Causa Mortis e Doação de Quaisquer Bens ou Direitos). \
 _&nbsp;_ _&nbsp;_  As projeções são feitas através da análise de Séries Temporais, usando as metodologias do modelo de espaço de estado de suavização exponencial (SE) e a suavização exponêncial de Holt-Winters (HW). \
 _&nbsp;_ _&nbsp;_  A base de dados é uma série temporal mensalmente de jan/2004 a out/2021. \
Para a análise dos dados e realização de estimativas deste estudo, utilizou-se a linguagem R versão 4.1.2.

Link da Base de dados: http://www.sefa.pa.gov.br/index.php/receitas-despesas


## Projeção para o ICMS
#### Análise Exploratória
 _&nbsp;_ _&nbsp;_  Na figura abaixo, temos a série temporal de arrecadação de ICMS.
![Rplot01](https://user-images.githubusercontent.com/54318133/143904378-b49c70ec-2e66-474d-bc33-59718ec9da79.png)

 _&nbsp;_ _&nbsp;_  Na figura abaixo, temos a arrecadação de ICMS decomposta em tendência, sazonalidade e resíduo.
![DECOMPOSTA](https://user-images.githubusercontent.com/54318133/143904671-8b10fd61-966d-4258-b04d-b9671f6c50dd.png)

 _&nbsp;_ _&nbsp;_  Na figura abaixo, temos a série de arrecadação de ICMS anualmente.
![MENSAL](https://user-images.githubusercontent.com/54318133/143905238-dc66fc4c-c4f7-4b1e-a40c-76d7693480d3.png)

 _&nbsp;_ _&nbsp;_  A série de ICMS apresenta uma tendência crescente e uma aparente sazonalidade de 12 meses. Será feito a separação da base de dados em TREINO e TESTE, sendo a de treino de jan/2004 a dez/2020, e o de teste de jan/2021 a out/2021.

#### Projeção para o ICMS com o modelo de  suavização exponencial de Holt-Winters (HW)
 _&nbsp;_ _&nbsp;_  O primeiro passo para a projeção com modelo HW é a escolha entre o uso do modelo de HW aditivo ou multiplicativo.
Essa escolha é feita através do critério de informação do Erro Absoluto Médio Percentual (MAPE).





#### Projeção para o ICMS com o modelo de espaço de estado de suavização exponencial (SE)
 _&nbsp;_ _&nbsp;_  Após a aplicação da função da modelagem SE, foi feito o gráfico do resíduo e a de modelagem.
 _&nbsp;_ _&nbsp;_  Na figura abaixo, temos o gráfico de resíduo da modelagem de SE.

![residuo](https://user-images.githubusercontent.com/54318133/143907539-48d797c5-2389-4eb7-a72d-9f97e88b5412.png)

 _&nbsp;_ _&nbsp;_  Na figura abaixo, temos o gráfico de modelagem de SE e a base de treino.
![modelagem](https://user-images.githubusercontent.com/54318133/143907803-9ebcb223-9856-4d1e-ad87-9a7738c54146.png)

