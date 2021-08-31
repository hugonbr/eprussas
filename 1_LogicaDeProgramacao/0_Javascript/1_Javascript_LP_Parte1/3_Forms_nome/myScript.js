let nome, sobrenome, nomecompleto;

function ok() {

    document.getElementById("p1").innerHTML = "Dados processados: " + document.getElementById("input1").value + " " + document.getElementById("input2").value;
}

function ok2() {
    nome = document.getElementById("input1").value;
    sobrenome = document.getElementById("input2").value;
    nomecompleto = nome + " " + sobrenome;
    document.getElementById("p1").innerHTML = "Dados processados: " + nomecompleto;
}

