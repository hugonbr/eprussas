/*
Faça um algoritmo que converte a temperatura de Cº para Fº,
sabendo que a fórmula é:
f = (9 * c + 160) / 5;
*/

let c, f;
//
function myFunction() {
    c = Number(document.getElementById("input1").value);
    f = (9 * c + 160) / 5;
    console.log(((c * 9 / 5) + 32));
    f = f.toFixed(2);

    document.getElementById("r").innerHTML = "F: " + f + "º";
}

