# Sabendo que % é a operação que exibe o resto da divisão entre dois números.
# Ex1: 5 % 2 == 1
# Ex2: 4 % 2 == 0
# Escreva um algoritmo em python que leia o valor de um número inteiro e em seguida informe se ele é impar ou par.

n = int(input('Digite um número: '))

if n % 2 == 1 or n % 2 == -1:
    r = "impar"
else:
    r = "par"

print(f'O número é {r}')
