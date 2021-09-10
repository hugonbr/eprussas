let login, senha;

function show() {
    let isenha = document.getElementById("input2");
    if (isenha.type === "password") {
        isenha.type = "text";
    } else {
        isenha.type = "password";
    }
}
function entrar() {
    login = document.getElementById("input1").value;
    senha = document.getElementById("input2").value;
    //if (login === "admin" || senha === "123") {
    if (login === "admin" && senha === "123") {
        document.getElementById("home").innerHTML = "<h2>Bem-vindo Admin</h2>";
    } else {
        alert("login ou senha incorretos!!! Tente novamente.");
        //document.getElementById("erro").innerHTML = "login ou senha incorretos!!!<br>Tente novamente.";
    }
}
