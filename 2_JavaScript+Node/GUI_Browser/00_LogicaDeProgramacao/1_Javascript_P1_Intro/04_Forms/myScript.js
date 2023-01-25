// let é usado para criar uma variável, no caso abaixo, o nome da variável é 'x'.
let x;

function ok() {
    // Pega o valor do input com id="input1" e passa esse valor para x.
    x = document.getElementById("input1").value;
    // Injeta no id="p2" a concatenação da string com a variável x.
    document.getElementById("p2").innerHTML = "Você digitou: " + x;
    // Aqui também injeta no id="p2", porém, com uma string formatada pelo javascript.
    document.getElementById("p2").innerHTML = `Valor do input: ${x}`;
}