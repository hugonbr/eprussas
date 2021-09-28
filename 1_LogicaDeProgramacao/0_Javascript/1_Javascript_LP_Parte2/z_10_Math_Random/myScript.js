let min, max, r;

function myFunction() {
    min = Number(document.getElementById("inputMin").value);
    max = Number(document.getElementById("inputMax").value);

    if (min >= max) {
        document.getElementById("r").innerHTML = "Erro, dados inválidos, verifique os valores mínimos e máximos.";
    } else {
        r = Math.floor(Math.random() * (max - min + 1)) + min;
        document.getElementById("r").innerHTML = "MIN: " + min + ", MAX: " + max + " -> " + r;
        document.getElementById("r2").innerHTML = `MIN: ${min}, MAX: ${max} -> ${r}`;
    }
}
