def BR_US(dataBR):
    dia, mes, ano = dataBR.split('/')
    return f"{ano}-{mes}-{dia}"

def US_BR(dataUS):
    ano, mes, dia = dataUS.split('-')
    return f"{dia}/{mes}/{ano}"

tipo = int(input("Como você deseja formatar sua data? \n(1) BR para US \n(2) US para BR\n"))
data = input("Escreva a data:")

if (tipo == 1):
    print(BR_US(data))
elif (tipo == 2):
    print(US_BR(data))    
else:
    print("Inválido.")
