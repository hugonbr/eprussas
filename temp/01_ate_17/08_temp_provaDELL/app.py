livros = [
    'Harry Potter e a Ordem da Fênix',
    'A Guerra dos Tronos',
    'A Sociedade do Anel',
    'A Batalha do Apocalipse',
    'A Torre Negra', 
    'O Castelo das Águias',
    'Os Cavaleiros do inverno'
]
paginas = [766, 694, 423, 586, 872, 171, 729]

livros_sel = []

paginas_tot = 0

for i in range(len(livros)):

    if 500 <= paginas[i] <= 750:

        livros_sel.append(livros[i])

        paginas_tot += paginas[i]
        
print(f'Livros: {livros_sel}')
print(f'Total de páginas: {paginas_tot}')
