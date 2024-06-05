from collections import Counter

def votacao():
    materias = {
        '01': 'Pensamento Computacional',
        '02': 'Fundamentos de Sistemas de Informação',
        '03': 'Banco de Dados I',
        '04': 'Sistemas Operacionais e Virtualização',
        '05': 'Programação Estruturada'
    }

    votos = Counter()

    while True:
        print("\nEscolha a matéria (ou digite 'sair' para encerrar a votação):")
        print("(01) Pensamento Computacional")
        print("(02) Fundamentos de Sistemas de Informação")
        print("(03) Banco de Dados I")
        print("(04) Sistemas Operacionais e Virtualização")
        print("(05) Programação Estruturada")
        
        escolha = input("Escolha: ")
        
        if escolha.lower() == 'sair':
            break
        
        if escolha in materias:
            votos[escolha] += 1
            print("Voto computado com sucesso!\n")
        else:
            print("\nEscolha inválida, por favor tente novamente.")

    print("\n\nVotação encerrada. Resultados:")
    print("Posição  Matéria")
    posicao = 1
    for materia, votos_count in votos.most_common():
        print(f"{posicao:<9} {materias[materia]:<40} {votos_count} votos")
        posicao += 1

votacao()
