from Livro import Livro

# aqui não esperamos que ocorra nenhum erro
livro = Livro('João das Neves e os Guerreiros', 23, 10.0)

# aqui pode ocorrer um erro, vamos tratá-lo
try:
    print('Tentando fazer atualização …')
    livro.atualizar_preco(-5.0)
    print('Atualização concluída!')
except Exception as excp:
    print(excp)
print('Fim da operação.')

