import mysql.connector
op = 1

mydb = mysql.connector.connect(
    host="localhost",
    user="root",
    password="1234",
    database="giteprussas_01_python"
)

mycursor = mydb.cursor()

while op != 4:
    print("----SIS CRUD----")
    print("Digite uma opção:")
    print("1- Entrar")
    print("2- Cadastrar")
    print("3- Listar usuários")
    print("4- Sair")
    op = int(input())
    if op == 1:
        print("Digite login e senha")
        erro = True
        while (erro):
            #
            login = input("login: ")
            senha = input("senha: ")

            sql = "SELECT * FROM usuario WHERE login = %s and senha = %s"
            val = (login, senha)

            mycursor.execute(sql, val)
            usuarioR = mycursor.fetchone()

            if usuarioR == None:
                print("Erro, tente novamente...")
            else:
                erro = False
                opU = 1
                print(f'Olá {usuarioR[3]}, Bem-vindo!')

                while opU != 4:
                    print("O que deseja fazer?")
                    print("1 - Ver meus dados")
                    print("2 - Atualizar meus dados")
                    print("3 - Deletar minha conta")
                    print("4 - Sair")

                    opU = int(input())

                    if opU == 1:
                        print(f'Seus dados: {usuarioR}')
                        print(f'Tipo de dado: {type(usuarioR)}')
                    elif opU == 2:
                        print("Atualizando...")

                    elif opU == 3:
                        print("Deletando...")

                        sql = f'DELETE FROM usuario WHERE id = {usuarioR[0]}'
                        mycursor.execute(sql)
                        mydb.commit()
                        print("Conta deletada!")
                        break

                    elif opU == 4:
                        print("Saindo...")
                    else:
                        print("Opção inválida, tente novamente")

            #
    elif op == 2:
        print("Cadastre-se abaixo:")

        login = input("login: ")
        senha = input("senha: ")
        nome = input("nome: ")

        sql = "INSERT INTO usuario (login, senha, nome) VALUES (%s, %s, %s)"
        val = (login, senha, nome)
        mycursor.execute(sql, val)

        mydb.commit()

        print("Usuário cadastrado, ID:", mycursor.lastrowid)

    elif op == 3:
        print("Lista de Usuários: ")
        print("...")
    elif op == 4:
        print("Bye")
    else:
        print("Opção inválida, tente novamente")

