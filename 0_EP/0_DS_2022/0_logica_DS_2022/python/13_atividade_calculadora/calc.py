def soma(a, b):
    return a+b


def subtracao(a, b):
    return a-b


def multiplicacao(a, b):
    return a*b


def divisao(a, b):
    return a/b


def quadrado(a):
    return a*a


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

op = 99

while op != '0':
    print(menu)
    op = input()
    if op == '0':
        print('bye')
    elif (op == '1'):
        print('soma')
        a = int(input('Digite o valor de a:'))
        b = int(input('Digite o valor de b:'))
        print(soma(a, b))
    elif (op == '2'):
        print('subtração')
        a = int(input('Digite o valor de a:'))
        b = int(input('Digite o valor de b:'))
        print(subtracao(a, b))
    elif (op == '3'):
        print('multiplicação')
        a = int(input('Digite o valor de a:'))
        b = int(input('Digite o valor de b:'))
        print(multiplicacao(a, b))
    elif (op == '4'):
        print('divisão')
        a = int(input('Digite o valor de a:'))
        b = int(input('Digite o valor de b:'))
        print(divisao(a, b))
    elif (op == '5'):
        print('quadrado')
        a = int(input('Digite o valor de a:'))
        print(quadrado(a))
    else:
        print('erro, tente novamente...')
