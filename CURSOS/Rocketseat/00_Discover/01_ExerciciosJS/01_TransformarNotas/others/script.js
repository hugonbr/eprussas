let n, r;

function converter() {

    n = document.getElementById("n").value;

    if (n < 60) {
        console.log("F");
        r="F";
    }
    else if (n >= 60 && n < 70) {
        console.log("D");
        r="D";
    }
    else if (n >= 70 && n < 80) {
        console.log("C");
        r="C";
    }
    else if (n >= 80 && n < 90) {
        console.log("B");
        r="B";
    } else {
        console.log("A");
        r="A";
    }

    document.getElementById("r").innerHTML=r;
}
