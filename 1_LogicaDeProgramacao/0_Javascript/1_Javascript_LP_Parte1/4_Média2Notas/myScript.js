let n1, n2, m;

function myFunction() {
    n1 = Number(document.getElementById("input1").value);
    n2 = Number(document.getElementById("input2").value);
    m = (n1 + n2) / 2;
    m = m.toFixed(2);
    document.getElementById("r").innerHTML = "Média: " + m;
}

