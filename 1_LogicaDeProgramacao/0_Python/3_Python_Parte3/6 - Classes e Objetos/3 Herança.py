class Pessoa:
  def __init__(self, fnome, lnome):
    self.primeironome = fnome
    self.ultimonome = lnome

  def printnome(self):
    print(self.primeironome, self.ultimonome)

p1 = Pessoa("Hugo", "Nathan")
p1.printnome()
try:
	print ("Ano:", p1.anograd)
except:
	print ("Ano: Error")

class Estudante(Pessoa):
  #pass
	def __init__(self, fnome, lnome, anograd):
		super().__init__(fnome, lnome)
		self.anograduacao = anograd
	def bemvindo(self):
		print ("Bem-vindo " + self.primeironome + ". Turma de ano:", self.anograduacao)

s1 = Estudante("João", "das Neves", 2019)
s1.printnome()
print ("Ano:", s1.anograduacao)
s1.bemvindo()
