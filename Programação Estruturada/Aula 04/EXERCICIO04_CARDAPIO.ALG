Algoritmo "exercicio04_cardapio"

Var

   refeicao, bebida : INTEIRO
   querBebida : CARACTERE
   total : REAL
   
Inicio

   ESCREVAL ("------------ PRATOS ------------")
   ESCREVAL ("(1) Crepe --------------- R$14,00")
   ESCREVAL ("(2) Espaguete ----------- R$10,00")
   ESCREVAL ("(3) Cachorro Quente ------ R$8,00")
   ESCREVAL ("(4) Tapioca ------------- R$12,00")
   ESCREVAL ("")
   ESCREVAL ("O que deseja comprar?")
   LEIA(refeicao)

   ESCREVAL ("Vai querer beber algo?(S/N): ")
   LEIA(querBebida)

   SE (MAIUSC(querBebida) = "S") ENTÃO
   
      ESCREVAL ("------------ BEBIDAS ------------")
      ESCREVAL ("(1) Água Mineral -------- R$ 4,00")
      ESCREVAL ("(2) Refrigerante(Lata) -- R$ 8,00")
      ESCREVAL ("(3) Laranjada ----------- R$ 6,00")
      ESCREVAL ("(4) Suco ---------------- R$ 4,00")
      LEIA (bebida)

   FIMSE

   ESCREVAL ("------------ PEDIDO ------------")

   ESCOLHA (refeicao)
   
      CASO 1
         total <- 14.00
         ESCREVAL ("Crepe --------------- R$14,00")
      caso 2
         total <- 10.00
         ESCREVAL ("Espaguete ----------- R$10,00")
      caso 3
         total <- 8.00
         ESCREVAL ("Cachorro Quente ------ R$8,90")
      caso 4
         total <- 12.00
         ESCREVAL ("Tapioca ------------- R$12,80")
      OUTROCASO
         ESCREVAL ("Opção inválida :c")

   FIMESCOLHA

   SE MAIUSC(querBebida) = "S" ENTÃO

      ESCOLHA(bebida)
         CASO 1
            total <- total + 3.00
            ESCREVAL ("Água Mineral -------- R$ 4,00")
         CASO 2
            total <- total + 5.00
            ESCREVAL ("Refrigerante(Lata) -- R$ 8,00")
         CASO 3
            total <- total + 5.00
            ESCREVAL ("Laranjada ----------- R$ 6,00")
         CASO 4
            total <- total + 4.00
            ESCREVAL ("Suco ---------------- R$ 4,80")
        OUTROCASO
         ESCREVAL ("Opção inválida :c")

         FIMESCOLHA
      FIMSE

   ESCREVAL ("TOTAL: R$", total:4:2)
   
Fimalgoritmo