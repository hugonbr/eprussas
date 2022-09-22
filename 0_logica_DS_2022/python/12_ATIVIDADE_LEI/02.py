# Escreva um algoritmo em python que através de um laço de repetição (ou while ou for) exibe os números pares de 1 a 10.

n = 1

while n < 11:
    if n % 2 == 0:
        print(f'{n};')
    n += 1
print()
