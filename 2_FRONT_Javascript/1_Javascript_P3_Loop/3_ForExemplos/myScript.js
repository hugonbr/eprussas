let r = "";

function myFunction1() {

    for (let i = 0; i <= 10; i++) {

        r = r + i + "; ";
    }

    document.getElementById("r+").innerHTML = r;
}

function myFunction2() {

    for (let i = 10; i >= 0; i--) {

        r = r + i + "; ";
    }

    document.getElementById("r-").innerHTML = r;
}

myFunction1();
r = "";
myFunction2();

