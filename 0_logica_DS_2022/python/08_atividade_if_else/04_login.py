# 4) (Lógica de login) - Sabendo que o acesso padrão ao sistema é login: "admin" senha: "123", faça um algoritmo que receba o login e a senha informados pelo usuário e caso sejam iguais ao padrão, libere o acesso, caso contrário, informe o erro.

login_padrao = 'admin'
senha_padrao = '123'

login = ''
senha = ''

login = input('login: ')
senha = input('senha: ')

if login == login_padrao and senha == senha_padrao:
    print('Olá admin, seja bem-vindo!')
else:
    print('login ou senha incorretos, tente novamente')
    
