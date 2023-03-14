// Obter referências aos elementos HTML
const inputTask = document.getElementById('inputTask');
const btnAddTask = document.getElementById('btnAddTask');
const taskList = document.getElementById('taskList');

// Adicionar um evento de clique ao botão "Add Task"
btnAddTask.addEventListener('click', function () {
  // Obter o valor do input
  const taskName = inputTask.value;
  // Verificar se o input não está vazio
  if (taskName.trim() !== '') {
    // Criar um novo item de lista
    const listItem = document.createElement('li');
    listItem.className = 'list-group-item d-flex justify-content-between align-items-center';
    listItem.innerHTML = `
      ${taskName}
      <button class="btn btn-danger btn-sm ml-2 delete-task">
        <i class="fa fa-trash"></i>
      </button>
    `;
    // Adicionar o item de lista à lista de tarefas
    taskList.appendChild(listItem);
    // Limpar o valor do input
    inputTask.value = '';
  }
});

// Adicionar um evento de clique a todos os botões "delete-task"
taskList.addEventListener('click', function (event) {
  if (event.target.classList.contains('delete-task')) {
    // Remover o item de lista pai do botão "delete-task" clicado
    event.target.parentElement.remove();
  }
});


