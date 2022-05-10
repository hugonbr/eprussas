let n;

function converter() {

    n = document.getElementById("n").value;

    if (n < 60) {
        console.log("F");
    }
    else if (n >= 60 && n < 70) {
        console.log("D");
    }
    else if (n >= 70 && n < 80) {
        console.log("C");
    }
    else if (n >= 80 && n < 90) {
        console.log("B");
    } else {
        console.log("A");
    }
}
