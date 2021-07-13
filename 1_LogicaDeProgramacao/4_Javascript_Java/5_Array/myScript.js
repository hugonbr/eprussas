const cars = ["Saab", "Volvo", "BMW"];
cars[0] = "Opel";
document.getElementById("r").innerHTML = "cars[0] -> " + cars[0];
document.getElementById("r1").innerHTML = "Full array cars -> " + cars;

document.getElementById("rl").innerHTML = "cars.length: " + cars.length;
