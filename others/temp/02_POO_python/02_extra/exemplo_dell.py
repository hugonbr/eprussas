from Livro import Livro

# criação inicial da lista de livros
livros = [Livro('João das Neves e os Guerreiros', 23, 10.0), Livro('Introdução a Python', 30, 27.50),
          Livro('Lógica de Programação Avançada', 2, 100.0), Livro('Java para Iniciantes', 15, 38.50)]

# modificação do estado de alguns objetos
livros[0].vender(5)
# livros[3].atualizar_preco(-10.0) # gerará uma exceção, por ser um valor negativo.
livros[3].atualizar_preco(10.0)
livros[1].atualizar_preco(15.0)

# adição de um novo livro. Perceba que uma lista também é um objeto, logo append() é um método que foi
# implementado no corpo da definição da classe list
livros.append(Livro(
    'João das Neves e os Guerreiros – O retorno dos que não foram ', 250, 50.0))

# apresentação ordenada da lista de livros
print('Livros disponíveis:')
for livro in sorted(livros, key=lambda l: l.preco):
    print(livro)
