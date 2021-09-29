//Conteúdo de Estudo:
//Variáveis
//Operadores aritméticos

let n1, n2, m;

function calcular_media() {
    n1 = Number(document.getElementById("input1").value);
    n2 = Number(document.getElementById("input2").value);
    m = (n1 + n2) / 2;
    m = m.toFixed(1);
    document.getElementById("r").innerHTML = "Média: " + m;
}

function calcular_media2() {
    n1 = Number(document.getElementById("input1").value);
    n2 = Number(document.getElementById("input2").value);
    document.getElementById("r").innerHTML = "Média: " + ((n1 + n2) / 2).toFixed(7);
}