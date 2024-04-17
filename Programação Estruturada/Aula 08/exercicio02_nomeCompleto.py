nome = input("Digite seu nome: ")
sobrenome = input("Digite seu sobrenome: ")
qntd = int(input("Agora, me diga quantas vezes quer imprimir seu nome completo?\n"))

print("%s %s\n" %(nome, sobrenome) * qntd)
