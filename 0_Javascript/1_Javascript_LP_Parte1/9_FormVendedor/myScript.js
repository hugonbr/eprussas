/*
Informe o salário final do vendedor, sabendo que o seu total é
o salário base somado com 15% do total de vendas (comissão).
*/

let nomev, sbase, tv, sf;
//
function myFunction() {
    nomev = document.getElementById("input1").value;
    sbase = Number(document.getElementById("input2").value);
    tv = Number(document.getElementById("input3").value);
    //Salário: 2000; Vendas: 100
    sf = sbase + (tv * 15 / 100);
    sf = sf.toFixed(2);

    document.getElementById("r").innerHTML = "Vendedor: " + nomev;
    document.getElementById("r2").innerHTML = "Salario Final: R$ " + sf;
}

