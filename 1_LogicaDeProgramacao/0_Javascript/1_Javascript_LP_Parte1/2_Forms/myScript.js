let x;

function ok() {
    // Pega o valor do input field com id="input1"
    x = document.getElementById("input1").value; //Hugo
    document.getElementById("p2").innerHTML = "Valor do input: " + x;
    //document.getElementById("p2").innerHTML = `Valor do input: ${x}`;

}

