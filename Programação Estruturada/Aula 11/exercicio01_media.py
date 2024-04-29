notas = [0, 0, 0, 0, 0]
soma = 0
i = 0

while (i < 5):
    notas[i] = float(input("Digite a nota %d: " % (i+1)))
    soma += notas[i]
    i += 1

media = soma / 5

print("Notas:", notas)
print("Média: %5.2f" % media)
