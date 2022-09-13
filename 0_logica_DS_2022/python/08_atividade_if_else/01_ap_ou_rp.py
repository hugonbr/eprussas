nome = ""
disciplina = ""
nota = 0.0

while 1:

    # nome = input("Digite o seu nome: ")
    # disciplina = input("Informe a disciplina: ")
    nota = float(input("Nota: "))

    # print(f'\n{nome}\n{disciplina}\n{nota}\n')

    if nota >= 6.0:
        print('Aprovado')
    else:
        print('Reprovado')
        
