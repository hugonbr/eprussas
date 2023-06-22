# validar se a nota digitada está entre 0 e 10.

nota = float(input('Digite a nota:'))

if nota >= 0 and nota <=10: # 
    print('Nota é válida.')
else:
    print('Nota inválida.')
###########################
if nota < 0 or nota > 10:   # 
    print('Nota inválida.')
else:
    print('Nota válida.')