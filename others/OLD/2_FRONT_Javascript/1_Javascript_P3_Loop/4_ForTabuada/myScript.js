let r = "";

function myFunction() {

    for (let i = 1; i <= 10; i++) {
        r += "Tabuada do " + i + ":" + "<br>";
        for (let j = 1; j <= 10; j++) {
            r += i + " * " + j + "=" + i * j + ";<br>";
        }
    }

    document.getElementById("r").innerHTML = r;
}

myFunction();

