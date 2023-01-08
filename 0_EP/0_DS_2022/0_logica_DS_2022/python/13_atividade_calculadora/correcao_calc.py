def soma(a, b):
    return a+b


def sub(a, b):
    return a-b


def mult(a, b):
    return a*b


def div(a, b):
    return a/b


def quad(a):
    return a**2


menu = '''
-------------calc.py-------------
Escolha uma operação:
1 - soma
2 - subtração
3 - multiplicação
4 - divisão
5 - elevar ao quadrado
0 - sair
---------------------------------
'''

op = ''

while op != '0':
    print(menu)
    op = input('Digite uma op: ')
    if op == '0':
        print('bye')
    elif op == '1':
        print('soma')
        a = int(input('Digite a: '))
        b = int(input('Digite b: '))
        print(soma(a, b))
    elif op == '2':
        print('sub')
        a = int(input('Digite a: '))
        b = int(input('Digite b: '))
        print(sub(a, b))
    elif op == '3':
        print('mult')
        a = int(input('Digite a: '))
        b = int(input('Digite b: '))
        print(mult(a, b))
    elif op == '4':
        print('div')
        a = int(input('Digite a: '))
        b = int(input('Digite b: '))
        print(div(a, b))
    elif op == '5':
        print('quad')
        a = int(input('Digite a: '))
        print(quad(a))

    else:
        print('erro, tente novamente')
