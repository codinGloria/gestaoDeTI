salarioTotal = float(input("Digite o salário total: "))
horasDia = float(input("Digite quantas horas trabalha por dia: "))

salarioHora = salarioTotal / (30 * horasDia)

print("\nVocê recebe", round(salarioHora, 2) , "por hora de trabalho.")
