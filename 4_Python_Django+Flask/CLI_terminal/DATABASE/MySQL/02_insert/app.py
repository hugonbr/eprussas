import mysql.connector

mydb = mysql.connector.connect(
    host="localhost",
    user="root",
    password="1234",
    database="giteprussas_00_python"
)

mycursor = mydb.cursor()

while 1: 

    #
    nome = input("Digite o nome do cliente: ")
    endereco = input("Digite o endereco do cliente: ")
    #

    sql = "INSERT INTO cliente (nome, endereco) VALUES (%s, %s)"
    val = (nome, endereco)
    mycursor.execute(sql, val)

    mydb.commit()

    print("1 record inserted, ID:", mycursor.lastrowid)

