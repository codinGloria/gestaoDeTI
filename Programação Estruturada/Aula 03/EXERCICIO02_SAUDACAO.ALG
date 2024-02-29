Algoritmo "exercicio02_saudacao"

Var
   nome, sexo: caractere

Inicio

   ESCREVA("Digite seu nome: ")
   LEIA(nome)
   ESCREVA("Digite seu sexo (M/F): ")
   LEIA(sexo)

   SE(sexo = "M") ENTÃO
      ESCREVA("Bem vindo ", nome)
   SENAO
      ESCREVA("Bem vinda ", nome)
   FIMSE

Fimalgoritmo