let num, r;

function myFunction() {
    num = document.getElementById("input1").value;

    if (num % 2 == 1) {
        r = "impar";
    } else {
        r = "par";
    }

    document.getElementById("r").innerHTML = "R: " + num + " é " + r;
}
