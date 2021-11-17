let login, senha;

//função do template
(function ($) {
	"use strict";
})(jQuery);
//fim função do template

console.log("Olá JS");

function entrar() {

	login = document.getElementById("login").value;
	senha = document.getElementById("senha").value;

	if (login === "admin" && senha === "123") {
		//alert("Bem-vindo Admin");
		document.getElementById("aviso").innerHTML =
			"Bem-vindo!."
	} else {
		//alert("login ou senha incorretos!!! Tente novamente.");
		document.getElementById("aviso").innerHTML =
			"login ou senha incorretos!!! Tente novamente."
		//document.getElementById("erro").innerHTML = "login ou senha incorretos!!!<br>Tente novamente.";
	}
	console.log(login);
	console.log(senha);
	//alert("teste");
}