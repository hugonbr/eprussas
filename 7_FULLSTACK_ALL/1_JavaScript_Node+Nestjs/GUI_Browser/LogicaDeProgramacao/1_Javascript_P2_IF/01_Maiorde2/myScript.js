let n1, n2, r;
//
function myFunction() {
    n1 = Number(document.getElementById("input1").value);
    n2 = Number(document.getElementById("input2").value);

    if (n1 > n2) {
        r = n1 + " é maior que " + n2;
    } else if (n2 > n1) {
        r = n2 + " é maior que " + n1;
    } else if (n1 == n2) {
        r = "Os valores são iguais";
    } else {
        r = "Um erro ocorreu, verifique os números e tente novamente."
    }

    document.getElementById("r").innerHTML = "R: " + r;
}

