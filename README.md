# Projeção para as principais receitas públicas do Pará.

  Nesse trabalho é feito a projeção para as principais receitas públicas do Pará, sendo elas o ICMS (imposto sobre operações relativas à circulação de mercadorias e sobre prestações de serviços de transporte interestadual, intermunicipal e de comunicação), IPVA (Imposto Sobre Propriedade de Veículo Automotor) e ITCD (Imposto sobre a Transmissão Causa Mortis e Doação de Quaisquer Bens ou Direitos). 
  As projeções são feitas através da análise de Séries Temporais, usando as metodologias de suavização exponêncial de espaço de estado (SE) e a suavização exponêncial de Holt-Winters (HW). A base de dados é uma série temporal mensalmente de jan/2004 a out/2021.
Para a análise dos dados e realização de estimativas deste estudo, utilizou-se a linguagem R versão 4.1.2.

Link da Base de dados: http://www.sefa.pa.gov.br/index.php/receitas-despesas


## Projeção para o ICMS
### Análise Exploratória
Na figura abaixo, temos a série temporal de arrecadação de ICMS
![Rplot01](https://user-images.githubusercontent.com/54318133/143904378-b49c70ec-2e66-474d-bc33-59718ec9da79.png)

Na figura abaixo, temos a arrecadação de ICMS decomposta em tendência, sazonalidade e resíduo.
![DECOMPOSTA](https://user-images.githubusercontent.com/54318133/143904671-8b10fd61-966d-4258-b04d-b9671f6c50dd.png)

Na figura abaixo, temos a série de arrecadação de ICMS anualmente.
![MENSAL](https://user-images.githubusercontent.com/54318133/143905238-dc66fc4c-c4f7-4b1e-a40c-76d7693480d3.png)

A série de ICMS apresenta uma tendência crescente e uma aparente sazonalidade de 12 meses. 
Será feito a separação da base de dados em TREINO e TESTE, sendo a de treino de jan/2004 a dez/2020, e o de teste de jan/2021 a out/2021
