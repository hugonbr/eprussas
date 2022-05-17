let num, r;

function myFunction() {
    num = Number(document.getElementById("input1").value);
    num = Math.trunc(num);

    if (num % 2 == 1 || num % 2 == -1) {
        r = "impar";
    } else {
        r = "par";
    }

    document.getElementById("r").innerHTML = num + " é " + r;
}
