idade_str = input("Digite sua idade: ")
if idade_str.isnumeric() == True:
    idade = int(idade_str)
else:
    print("A idade deve ser um valor numérico!")
