def fun():
    global x
    x = 300

try: #tente fazer algo
    print(x)
except: #caso falhe, faça isso
    print('x ainda não foi declarado')
    
fun()
print(x)
