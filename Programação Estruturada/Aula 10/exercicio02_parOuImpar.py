qntd = int(input("Digite o número limite: "))
tipo = input("""
Digite:
(P) para ver os números pares
(I) para impares
""")
num = 0
while (num <= qntd):
    if (tipo.lower() == "p"):
        if (num %2 == 0):
            print(num)
    elif (tipo.lower() == "i"):
       if (num %2 != 0):
            print(num)
    else:
        print("Tipo inválido!")
    num += 1
