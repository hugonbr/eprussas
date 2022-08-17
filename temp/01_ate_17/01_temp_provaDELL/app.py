# Python é uma linguagem que apresenta 2 tipos de laços de repetição, o while e o for. Dependendo do cenário, podemos substituir um pelo outro facilmente. Que laço “for” pode substituir o laço while a seguir:

x = 10
while x >= 2:
    print(f'{x}; ', end = '')
    x -= 2
print()
x = 10
for x in range(10,1,-2):
    print(f'{x}; ', end = '')
