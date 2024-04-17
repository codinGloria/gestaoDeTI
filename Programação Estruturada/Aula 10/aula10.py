# Ex_01 -> Uso de while
x = 1
while (x <= 3):
    print (x)
    x = x + 1

# Ex_02 -> While usando break
s = 0
while True:
    v = int (input("Digite um número para somar ou 0 para sair:"))
    if (v==0):
        break
    s = s + v
print(s)

# Ex_03 -> While usando até
fim = int(input("Digite o último número a imprimir:\n"))
x = 1
while (x <= fim):
    print(x)
    x = x + 1

# Ex_04 -> Soma de 10 números
n = 1
soma = 0
while (n <= 10):
    x = int(input("Digite o %d número: " %n))
    soma = soma + x
    n = n + 1
print("Soma: %d" %soma)

# Ex_05 -> while dentro de while
tabuada = 1
while (tabuada <= 10):
    numero = 1
    while (numero <= 10):
        print("%d x %d = %d" %(tabuada, numero, tabuada * numero))
        numero += 1
    tabuada += 1
    print()
