let min, max, r;

function gerar() {
    min = Number(document.getElementById("min").value);
    max = Number(document.getElementById("max").value);

    r = Math.floor(Math.random() * (max - min + 1) ) + min;

    document.getElementById("r").innerHTML = `O número aleatório entre ${min} e ${max} : ${r}`;
}