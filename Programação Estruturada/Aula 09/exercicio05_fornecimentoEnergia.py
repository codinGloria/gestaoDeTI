kWh = float(input("Digite a quantidade de kWh consumida: "))
instalacao = input("""
Digite o tipo de instalação:
(R) para residências,
(I) para indústrias,
(C) para comércios)
""")

if instalacao.lower() == "r":
    if kWh <= 500:
        preco = 0.40
    else:
        preco = 0.65
elif instalacao.lower() == 'c':
    if kWh <= 1000:
        preco = 0.55
    else:
        preco = 0.60
elif instalacao.lower() == 'i':
    if kWh <= 5000:
        preco = 0.55
    else:
        preco = 0.60
else:
    print("Tipo de instalação inválido.")
    preco = 0

if (preco != 0):
    valor = kWh * preco
    print("Valor a pagar:", valor)
