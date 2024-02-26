Algoritmo "exercicio01_media"

Var
   nota1 : real
   nota2 : real
   nota3 : real
   media : real

Inicio
   ESCREVA("Insira a primeira nota: ")
   LEIA(nota1)
   ESCREVA("Insira a segunda nota: ")
   LEIA(nota2)
   ESCREVA("Insira a terceira nota: ")
   LEIA(nota3)
   
   media <- (nota1 + nota2 + nota3) / 3
   
   ESCREVA("Média das notas = ", media:2:2)

Fimalgoritmo