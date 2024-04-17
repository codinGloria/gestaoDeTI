valorCasa = float(input("Digite o valor da casa: "))
salario = float(input("Digite o salário: "))
anos = int(input("Digite em quantos anos deseja pagar: "))

prestMensal = valorCasa / (anos * 12)
limitePrest = salario * 0.3

if prestMensal <= limitePrest:
    print("Empréstimo aprovado. Prestação mensal:", prestMensal)
else:
    print("Empréstimo negado. Prestação mensal excede 30% do salário.")
