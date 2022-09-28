# Escreva um algoritmo em python que faz a contagem regressiva de 5 até 0 segundos e no fim informa que a contagem acabou
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

print('-- NASA --')
time.sleep(1)

for x in range(5,0,-1):
    print(f'{x}...')
    time.sleep(1)
print('...🚀...🌕')
time.sleep(1)
print('O foguete chegou a LUA :)')