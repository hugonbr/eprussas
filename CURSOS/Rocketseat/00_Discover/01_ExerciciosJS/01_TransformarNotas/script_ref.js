let n;

function converter() {

    n = document.getElementById("n").value;

    let f = n < 60;
    let d = n >= 60 && n < 70;
    let c = n >= 70 && n < 80;
    let b = n >= 80 && n < 90;

    if (f) {
        console.log("F");
    }
    else if (d) {
        console.log("D");
    }
    else if (c) {
        console.log("C");
    }
    else if (b) {
        console.log("B");
    } else {
        console.log("A");
    }
}
