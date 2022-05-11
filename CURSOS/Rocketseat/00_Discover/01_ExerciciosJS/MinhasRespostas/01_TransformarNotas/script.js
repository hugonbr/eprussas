let n, r;

function converter() {

    n = document.getElementById("n").value;

    if (n >= 90 && n <= 100) {
        r = "A";
    } else if (n >= 80 && n <= 89) {
        r = "B";
    } else if (n >= 70 && n <= 79) {
        r = "C";
    } else if (n >= 60 && n <= 69) {
        r = "D";
    } else if (n >= 0 && n < 60) {
        r = "F";
    }

    else {
        r = "Nota inválida!";
    }

    document.getElementById("r").innerHTML = r;
    console.log(r);
}
