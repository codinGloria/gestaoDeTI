notas = []
for i in range(4):
    nota = float(input(f"Digite a nota {i+1} (entre 0 e 25): "))
    if nota < 0 or nota > 25:
        print("Valor inválido.")
        break
    notas.append(nota)
total = sum(notas)
if total >= 80:
    print("ALUNO APROVADO - EXCELENTE")
elif total >= 60:
    print("ALUNO APROVADO")
elif total >= 40:
    print("ALUNO EM RECUPERAÇÃO")
else:
    print("ALUNO REPROVADO")
