let min, max, r;

function myFunction() {
    min = document.getElementById("inputMin").value; //"x"
    max = document.getElementById("inputMax").value; //"y"

    // if (min.length == "" || max.length == "") {
    //     console.log("Campos vazios");
    // }

    if (min >= max || min < 0 || max < 0 || max >= 100 || (min.length == "" || max.length == "")) {
        document.getElementById("r").innerHTML = "Erro, dados inválidos, verifique os valores mínimo e máximo.";
        document.getElementById("r2").innerHTML = "";
    } else {
        min = Number(min); //x
        max = Number(max); //y
        r = Math.floor(Math.random() * (max - min + 1) + min);
        console.log(r);
        document.getElementById("r").innerHTML = "";
        document.getElementById("r2").innerHTML = `MIN: ${min}, MAX: ${max} -> ${r}`;
    }
}
