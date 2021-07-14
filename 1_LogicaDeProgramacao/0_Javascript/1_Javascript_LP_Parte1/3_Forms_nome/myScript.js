let nome, sobrenome, nomecompleto;

function myFunction() {
    nome = document.getElementById("input1").value;
    sobrenome = document.getElementById("input2").value;
    nomecompleto = nome + " " + sobrenome;
    document.getElementById("p1").innerHTML = "Dados processados: " + nomecompleto;
}

