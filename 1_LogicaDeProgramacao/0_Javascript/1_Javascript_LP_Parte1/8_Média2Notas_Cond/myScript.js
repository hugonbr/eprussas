let n1, n2, m, r;

function myFunction() {
    n1 = Number(document.getElementById("input1").value);
    n2 = Number(document.getElementById("input2").value);
    m = (n1 + n2) / 2;
    //m = m.toFixed(1);

    if (m >= 5.5 && m < 6.0) {
        m = 6.0;
    }
    if (m >= 6) {
        r = "Você foi aprovado! 😀";
    } else {
        r = "Você foi reprovado! 😔";
    }

    document.getElementById("r").innerHTML = "STATUS: " + r;
    document.getElementById("r2").innerHTML = "Média: " + m;
}

