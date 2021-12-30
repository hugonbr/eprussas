let login, senha, text_button;

text_button = document.getElementById("show");

//alert("teste");

function show() {
    let isenha = document.getElementById("input2");
    if (isenha.type === "password") {
        isenha.type = "text";
        text_button.textContent = "ocultar senha";
    } else {
        isenha.type = "password";
        text_button.textContent = "mostrar senha";
    }
}
function entrar() {
    login = document.getElementById("input1").value;
    senha = document.getElementById("input2").value;
    //errado!!!
    //if (login === "admin" || senha === "123") {
    if (login === "admin" && senha === "123") {
        document.getElementById("home").innerHTML = "<h2>Bem-vindo Admin</h2>";
    } else {
        alert("login ou senha incorretos!!! Tente novamente.");
        //document.getElementById("erro").innerHTML = "login ou senha incorretos!!!<br>Tente novamente.";
    }
}
