let imin, min, imax, max, r;

function myFunction() {
    imin = document.getElementById("inputMin");
    min = Number(imin.value);
    imax = document.getElementById("inputMax");
    max = Number(imax.value);

    if (min >= max || min < 0 || max < 0 || (imin.value.length == 0 || imax.value.length == 0)) {
        document.getElementById("r").innerHTML = "Erro, dados inválidos, verifique os valores mínimos e máximos.";
        document.getElementById("r2").innerHTML = "";
    } else {
        r = Math.floor(Math.random() * (max - min + 1)) + min;
        console.log(r);
        document.getElementById("r").innerHTML = "";
        document.getElementById("r2").innerHTML = `MIN: ${min}, MAX: ${max} -> ${r}`;
    }
}
