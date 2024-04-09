valorCompra = float(input("Digite o valor da sua compra: "))
valorDinheiro = float(input("Valor do pagamento: "))

troco = valorDinheiro - valorCompra

trocoFormatado = "{:.2f}".format(troco)

print("Você deve receber R$", str(trocoFormatado).replace(".",","))
