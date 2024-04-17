num1 = float(input("Digite o primeiro número: "))
num2 = float(input("Digite o segundo número: "))
operacao = input("""
Escolha operação que deseja realizar:
(+) Adição
(-) Subtração
(*) Multiplicação
(/) Divisão
""")

if operacao == '+':
    resultado = num1 + num2
elif operacao == '-':
    resultado = num1 - num2
elif operacao == '*':
    resultado = num1 * num2
elif operacao == '/':
    resultado = num1 / num2
else:
    print("Operação inválida.")

print("Resultado:", resultado)
