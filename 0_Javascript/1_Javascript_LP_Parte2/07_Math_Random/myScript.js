let min, max, r;

function myFunction() {
    min = document.getElementById("inputMin").value;
    max = document.getElementById("inputMax").value;

    if (min.length == "" || max.length == "") {
        console.log("Campos vazios");
    }

    if (min >= max || min < 0 || max < 0 || (min.length == "" || max.length == "")) {
        document.getElementById("r").innerHTML = "Erro, dados inválidos, verifique os valores mínimo e máximo.";
        document.getElementById("r2").innerHTML = "";
    } else {
        min = Number(min);
        max = Number(max);
        r = Math.floor(Math.random() * (max - min + 1)) + min;
        console.log(r);
        document.getElementById("r").innerHTML = "";
        document.getElementById("r2").innerHTML = `MIN: ${min}, MAX: ${max} -> ${r}`;
    }
}
