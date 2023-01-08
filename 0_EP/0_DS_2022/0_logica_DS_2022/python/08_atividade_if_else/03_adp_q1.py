# 3) Faça uma cópia da questão 1. Agora modifique o algoritmo para que caso o aluno tire uma nota abaixo de 6 mas acima de 5.5, arredonde a nota para 6.

nome = ""
disciplina = ""
nota = 0.0
status = ""

nome = input("Digite o nome do aluno: ")
disciplina = input("Digite a disciplina: ")
nota = float(input("Digite a nota: "))

# print(f'{nome};{disciplina};{nota};')

#######################################
if nota < 6 and nota >= 5.5:
    nota = 6
#######################################

if nota >= 6:
    status = "aprovado"
else:
    status = "reprovado"

print(f'{nome} está {status} em {disciplina} com nota {nota}')
