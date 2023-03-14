function addTask(name, description) {
    var taskList = document.getElementById('task-list');
    var task = document.createElement('li');
    task.className = 'list-group-item';
    task.innerHTML =  '<h5>' + name + '</h5>' +
                      '<p class="mb-0">' + description + '</p>' +
                      '<div class="d-flex justify-content-end">' +
                      '<button class="btn btn-secondary btn-sm" onclick="editTask(this)">UPDATE</button>' +
                      '<button class="btn btn-danger btn-sm" onclick="deleteTask(this)">DELETE</button>' +
                      '</div>';
    taskList.appendChild(task);
}

var addTaskForm = document.getElementById('add-task-form');
addTaskForm.addEventListener('submit', function(event) {
  event.preventDefault();
  var taskName = document.getElementById('task-name').value;
  var taskDescription = document.getElementById('task-description').value;
  addTask(taskName, taskDescription);
  addTaskForm.reset();
});

function deleteTask(button) {
    var task = button.parentNode.parentNode;
    task.parentNode.removeChild(task);
}

function editTask(button) {
    var task = button.parentNode.parentNode;
    var taskName = task.getElementsByTagName('h5')[0];
    var taskDescription = task.getElementsByTagName('p')[0];
    var nameInput = document.createElement('input');
    var descriptionInput = document.createElement('textarea');
    var saveButton = document.createElement('button');
    saveButton.className = 'btn btn-primary btn-sm mr-2';
    saveButton.innerHTML = 'Save';
    var cancelButton = document.createElement('button');
    cancelButton.className = 'btn btn-secondary btn-sm';
    cancelButton.innerHTML = 'Cancel';
    nameInput.value = taskName.innerText;
    descriptionInput.value = taskDescription.innerText;
    taskName.parentNode.replaceChild(nameInput, taskName);
    taskDescription.parentNode.replaceChild(descriptionInput, taskDescription);
    button.parentNode.insertBefore(saveButton, button);
    button.parentNode.insertBefore(cancelButton, button);
    button.style.display = 'none';
    saveButton.addEventListener('click', function() {
    taskName.innerText = nameInput.value;
    taskDescription.innerText = descriptionInput.value;
    nameInput.parentNode.replaceChild(taskName, nameInput);
    descriptionInput.parentNode.replaceChild(taskDescription, descriptionInput);
    saveButton.parentNode.removeChild(saveButton);
    cancelButton.parentNode.removeChild(cancelButton);
    button.style.display = 'inline-block';
    });
    cancelButton.addEventListener('click', function() {
    nameInput.parentNode.replaceChild(taskName, nameInput);
    descriptionInput.parentNode.replaceChild(taskDescription, descriptionInput);
    saveButton.parentNode.removeChild(saveButton);
    cancelButton.parentNode.removeChild(cancelButton);
    button.style.display = 'inline-block';
    });
}  

