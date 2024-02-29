Algoritmo "exercicio03_doacaoSangue"

Var
   idade: inteiro
   peso: real
   tatuagem, alcool: caractere

Inicio

   ESCREVAL("Qual é a sua idade?")
   LEIA(idade)
   SE ((idade < 19) ou (idade > 69)) ENTÃO
      ESCREVA("Desculpe, você ainda não pode doar sangue.")
   Fimalgoritmo
   FIMSE
   
   ESCREVAL("Qual é o seu peso?")
   LEIA(peso)
   SE (peso < 50.0) ENTÃO
      ESCREVA("Desculpe, você não atende ao requisito de peso mínimo para doar sangue.")
   Fimalgoritmo
   FIMSE

   ESCREVAL("Você fez alguma tatuagem no último ano? (S/N)")
   LEIA(tatuagem)
   SE ((tatuagem = "S")OU (tatuagem = "s")) ENTÃO
      ESCREVA("Desculpe, você precisa esperar ao menos 1 ano para doar sangue após fazer uma tatuagem.")
   Fimalgoritmo
   FIMSE

   ESCREVAL("Você ingeriu álcool nas últimas 12 horas? (S/N)")
   LEIA(alcool)
   SE ((alcool = "S") OU (alcool = "s")) ENTÃO
      ESCREVA("Desculpe, você não pode doar sangue por ter ingerido álcool recentemente.")
   SENAO SE
      ESCREVA("Você pode ser um doador de sangue!!")
   FIMSE

Fimalgoritmo