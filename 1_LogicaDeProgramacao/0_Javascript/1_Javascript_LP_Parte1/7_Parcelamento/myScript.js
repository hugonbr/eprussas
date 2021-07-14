let v, p;
//
function myFunction() {
    v = Number(document.getElementById("input1").value);
    p = Number(document.getElementById("input2").value);
    r = v / p;

    document.getElementById("r").innerHTML = "Parcelas: " + p + " x R$ " + r;
}

