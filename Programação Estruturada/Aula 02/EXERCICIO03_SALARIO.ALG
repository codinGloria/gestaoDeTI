Algoritmo "exercicio03_salario"

Var
   salario : real
   horas : inteiro
   salarioTotal : real

Inicio
   ESCREVA("Insira quanto você recebe por mês: ")
   LEIA(salario)
   ESCREVA("Agora, insira quantas horas trabalha por dia: ")
   LEIA(horas)
   
   salarioTotal <- salario / (horas * 30)
   
   ESCREVA("Você recebe por hora ", salarioTotal:2:2, " reais.")

Fimalgoritmo