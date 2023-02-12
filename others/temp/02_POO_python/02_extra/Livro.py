class Livro:
    titulo = ''
    copias_em_estoque = 0
    preco = 0.0

    # construtor
    def __init__(self, titulo='', copias=0, preco=0.0):
        self.titulo = titulo
        self.copias_em_estoque = copias
        self.preco = preco

    # retorna uma string com os valores do objeto livro
    def __str__(self):
        # return 'Título: {}; Estoque: {}; Preço: R${}'.format(self.titulo, self.copias_em_estoque, self.preco)
        return f'Título: {self.titulo}; Estoque: {self.copias_em_estoque}; Preço: R${self.preco}'

    def vender(self, copias_vendidas):
        self.copias_em_estoque -= copias_vendidas

    def atualizar_preco(self, novo_preco):
        # Raise an error and stop the program if is lower than 0:
        if novo_preco < 0.0:
            raise Exception('Preço negativo.')
        self.preco = novo_preco
