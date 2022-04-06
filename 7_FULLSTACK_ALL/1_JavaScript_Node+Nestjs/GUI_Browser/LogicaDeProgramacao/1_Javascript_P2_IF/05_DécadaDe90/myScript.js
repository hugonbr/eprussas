let data, r;

input1.max = new Date().getFullYear();

function myFunction() {
    data = document.getElementById("input1").value;

    if (data >= 1990 && data < 2000) {
        r = " pertence a década de 90.";
    } else {
        r = " NÃO pertence a década de 90.";
    }

    document.getElementById("r").innerHTML = "R: " + data + r;
}

