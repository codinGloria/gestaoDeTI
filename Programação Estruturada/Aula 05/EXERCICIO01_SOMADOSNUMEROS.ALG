Algoritmo "exercicio01_somaDosNumeros"

Var

   numero, soma : real
   continuar : caractere
   
Inicio

   soma <- 0
   continuar <- "s"

   ENQUANTO (continuar = "s") FAÇA
   
      ESCREVAL("Digite um número: ")
      LEIA(numero)
      soma <- soma + numero

      ESCREVAL("Deseja continuar digitando números? (s/n): ")
      LEIA (continuar)

   FIMENQUANTO

   ESCREVA("A soma dos números é igual a ", soma)

Fimalgoritmo