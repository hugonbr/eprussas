let ola, nome;

ola = (nome) => {
    return "Olá " + nome + ", seja bem-vindo!";
}

function ok() {
    nome = document.getElementById("nome").value;
    document.getElementById("r").innerHTML = ola(nome);
}
