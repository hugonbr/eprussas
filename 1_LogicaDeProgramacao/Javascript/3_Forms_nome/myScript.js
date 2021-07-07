let nome, sobrenome, nomecompleto;

function myFunction() {
    // Get the value of the input field with id="input1"
    nome = document.getElementById("input1").value;
    sobrenome = document.getElementById("input2").value;
    nomecompleto = nome + " " + sobrenome;
    document.getElementById("p1").innerHTML = "Dados processados: " + nomecompleto;
}

