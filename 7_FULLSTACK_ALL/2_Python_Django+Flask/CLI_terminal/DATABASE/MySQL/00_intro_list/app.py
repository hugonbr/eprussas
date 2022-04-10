import mysql.connector

# '''Também é possível conectar diretamente ao banco desejado'''
mydb = mysql.connector.connect(
    host="localhost",
    user="root",
    password="1234"
    # database="mydatabase"
)

print(mydb)

# '''Cria o banco de dados'''
# mycursor = mydb.cursor()
# mycursor.execute("CREATE DATABASE giteprussas_00_python")

# '''Lista as bases de dados'''
# mycursor = mydb.cursor()
# mycursor.execute("SHOW DATABASES")
# for x in mycursor:
#     print(x)

