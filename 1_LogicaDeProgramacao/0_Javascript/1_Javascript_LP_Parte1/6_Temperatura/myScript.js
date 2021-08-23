let c, f;
//
function myFunction() {
    c = Number(document.getElementById("input1").value);
    f = (9 * c + 160) / 5;
    f = f.toFixed(2);

    document.getElementById("r").innerHTML = "F: " + f + "º";
}

