import mysql.connector

mydb = mysql.connector.connect(
    host="localhost",
    user="root",
    password="1234",
    database="giteprussas_00_python"
)

# '''Cria a tabela'''
mycursor = mydb.cursor()
mycursor.execute("CREATE TABLE cliente (id INT AUTO_INCREMENT PRIMARY KEY, nome VARCHAR(255), endereco VARCHAR(255))")

# '''Exibe as tabelas'''
# mycursor = mydb.cursor()
# mycursor.execute("SHOW TABLES")
# for x in mycursor:
#     print(x)
    
