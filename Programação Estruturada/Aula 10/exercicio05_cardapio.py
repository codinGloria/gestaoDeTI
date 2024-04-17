pedido = ""
total = 0.0
continuar = "s"

while continuar.lower() == "s":
    print("""
         MENU
(1) Hambúrguer    R$18.10
(2) Pizza         R$32.40
(3) Sushi         R$32.40
(4) Salada        R$10.00
""")

    escolha = int(input("Digite o código do produto desejado: "))

    if escolha == 1:
        pedido += "Hambúrguer -> R$18.10\n"
        total += 18.10
    elif escolha == 2:
        pedido += "Pizza -> R$32.40\n"
        total += 32.40
    elif escolha == 3:
        pedido += "Sushi -> R$32.40\n"
        total += 28.90
    elif escolha == 4:
        pedido += "Salada -> R$10.00\n"
        total += 10.00
    else:
        print("Código de produto inválido.")

    continuar = input("Deseja adicionar outro produto? (s/n): ")

print("\nProdutos adquiridos:\n", pedido)
print("------------------------")
print("Total do pedido: R$%.2f" %total)
