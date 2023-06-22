# 2) Escreva um algoritmo que lê o nome de uma pessoa, sua idade e informa se ela está apta ou não a votar nas eleições deste ano. OBS: para votar, é preciso que a pessoa tenha pelo menos 16 anos.

nome = ''
idade = 0
status = ''

nome = input('Digite o nome: ')
idade = int(input('Digite a idade: '))

if idade >= 16:
    status = 'está apto'
else:
    status = 'não está apto'

print(f'{nome} {status} a votar')

