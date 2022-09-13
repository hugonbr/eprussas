# Escreva um algoritmo em python que receba um ano qualquer e informe se ele pertence ou não a década de 90 (que vai de 1990 até 1999)

ano = int(input('Digite um ano:'))

if ano >= 1990 and ano <= 1999:
    print(f'{ano} pertence a 90s')
else:
    print(f'{ano} não pertence a 90s')
    
