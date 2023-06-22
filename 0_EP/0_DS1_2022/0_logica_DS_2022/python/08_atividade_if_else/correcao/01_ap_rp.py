# 1) Escreva um algoritmo em python que lê o nome do aluno, a disciplina e o valor de uma nota/média (ex: 7.9) e informa se o aluno está aprovado ou não. OBS: para que o aluno esteja aprovado sua nota deve ser >=6.

nome = ""
disciplina = ""
nota = 0.0
status = ""

nome = input("Digite o nome do aluno: ")
disciplina = input("Digite a disciplina: ")
nota = float(input("Digite a nota: "))

# print(f'{nome};{disciplina};{nota};')

if nota >= 6: # F
    status = "aprovado"
else:
    status = "reprovado"

print(f'{nome} está {status} em {disciplina}')
