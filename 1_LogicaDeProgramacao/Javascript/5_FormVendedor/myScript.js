let nomev, sfi, tv, sf;
//
function myFunction() {
    nomev = document.getElementById("input1").value;
    sfi = Number(document.getElementById("input2").value);
    tv = Number(document.getElementById("input3").value);
    sf = sfi + (tv * 15 / 100);

    document.getElementById("r").innerHTML = "Vendedor: " + nomev;
    document.getElementById("r2").innerHTML = "Salario Final: R$ " + sf;
}

