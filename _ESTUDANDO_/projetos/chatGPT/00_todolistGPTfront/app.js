// Obter referências aos elementos HTML
const inputTask = document.getElementById('inputTask');
const btnAddTask = document.getElementById('btnAddTask');
const taskList = document.getElementById('taskList');
const editTaskModal = document.getElementById('editTaskModal');
const btnSaveChanges = document.getElementById('btnSaveChanges');
const editTaskInput = document.getElementById('editTaskInput');

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
      <div>
        <button class="btn btn-secondary btn-sm edit-task mr-2">
          <i class="fa fa-edit"></i>
        </button>
        <button class="btn btn-danger btn-sm delete-task">
          <i class="fa fa-trash"></i>
        </button>
      </div>
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
    event.target.parentElement.parentElement.remove();
  } else if (event.target.classList.contains('edit-task')) {
    // Exibir o modal de edição
    editTaskInput.value = event.target.parentElement.parentElement.querySelector('span').textContent;
    editTaskModal.dataset.index = [...event.target.parentElement.parentElement.parentElement.children].indexOf(event.target.parentElement.parentElement);
    editTaskModal.show();
    //continue gpt

    // Adicionar um evento de clique ao botão "Save changes" do modal de edição
    btnSaveChanges.addEventListener('click', function () {
    // Obter o índice do item de lista a ser editado
    const index = editTaskModal.dataset.index;
    // Obter o valor do input de edição
    const editedTaskName = editTaskInput.value;
    // Obter o item de lista a ser editado
    const listItem = taskList.children[index];
    // Atualizar o texto do item de lista
    listItem.querySelector('span').textContent = editedTaskName;
    // Fechar o modal de edição
    editTaskModal.hide();
    });

    // Adicionar um evento de clique ao botão "Cancel" do modal de edição
    editTaskModal.addEventListener('hidden.bs.modal', function () {
    // Limpar o valor do input de edição
    editTaskInput.value = '';
    });
  }
});

