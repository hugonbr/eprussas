try:
    f = open("arquivos/arq.txt", "r")
    # f = open("app.py", "r")
    print(f.read())
    f.close()
except:
    print('Erro ao tentar abrir o arquivo.')
