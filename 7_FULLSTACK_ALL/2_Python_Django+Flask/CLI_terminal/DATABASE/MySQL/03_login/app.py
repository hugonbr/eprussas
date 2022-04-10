import mysql.connector

mydb = mysql.connector.connect(
    host="localhost",
    user="root",
    password="1234",
    database="giteprussas_01_python"
)

# mycursor = mydb.cursor()
# mycursor.execute("SELECT * FROM usuario")
# myresult = mycursor.fetchall()
# for x in myresult:
#     print(x)

login = input("login: ")
senha = input("senha: ")

sql = "SELECT * FROM usuario WHERE login = %s and senha = %s"
val = (login, senha)

mycursor = mydb.cursor()
mycursor.execute(sql, val)
myresult = mycursor.fetchall()

for x in myresult:
    print(f'Seus dados: {x}')
    print(f'Seus dados: {type(x)}')
    