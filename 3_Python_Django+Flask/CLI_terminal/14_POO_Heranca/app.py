from classes.pessoa import Pessoa
from classes.aluno import Aluno

p1 = Pessoa("Hugo", "22/01/1993", "Russas-CE")
p2 = Pessoa("José", "03/11/1999", "Palhano-CE")

p1.apresentacao()
p2.apresentacao()

a1 = Aluno("Paulo", "09/12/2005", "Russas-CE", "Tecnologia da Informação")

a1.apresentacao()
a1.curso()

