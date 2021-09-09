let n1, n2, r;
//
function myFunction() {
    n1 = Number(document.getElementById("input1").value);
    n2 = Number(document.getElementById("input2").value);

    if (n1 > n2) {
        r = "n1=" + n1 + " é o maior";
    } else if (n1 == n2) {
        r = "Os valores são iguais";
    } else {
        r = "n2=" + n2 + " é o maior";
    }

    document.getElementById("r").innerHTML = "R: " + r;
}

