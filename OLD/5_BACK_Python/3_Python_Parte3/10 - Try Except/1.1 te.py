try:
    print(x)
except NameError:
    print("A variável x não foi declarada")
except:
    print("Algum outro erro ocorreu")
