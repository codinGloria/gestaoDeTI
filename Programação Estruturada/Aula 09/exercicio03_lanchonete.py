salgado = int(input("""
Digite o código do produto que deseja adquirir:
(1) Coxinha        - 6.00
(2) Empada         - 3.60
(3) Esfiha         - 3.80
(4) Pão de Queijo  - 2.00
"""))

total = 0
itensComprados = []

if salgado == 1:
    total += 6.00
    itensComprados.append("Coxinha")
elif salgado == 2:
    total += 3.60
    itensComprados.append("Empada")
elif salgado == 3:
    total += 3.80
    itensComprados.append("Esfiha")
elif salgado == 4:
    total += 2.00
    itensComprados.append("Pão de Queijo")
else:
    print("Opção de salgado inválida.")

escolha = input("""
Você deseja comprar alguma bebida?
(S) sim
(N) não
""")

if escolha.lower() == "s":
    bebida = int(input("""
Digite o código do produto que deseja adquirir:
(1) Refrigerante      - 6.00
(2) Suco Natural      - 4.00
(3) Chocolate quente  - 8.00
(4) Café              - 2.00
"""))
    if bebida == 1:
        total += 6.00
        itensComprados.append("Refrigerante")
    elif bebida == 2:
        total += 4.00
        itensComprados.append("Suco Natural")
    elif bebida == 3:
        total += 8.00
        itensComprados.append("Chocolate quente")
    elif bebida == 4:
        total += 2.00
        itensComprados.append("Café")
    else:
        print("Opção de bebida inválida.")

print("\nTotal da compra: R$", total)
print("Itens comprados:", itensComprados)
    
    
