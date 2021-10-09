def fat(n):
    if n == 0:
        return 0
    if n == 1:
        return 1
    if n > 1:
        return fat(n - 1) * n
n = int(input("Digite o valor de n: "))
print("O valor de %d! é =" %n, fat(n))
