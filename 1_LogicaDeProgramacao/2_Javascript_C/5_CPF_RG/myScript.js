let cpf, rg;

function myFunction() {
    cpf = document.getElementById("inputCPF").value;
    rg = document.getElementById("inputRG").value;

    if (cpf != "" || rg != "") {
        document.getElementById("r").innerHTML = "Cadastro confirmado";
    } else {
        document.getElementById("r").innerHTML = "Erro, nenhum documento foi informado";
    }
    document.getElementById("cpf").innerHTML = "CPF: " + cpf;
    document.getElementById("rg").innerHTML = "RG: " + rg;
}
