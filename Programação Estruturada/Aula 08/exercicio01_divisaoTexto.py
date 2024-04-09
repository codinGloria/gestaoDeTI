texto = input("O que deseja dividir?\n")
qntd = int(input("Você quer que quantas letras sejam separadas do restante?"))


print("Primeira parte: " + (texto[:qntd]) + "\nSegunda Parte: " + (texto[qntd:]))
