# Enquanto o nome for uma string vazia, leia novamente:

nome = ''

while nome == '':
    nome = input('Digite um nome: ')

print(f'Você digitou: {nome}')
