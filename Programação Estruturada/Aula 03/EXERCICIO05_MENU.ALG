Algoritmo "exercicio05_menu"

Var

   codigo: inteiro
   quantidade: inteiro
   total: real

Inicio

   ESCREVA("Digite o código do produto: ")
   LEIA(codigo)
   ESCREVA("Digite a quantidade: ")
   LEIA(quantidade)

   ESCOLHA codigo
      CASO 1
         total <- quantidade * 0.50
      CASO 2
         total <- quantidade * 0.75
      CASO 3
         total <- quantidade * 0.40
      CASO 4
         total <- quantidade * 0.80
   FIMESCOLHA

   ESCREVA("Total a pagar: R$", total:6:2)

Fimalgoritmo