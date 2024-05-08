pedido = []
total = 0.00

bebida = ['Refrigerante','Suco natural','Água','Água com Gás']
precoBebida = [6.00, 4.40, 2.00, 3.00]

hamburguer = ['Laçador', 'X-Bacon', 'X-Galinha', 'X-Tudo']
precoHamburguer = [22.60, 20.40, 18.20, 26.00]

menuPrincipal = """
-------- Glória Grill --------
      Como posso ajudar?

(1) Adicionar uma bebida
(2) Adicionar um sanduíche
(3) Visualizar o pedido
(4) Remover um produto
(5) Fechar a conta
"""

while (True):
    escolha = input(menuPrincipal)

    if escolha == "1":
        print("\n== Bebidas disponíveis ==")
        for i in range(len(bebida)):
            print(f"{i + 1}. {bebida[i]} - R${precoBebida[i]}")
        
        escolha = int(input("Escolha uma bebida: ")) - 1
        pedido.append(bebida[escolha])
        total += precoBebida[escolha]
    
    elif escolha == "2":
        print("\n== Sanduíches disponíveis ==")
        for i in range(len(hamburguer)):
            print(f"{i + 1}. {hamburguer[i]} - R${precoHamburguer[i]}")
        
        escolha = int(input("Escolha um sanduíche: ")) - 1
        pedido.append(hamburguer[escolha])
        total += precoHamburguer[escolha]
    
    elif escolha == "3":
        print("\n== Pedido ==")
        for item in pedido:
            print(item)
        print(f"Total: R${total}")
    
    elif escolha == "4":
        print("\n== Remover um produto do pedido ==")
        print("Itens do pedido:")
        for i, item in enumerate(pedido):
            print(f"{i + 1}. {item}")
        
        escolha = int(input("Escolha o número do item que deseja remover: ")) - 1
        removido = pedido.pop(escolha)
        if removido in bebidas:
            total -= precoBebida[bebida.index(removido)]
        elif removido in hamburguer:
            total -= precoHamburguer[hamburguer.index(removido)]
    
    elif escolha == "5":
        print("\n== Conta fechada ==")
        print("Itens do pedido:")
        for item in pedido:
            print(item)
        print(f"Total a pagar: R${total}")
        break
    
    else:
        print("Opção inválida. Por favor, escolha uma opção válida.")
