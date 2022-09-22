# Escreva um algoritmo em python que através de um laço de repetição (ou while ou for) exibe os números de 1 a 10.

n = 1
fimDeN = ''
while n <= 10:
    if n < 10:
        fimDeN = ','
    else:
        fimDeN = '.'
    if n % 2 == 0:
        print(f'{n}{fimDeN}', end = '')
    n += 1
print()