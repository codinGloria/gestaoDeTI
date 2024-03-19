Algoritmo "exercicio07_lojaCalcados"

Var
   opcao : inteiro
   total: real

Inicio

   total <- 0

   REPITA
      ESCREVAL ("-- Menu de Produtos: --")
      ESCREVAL ("(1) Tênis ---- R$100.00")
      ESCREVAL ("(2) Sandália -- R$50.00")
      ESCREVAL ("(3) Botas ---- R$120.00")
      ESCREVAL ("(4) Chinelos -- R$30.00")
      ESCREVAL ("(0) Encerrar Pedido")
      ESCREVAL ("Escolha um produto ou 0 para encerrar o pedido: ")
      LEIA(opcao)
      ESCREVAL ()

      ESCOLHA opcao
      CASO 1
         total <- total + 100.00
      CASO 2
         total <- total + 50.00
      CASO 3
         total <- total + 120.00
      CASO 4
         total <- total + 30.00
      CASO 0
         INTERROMPA
      OUTROCASO
         ESCREVAL ("Opção inválida. Tente novamente.")
      FIMESCOLHA

   ATE opcao = 0

   ESCREVAL ()
   ESCREVAL ("Resumo da compra:")
   ESCREVAL ("Total de produtos: R$", total)

Fimalgoritmo