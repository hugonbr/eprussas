mensagem = input('Digite uma string qualquer: ')

ocorrencias = {}

for letra in mensagem:
    # ocorrencias[letra] += 1 # gera um erro na questão
    ocorrencias[letra] = ocorrencias.get(letra, 0) + 1

print(ocorrencias)
