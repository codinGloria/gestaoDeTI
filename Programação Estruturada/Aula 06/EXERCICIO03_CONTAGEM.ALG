Algoritmo "exercicio03_contagem"

Var
   contador, quantidade : INTEIRO
   
Inicio

   contador <- 0
   
   ENQUANTO verdadeiro FAÇA
   
      ESCREVAL ("Quantos números você quer imprimir? ")
      LEIA (quantidade)
      
      SE quantidade > 30 ENTÃO
         ESCREVAL("Você digitou um número maior que 30. Programa encerrado.")
         INTERROMPA
      FIMSE

      PARA contador DE 1 ATÉ quantidade FAÇA
         ESCREVAL(contador)
      FIMPARA
      
   FIMENQUANTO

Fimalgoritmo