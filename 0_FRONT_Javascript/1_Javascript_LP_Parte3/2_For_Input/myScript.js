let min, max, inc, r;

function myFunction() {
    r = "";

    min = Number(document.getElementById("min").value);
    max = Number(document.getElementById("max").value);
    inc = Number(document.getElementById("inc").value);

    for (let i = min; i <= max; i += inc) {
        r = r + i + "; ";
    }

    /*
    let i = min;
    while (i <= max) {
        r = r + i + "; ";
        i += inc;
    }
    */

    document.getElementById("r").innerHTML = "R: " + r;
}

