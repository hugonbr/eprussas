const cars = ["Fiat", "Ford", "Volkswagen", "Chevrolet"];
const letras = ["C", "A", "D", "E", "H", "G", "B", "F"];

document.getElementById("r").innerHTML = cars;
document.getElementById("rLetras").innerHTML = letras;

function cres() {
    cars.sort();
    document.getElementById("r").innerHTML = cars;
}
function cresLetras() {
    letras.sort();
    document.getElementById("rLetras").innerHTML = letras;
}
function decres() {
    cars.sort();
    cars.reverse();
    document.getElementById("r").innerHTML = cars;
}
function decresLetras() {
    letras.sort();
    letras.reverse();
    document.getElementById("rLetras").innerHTML = letras;
}

