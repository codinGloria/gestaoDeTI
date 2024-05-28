def qntdDigitos(n):
    return len(str(abs(n)))

numero = int(input("Digite um número:"))
print(qntdDigitos(numero))
