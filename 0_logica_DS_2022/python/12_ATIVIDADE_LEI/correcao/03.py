# 3) Escreva um algoritmo em python que faz a contagem regressiva de 5 até 0 segundos e no fim informa que a contagem acabou
# Exemplo de saída a cada 1 segundo:
# -- NASA --
# 5...
# 4...
# 3...
# 2...
# 1...
# ...🚀...🌕
# O foguete chegou a LUA :)

import time

n = 5

while n > 0:
    print(n)
    n -= 1
    time.sleep(1)
print('fim')