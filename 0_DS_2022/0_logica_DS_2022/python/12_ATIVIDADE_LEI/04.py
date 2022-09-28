# Questão desafio: Escreva toda a tabuada da multiplicação de 1 a 10, usando apenas 3 linhas de código python.

for x in range(1, 11):
    for y in range(1, 11):
        print(f'{x}x{y}={x*y}')
