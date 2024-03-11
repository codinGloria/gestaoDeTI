Algoritmo "exercicio03_fichaCadastral"

Var

   nome, sexo, cidade, formaTratamento : CARACTERE
   anoNasc : INTEIRO

Inicio

   ESCREVAL ("Nome:")
   LEIA (nome)

   ESCREVAL ("Sexo (F ou M):")
   LEIA (sexo)

   ESCREVAL ("Cidade:")
   LEIA (cidade)

   ESCREVAL ("Ano de nascimento:")
   LEIA (anoNasc)

   SE MAIUSC(sexo) = "M" ENTÃO
      formaTratamento <- "Sr"
   SENAO
      formaTratamento <- "Srª"
   FIMSE

   ESCREVAL ("FICHA CADASTRAL")
   ESCREVAL (formaTratamento, ": ", nome)
   ESCREVAL ("Idade: ", 2024 - anoNasc)
   ESCREVAL ("Cidade: ", cidade)

Fimalgoritmo