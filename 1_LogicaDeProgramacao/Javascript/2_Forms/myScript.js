let x;

function myFunction() {
    // Get the value of the input field with id="input1"
    x = document.getElementById("input1").value;
    document.getElementById("p1").innerHTML = "O botão foi pressionado :)";
    document.getElementById("p2").innerHTML = "Valor do input: " + x;
}

