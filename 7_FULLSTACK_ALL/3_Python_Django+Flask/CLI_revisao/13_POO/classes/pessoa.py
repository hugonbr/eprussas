class Pessoa:
    def __init__(self, nome, dataNasc, local):
        self.nome = nome
        self.dataNasc = dataNasc
        self.local = local
    def apresentacao(self):
        print(31*'*')
        print(f'Olá, meu nome é {self.nome}.')
        print(f'Data de nascimento: {self.dataNasc}.')
        print(f'Local: {self.local}.')
        print(31*'*')
