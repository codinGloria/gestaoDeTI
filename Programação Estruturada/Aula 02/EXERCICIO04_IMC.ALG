Algoritmo "exercicio04_IMC"

Var
   peso : real
   altura : real
   imc : real

Inicio
   ESCREVA("Digite seu peso: ")
   LEIA(peso)
   ESCREVA("Digite sua altura: ")
   LEIA(altura)
   
   imc <- peso / (altura * altura)
   
   ESCREVAL("------------------")
   ESCREVA("IMC: ", imc:2:2)


Fimalgoritmo