numero = int(input("Digite um número inteiro: "))

if numero <= 1:
    print("Número não se enquadra em primo ou nao primo.")
elif numero == 2:
    print("O número é primo.")
else:
    divisor = 2
    while numero % divisor != 0:
        divisor += 1
    if divisor == numero:
        print("O número é primo.")
    else:
        print("O número não é primo.")
