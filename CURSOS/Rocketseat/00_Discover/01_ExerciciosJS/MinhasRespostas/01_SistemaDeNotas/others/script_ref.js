let n, r;

function converter() {

    n = document.getElementById("n").value;

    let f = n < 60;
    let d = n >= 60 && n < 70;
    let c = n >= 70 && n < 80;
    let b = n >= 80 && n < 90;

    if (f) {
        console.log("F");
        r="F";
    }
    else if (d) {
        console.log("D");
        r="D";
    }
    else if (c) {
        console.log("C");
        r="C";
    }
    else if (b) {
        console.log("B");
        r="B";
    } else {
        console.log("A");
        r="A";
    }

    document.getElementById("r").innerHTML=r;
}
