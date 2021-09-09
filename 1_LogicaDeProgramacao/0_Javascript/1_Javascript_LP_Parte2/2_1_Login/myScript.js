let login, senha;

function show() {
    var x = document.getElementById("input2");
    if (x.type === "password") {
        x.type = "text";
    } else {
        x.type = "password";
    }
}
function entrar() {
    login = document.getElementById("input1").value;
    senha = document.getElementById("input2").value;
    if (login === "admin" && senha === "123") {
        document.getElementById("home").innerHTML = "<h3>Bem-vindo Admin</h3>";
    } else {
        alert("login ou senha incorretos!!! Tente novamente.");
    }
}
