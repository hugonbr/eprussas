from Tarefa import Tarefa

tarefas = [Tarefa(), Tarefa(), Tarefa()]
tarefas[0].titulo = 'lavar'
tarefas[0].duracao = 0.5
tarefas[0].dificuldade = 0
tarefas[1].titulo = 'cozinhar'
tarefas[1].duracao = 1.0
tarefas[1].dificuldade = 2
tarefas[2].titulo = 'exercitar-se'
tarefas[2].duracao = 1.5
tarefas[2].dificuldade = 1

for t in range(0, 3):
    print(tarefas[t].titulo)
    print(tarefas[t].duracao)
    print(tarefas[t].dificuldade)
