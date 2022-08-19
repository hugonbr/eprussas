from Livro import Livro

livroLotR = Livro('O Senhor dos Anéis', 9, 32.90)
# livroLotR.titulo = 'O Senhor dos Anéis'
# livroLotR.preco = 32.90
# livroLotR.copias_em_estoque = 9

print(livroLotR.titulo)
print(livroLotR.preco)
print(livroLotR.copias_em_estoque)

livroLotR.vender(3)
livroLotR.atualizar_preco(35.00)

print()
print(livroLotR.titulo)
print(livroLotR.preco)
print(livroLotR.copias_em_estoque)

print(livroLotR.__str__())
