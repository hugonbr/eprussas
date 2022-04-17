const array = [];

function exibirArray() {

    document.getElementById("array").innerHTML = array;
}

function adcEleArray(elemento) {

    array.push(elemento);
    exibirArray();
}

function removeEleArray() {

    array.pop();
    exibirArray();
}

