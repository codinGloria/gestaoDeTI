custoM2 = 850.0

largura = float(input("Digite a largura do terreno (em metros): "))
comprimento = float(input("Digite o comprimento do terreno (em metros): "))

area = largura * comprimento
custoTotal = custoM2 * area

print("\nPara construir, você precisará de R$", round(custoTotal, 2))
