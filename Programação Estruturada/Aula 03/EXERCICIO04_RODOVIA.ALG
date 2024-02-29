Algoritmo "exercicio04_rodovia"

Var

   velocPermit, velocMot, exc: real

Inicio

   ESCREVA("Qual é a velocidade permitida? ")
   LEIA(velocPermit)
   ESCREVA("Qual é a velocidade do motorista? ")
   LEIA(velocMot)

   exc <- velocMot - velocPermit

   SE (exc <= 0) ENTÃO
      ESCREVA("Você não precisa pagar multa.")
   SENAO
      SE (exc <= velocPermit * 0.2) ENTÃO
         ESCREVA("Infração média. Valor da multa: R$85,00 e 4 pontos.")
      SENAO
      SE (exc <= velocPermit * 0.5) ENTÃO
         ESCREVA("Infração grave. Valor da multa: R$127,00 e 5 pontos.")
      SENAO
         ESCREVA("Infração gravíssima. Valor da multa: R$574,00, 7 pontos, apreensão da carteira e suspensão do direito de dirigir.")
         FIMSE
      FIMSE
   FIMSE

Fimalgoritmo