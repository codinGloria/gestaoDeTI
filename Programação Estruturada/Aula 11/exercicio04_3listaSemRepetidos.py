lista1 = [int(x) for x in input("Digite os elementos da primeira lista separados por espaço: ").split()]
lista2 = [int(x) for x in input("Digite os elementos da segunda lista separados por espaço: ").split()]

lista3 = list(set(lista1 + lista2))
print("Terceira lista sem elementos repetidos:", lista3)
