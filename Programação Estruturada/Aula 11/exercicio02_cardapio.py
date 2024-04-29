produtos = []
valores = []
pedido = ""
total = 0.0
continuar = "s"

print("""
MENU
(1) Hambúrguer R$18.10
(2) Pizza R$32.40
(3) Sushi R$28.90
(4) Salada R$10.00
""")

while continuar.lower() == "s":
    
    escolha = int(input("\nDigite o código do produto desejado: "))

    if escolha == 1:
        produtos.append("Hambúrguer")
        valores.append(18.10)
    elif escolha == 2:
        produtos.append("Pizza")
        valores.append(32.40)
    elif escolha == 3:
        produtos.append("Sushi")
        valores.append(28.90)
    elif escolha == 4:
        produtos.append("Salada")
        valores.append(10.00)
    else:
        print("Código de produto inválido.")


    print("\nProdutos adquiridos:")
    
    for i in range(len(produtos)):
        print(f"{produtos[i]} - R${valores[i]}")
    total = sum(valores)
    print("------------------------")
    print("Total do pedido: R$%.2f\n" % total)

    continuar = input("Deseja adicionar outro produto? (s/n): ")    
