from classes.pessoa import Pessoa

class Aluno(Pessoa):
    def __init__(self, nome, dataNasc, local, turma):
        super().__init__(nome, dataNasc, local)
        self.turma = turma
    def curso(self):
        print(42*'-')
        print(f'|Sou do curso de {self.turma}|')
        print(42*'-')
