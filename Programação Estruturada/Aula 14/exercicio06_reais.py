def reais(valor):
    return f"R$ {valor:,.2f}".replace(",", "X").replace(".", ",").replace("X", ".")

valor = int(input("Insira o valor:"))
print(reais(valor))