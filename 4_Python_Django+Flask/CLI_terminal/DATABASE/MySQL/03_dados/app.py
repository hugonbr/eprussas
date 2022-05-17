import mysql.connector

mydb = mysql.connector.connect(
    host="localhost",
    user="root",
    password="1234",
    database="giteprussas_01_python"
)

while (1): 
    #
    login = input("login: ")
    senha = input("senha: ")

    sql = "SELECT * FROM usuario WHERE login = %s and senha = %s"
    val = (login, senha)

    mycursor = mydb.cursor()
    mycursor.execute(sql, val)
    usuarioR = mycursor.fetchone()

    if usuarioR == None: 
        print("Erro, tente novamente...")
    else:
        print(f'Olá {usuarioR[3]}, Bem-vindo!')
        print(f'Seus dados: {usuarioR}')
        print(f'Tipo de dado: {type(usuarioR)}')
        break
    #
