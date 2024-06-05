from datetime import datetime

def cadastrar_pedido():
    nome_cliente = input("Digite o nome do cliente: ")
    data_abertura = datetime.now().strftime("%d/%m/%Y %H:%M:%S")
    pedido = {'cliente': nome_cliente, 'data_abertura': data_abertura, 'itens': []}
    return pedido

def adicionar_item(pedido):
    nome_produto = input("Digite o nome do produto: ")
    valor_unitario = float(input("Digite o valor unitário do produto: "))
    quantidade = int(input("Digite a quantidade desejada: "))
    valor_total = valor_unitario * quantidade
    item = {'nome_produto': nome_produto, 'valor_unitario': valor_unitario, 'quantidade': quantidade, 'valor_total': valor_total}
    pedido['itens'].append(item)

def listar_itens_pedido(pedido):
    print("\nItens do Pedido:")
    for item in pedido['itens']:
        print(f"Produto: {item['nome_produto']}, Quantidade: {item['quantidade']}, Valor Unitário: R${item['valor_unitario']:.2f}, Valor Total: R${item['valor_total']:.2f}")

def valor_total_pedido(pedido):
    total = sum(item['valor_total'] for item in pedido['itens'])
    print(f"\nValor total do pedido: R${total:.2f}")

def remover_item(pedido):
    listar_itens_pedido(pedido)
    indice = int(input("Digite o número do item que deseja remover: ")) - 1
    if 0 <= indice < len(pedido['itens']):
        del pedido['itens'][indice]
        print("Item removido com sucesso!")
    else:
        print("Índice inválido!")

def encerrar_pedido(pedido):
    print("\nPedido Encerrado:")
    print(f"Cliente: {pedido['cliente']}")
    print(f"Data de Abertura: {pedido['data_abertura']}")
    listar_itens_pedido(pedido)
    valor_total_pedido(pedido)

def menu():
    pedido = cadastrar_pedido()
    
    while True:
        print("\nMenu:")
        print("1. Adicionar Item")
        print("2. Listar Itens do Pedido")
        print("3. Valor Total do Pedido")
        print("4. Remover Item do Pedido")
        print("5. Encerrar Pedido")
        print("6. Sair")

        escolha = input("Escolha uma opção: ")
        
        if escolha == '1':
            adicionar_item(pedido)
        elif escolha == '2':
            listar_itens_pedido(pedido)
        elif escolha == '3':
            valor_total_pedido(pedido)
        elif escolha == '4':
            remover_item(pedido)
        elif escolha == '5':
            encerrar_pedido(pedido)
            break
        elif escolha == '6':
            break
        else:
            print("Opção inválida, por favor tente novamente.")

menu()
