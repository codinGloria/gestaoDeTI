peso = float(input("Digite o peso (em kg): "))
altura = float(input("Digite a altura (em metros): "))

imc = peso / (altura ** 2)

print("\nO IMC dessa pessoa é:", round(imc,1))
