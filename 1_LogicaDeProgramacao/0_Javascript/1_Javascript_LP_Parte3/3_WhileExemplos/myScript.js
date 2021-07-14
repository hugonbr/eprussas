let r = "";

function myFunction1() {

    let i = 0;
    while (i <= 10) {

        r = r + i + "; ";
        i++;
    }

    document.getElementById("r+").innerHTML = r;
}

function myFunction2() {

    let i = 10;
    while (i >= 0) {

        r = r + i + "; ";
        i--;
    }

    document.getElementById("r-").innerHTML = r;
}

myFunction1();
r = "";
myFunction2();

