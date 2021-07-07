let n1, n2, m;

function myFunction() {
    // Get the value of the input field with id="input1"
    n1 = Number(document.getElementById("input1").value);
    n2 = Number(document.getElementById("input2").value);
    m = (n1 + n2) / 2;
    document.getElementById("r").innerHTML = "Média: " + m;
}

