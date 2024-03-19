Algoritmo "exercicio03_cardapio"

Var

   refeicao, bebida: INTEIRO
   querBebida, continuar: CARACTERE
   total: REAL
   pedido: CARACTERE

Inicio

   total <- 0
   pedido <- ""
   continuar <- "S"

   ENQUANTO (MAIUSC(continuar) = "S") Faca
      ESCREVAL("------------ PRATOS ------------")
      ESCREVAL("(1) Crepe --------------- R$14,00")
      ESCREVAL("(2) Espaguete ----------- R$10,00")
      ESCREVAL("(3) Cachorro Quente ------ R$8,00")
      ESCREVAL("(4) Tapioca ------------- R$12,00")
      ESCREVAL("")
      ESCREVAL("O que deseja comprar?")
      LEIA(refeicao)

      ESCREVAL("Vai querer beber algo? (S/N): ")
      LEIA(querBebida)

      Se (MAIUSC(querBebida) = "S") Então
         ESCREVAL("------------ BEBIDAS ------------")
         ESCREVAL("(1) Água Mineral -------- R$ 4,00")
         ESCREVAL("(2) Refrigerante(Lata) -- R$ 8,00")
         ESCREVAL("(3) Laranjada ----------- R$ 6,00")
         ESCREVAL("(4) Suco ---------------- R$ 4,00")
         LEIA(bebida)
      FimSe

      ESCREVAL("Deseja adicionar mais algum item ao pedido? (s/n): ")
      LEIA(continuar)

      Escolha (refeicao)
      Caso 1
         total <- total + 14.00
         pedido <- pedido + "Crepe --------------- R$14,00 | "
      Caso 2
         total <- total + 10.00
         pedido <- pedido + "Espaguete ----------- R$10,00 | "
      Caso 3
         total <- total + 8.00
         pedido <- pedido + "Cachorro Quente ------ R$8,00 | "
      Caso 4
         total <- total + 12.00
         pedido <- pedido + "Tapioca ------------- R$12,00 | "
      OutroCaso
         ESCREVAL("Opção inválida :c")
      FimEscolha

      Se (MAIUSC(querBebida) = "S") Então
         Escolha (bebida)
         Caso 1
            total <- total + 4.00
            pedido <- pedido + "Água Mineral -------- R$ 4,00 | "
         Caso 2
            total <- total + 8.00
            pedido <- pedido + "Refrigerante(Lata) -- R$ 8,00 | "
         Caso 3
            total <- total + 6.00
            pedido <- pedido + "Laranjada ----------- R$ 6,00 | "
         Caso 4
            total <- total + 4.00
            pedido <- pedido + "Suco ---------------- R$ 4,00 | "
         OutroCaso
            ESCREVAL("Opção inválida :c")
         FimEscolha
      FimSe
   FimEnquanto

   ESCREVAL("------------ PEDIDO ------------")
   ESCREVAL("Produtos comprados: ", pedido)
   ESCREVAL("TOTAL: R$", total:8:2)

Fimalgoritmo