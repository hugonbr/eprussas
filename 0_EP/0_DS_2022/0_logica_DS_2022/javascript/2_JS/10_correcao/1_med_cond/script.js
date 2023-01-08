let n1, n2, media;

function calc() {

    n1 = Number(document.getElementById("n1").value);
    n2 = Number(document.getElementById("n2").value);

    if (n1 < 0 || n1 > 10 || n2 < 0 || n2 > 10) {
        document.getElementById("media").innerHTML = "erro, tente novamente!";
    }
    else {
        media = (n1 + n2) / 2;
        if (media >= 5.5 && media < 6) {
            media = 6;
        }
        if (media >= 6) {
            document.getElementById("r").innerHTML = "Ap";
        } else {
            document.getElementById("r").innerHTML = "Rp";
        }
        document.getElementById("media").innerHTML = media;
    }
}