def numeroReverso(n):
    return int(str(n)[::-1])

numero = int(input("Digite o número que deseja reverter:"))
print(numeroReverso(numero))