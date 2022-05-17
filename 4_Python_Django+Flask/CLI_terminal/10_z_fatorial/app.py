def fatorial(n):
    if n == 0:
        return 0
    if n == 1:
        return 1
    if n > 1:
        return fatorial(n - 1) * n

while(1):
    n = int(input('Digite um número: '))
    f = fatorial(n)
    print(f'O fatorial de {n} é {f}')
    
