Algoritmo "exercicio06_parOuImparDecrescente"

Var
   numero, i: inteiro
   opcao: caractere

Inicio

   ESCREVA ("Digite um número: ")
   LEIA (numero)

   ESCREVA ("Escolha P para Par ou I para Ímpar: ")
   LEIA (opcao)

   PARA i DE numero ATÉ 0 PASSO -1 FAÇA
      SE (MAIUSC(opcao) = "P") ENTÃO
         SE(i % 2 = 0) ENTÃO
            ESCREVA(i)
            SE i > 0 ENTÃO
            ESCREVA(" -")
            FIMSE
         FIMSE
      SENÃO SE (maiusc(opcao) = "I") ENTÃO
         SE(i % 2 <> 0) ENTÃO
            ESCREVA(i)
            SE i > 1 ENTÃO
            ESCREVA(" -")
            FIMSE
         FIMSE
      FIMSE
   FIMPARA

Fimalgoritmo