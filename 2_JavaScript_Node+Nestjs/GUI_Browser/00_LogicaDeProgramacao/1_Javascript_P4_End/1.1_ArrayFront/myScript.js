const array = [];

function exibirArray() {

    document.getElementById("array").innerHTML = array;
}

function adcEleArray(item) {

    array.push(item);
    exibirArray();
}

function removeEleArray() {

    array.pop();
    exibirArray();
}

