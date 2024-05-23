valores = [9, 8, 7, 12, 0, 13, 21, 35, 6, 11, 1]
pares = []
impares = []

for valor in valores:
    if valor % 2 == 0:
        pares.append(valor)
    else:
        impares.append(valor)

print("Pares:", pares)
print("Ímpares:", impares)
