/*
Informe o salário final do vendedor, sabendo que o seu total é
o salário base somado com 15% do total de vendas (comissão).
*/

let nomev, sb, tv, sf, p;
//
function myFunction() {
    nomev = document.getElementById("input1").value;
    sb = Number(document.getElementById("input2").value);
    tv = Number(document.getElementById("input3").value);
    p = Number(document.getElementById("input4").value);
    //Salário: 2000; Vendas: 100
    sf = sb + (tv * p / 100);
    sf = sf.toFixed(2);

    document.getElementById("r").innerHTML = "Vendedor: " + nomev;
    document.getElementById("r2").innerHTML = "Salario Final: R$ " + sf;
}

