Algoritmo "exercicio04_multiplos5"

Var
   multiplo, numero : INTEIRO

Inicio

   multiplo <- 0
   
   ESCREVA ("Digite um número: ")
   LEIA (numero)

   ENQUANTO verdadeiro FAÇA
   
      SE numero % 5 = 0 ENTÃO
      
         ESCREVAL (numero)
         multiplo <- multiplo + 1
         
         SE multiplo = 10 ENTÃO
            INTERROMPA
         FIMSE
         
      FIMSE
      
      numero <- numero + 1
      
   FIMENQUANTO

Fimalgoritmo