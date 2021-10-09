let imin, min, imax, max, r;

function myFunction() {
    imin = document.getElementById("inputMin");
    min = Number(imin.value);
    imax = document.getElementById("inputMax");
    max = Number(imax.value);

    if (min >= max || (imin.value.length == 0 || imax.value.length == 0)) {
        document.getElementById("r").innerHTML = "Erro, dados inválidos, verifique os valores mínimos e máximos.";
    } else {
        r = Math.floor(Math.random() * (max - min + 1)) + min;
        document.getElementById("r").innerHTML = "";
        document.getElementById("r2").innerHTML = `MIN: ${min}, MAX: ${max} -> ${r}`;
    }
}
