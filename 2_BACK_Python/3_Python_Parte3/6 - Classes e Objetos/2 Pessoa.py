class Pessoa:
  # init é o construtor da classe
  def __init__(self, nome, idade):
    self.nome = nome
    self.idade = idade

p1 = Pessoa("Hugo", 26)
p2 = Pessoa("João", 18)

print(p1.nome, p1.idade)
print(p2.nome, p2.idade)
