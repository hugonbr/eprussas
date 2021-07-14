const cars = ["Fiat", "Ford", "Volkswagen", "Chevrolet"];

function cres() {
    cars.sort();
    document.getElementById("r").innerHTML = cars;
}
function decres() {
    cars.sort();
    cars.reverse();
    document.getElementById("r").innerHTML = cars;
}
