from classes.pessoa import Pessoa

p1 = Pessoa("Hugo", "22/01/1993", "Russas-CE")
p2 = Pessoa("José", "03/11/1999", "Palhano-CE")

p1.nome = "Hugo Nathan"
#del p1.local #Remover o local levará a um erro

# print(p1.nome)
# print(p1.dataNasc)

p1.apresentacao()
p2.apresentacao()

#del p1 #Isso deleta um objeto

