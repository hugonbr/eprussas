let num, r;

function myFunction() {
    num = document.getElementById("input1").value;

    if (num < 0) {
        num = num * (-1);
    }
    if (num % 2 == 1) {
        r = "impar";
    } else {
        r = "par";
    }

    document.getElementById("r").innerHTML = r;
}
