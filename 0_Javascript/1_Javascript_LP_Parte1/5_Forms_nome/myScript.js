//Conteúdo de Estudo:
//Input value
//Variáveis
//Concatenação

let nome, sobrenome, nomecompleto;

function ok() {
    nome = document.getElementById("input1").value;
    sobrenome = document.getElementById("input2").value;
    nomecompleto = nome + " " + sobrenome;
    document.getElementById("p1").innerHTML = "Dados processados: " + nomecompleto;
}

/*
function ok2() {

    document.getElementById("p1").innerHTML = "Dados processados: " + document.getElementById("input1").value + " " + document.getElementById("input2").value;
}
*/