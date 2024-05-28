def converter(horas24):
    horas, minutos = map(int, horas24.split(':'))
    periodo = "A.M." if horas < 12 else "P.M."
    horas = horas % 12
    if horas == 0:
        horas = 12
    return f"{horas}:{minutos:02d} {periodo}"

horas = input("Insira as horas:")
print(converter(horas))