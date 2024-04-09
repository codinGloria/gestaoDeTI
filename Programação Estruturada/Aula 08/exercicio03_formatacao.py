valor = float(input("Insira um valor: "))
valorFormatado = "{:.2f}".format(valor)

print("R$",str(valorFormatado).replace(".",","))
