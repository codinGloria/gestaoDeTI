"""L=[8,9,15]
for e in L:
    print(e)

## 1 parametro: final
for v in range(10):
    print(v, end=" ")
print()
## 2 parametros: inicio e fim
for x in range(0, 18):
    print(x, end=" ")
print()
## 3 parametros: inicio, fim e quantidade de "pulos" 
for t in range(3, 33, 3):
    print(t, end=" ")
print()


lista = [4,9,1,8]
maior = 0
for cont, item in enumerate(lista):
    #print("Item: ",item, " | Posição: ",cont)
    if((item > maior) or (cont == 0)):
        maior = item
print(maior)
"""

#Alterando o exercício anterior
lista = []

while True:
    menu = int (input("""
    O que você deseja fazer?
    (1) Adicionar um valor
    (2) Remover um valor
    (3) Ver lista
    (4) Sair
    Escolha uma opção:
    """))
    
    if (menu == 1):
        valor = int(input("Valor a ser adicionado: "))
        lista.append(valor)

    elif (menu == 2):
        if (lista):
            print("Lista atual:",lista)
            valor = int(input("Qual valor deseja remover?"))
            if valor in lista:
                lista.remove(valor)
                print("Valor removido com sucesso!")
            else:
                print("Valor inválido :/")
        else:
            print("A lista está vazia :c")
        
    elif (menu == 3):
        print()
        print(lista)    
            
    elif (menu == 4):
        break
        
    else:
        print("Opção inválida")   

media = sum(lista) / len(lista)
if(lista):
    print("Lista final: " ,lista)
    print("O maior valor é:", max(lista))
    print("O menor valor é:", min(lista))
    print("Média: %.2f" %media)
else:
    print("A lista está vazia :c")
