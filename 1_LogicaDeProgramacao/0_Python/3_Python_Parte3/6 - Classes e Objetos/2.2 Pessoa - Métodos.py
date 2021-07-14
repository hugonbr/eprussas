class Pessoa:
  def __init__(self, nome, idade):
    self.nome = nome
    self.idade = idade
  def apresentacao(self):
    print("Olá, meu nome é: " + self.nome)
    print ("Tenho " , self.idade , "anos.\n")

p1 = Pessoa("Hugo", 26)
p2 = Pessoa("João", 18)
p2.idade=21

p1.apresentacao()
p2.apresentacao()
