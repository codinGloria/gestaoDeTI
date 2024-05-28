def potencia(a, b):
    resultado = 1
    for _ in range(abs(b)):
        resultado *= a
    if b < 0:
        resultado = 1 / resultado
    return resultado

numero1 = int(input("Digite um número:"))
numero2 = int(input("Digite outro número:"))
print(potencia(numero1,numero2))
