itens = []

while (True):
    print("+--   Bem-vindo!   --+")
    print("| (1) Adicionar item |")
    print("| (2) Remover item   |")
    print("| (3) Listar itens   |")
    print("| (4) Sair           |")
    print("+--------------------+")
    opcao = input("-> ")
    
    if not opcao.isdigit():
        print("\nOpção inválida!\n")
        continue
    
    opcao = int(opcao)
    
    if (opcao == 1):
        
        nome = input("Nome do item: ")
        quantidade = int(input("Quantidade: "))
        valorUnitario = float(input("Valor unitário: ").replace(",", "."))
        
        itens.append([nome, quantidade, valorUnitario])
        
        print("\nItem adicionado com sucesso!\n")
        
    elif opcao == 2:
        
        if (len(itens) == 0):
            print("Nenhum item para remover!\n")
            continue
        
        print("[ID] Nome\n")
        for indice, item in enumerate(itens):
            print("[%d] %s" % (indice, item[0]))
        
        print("\nID do ítem que deseja remover\n")
        id_item = int(input("-> "))
        
        if id_item < 0 or id_item >= len(itens):
            print("\nID inválido!\n")
            continue
        else:
            del itens[id_item]
            print("\nItem removido com sucesso!\n")
    elif opcao == 3:
        
        print("[ ITENS ]\n")
        
        quantidade_total = 0
        valor_total = 0
        
        print("ID | Nome - Quantidade - Valor unitário (Valor total)")
        print("---|-----------------------------------------------")
        for indice, item in enumerate(itens):
            print("%d  | %s - %d unidade(s) - R$ %.2f (R$ %.2f)" % (indice, item[0], item[1], item[2], item[1] * item[2]))
            quantidade_total += item[1]
            valor_total += item[1] * item[2]
        
        print("\nQuantidade unitária de itens -- %d" % len(itens))
        print("Quantidade total de itens ----- %d" % quantidade_total)
        print("Valor total da compra --------- R$ %.2f" % valor_total)
        
        input("\nPressione enter para continuar...")
    elif opcao == 4:
        break
    else:
        print("\nOpção inválida!")
