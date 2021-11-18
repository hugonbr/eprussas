let login, senha;

text_button = document.getElementById("show");

//função do template
(function ($) {
	"use strict";
})(jQuery);
//fim função do template

console.log("Olá JS");

function entrar() {

	login = document.getElementById("login").value;
	senha = document.getElementById("senha").value;
	console.log(login);
	console.log(senha);

	if (login == "" || senha == "") {
		document.getElementById("aviso").innerHTML =
			'<span class="alert alert-warning text-center">Campo(s) Vazio(s)</span>';
	}

	// else if (login === "admin" && contTentativas == 4) {
	// 	document.getElementById("aviso").innerHTML =
	// 		'<span class="alert alert-danger text-center">Conta bloqueada!</span>';
	// }

	else if (login === "admin" && senha === "123") {
		//alert("Bem-vindo Admin");
		window.location.href = "home.html";
		return false;
		document.getElementById("aviso").innerHTML =
			'<span class="alert alert-success text-center">Bem-vindo!</span>';
	} else {
		//alert("login ou senha incorretos!!! Tente novamente.");
		document.getElementById("aviso").innerHTML =
			'<span id="erro" class="alert alert-danger text-center">login ou senha incorretos!</span>';
	}
	//alert("teste");
}

function mostrar() {
	let isenha = document.getElementById("senha");
	if (isenha.type === "password") {
		isenha.type = "text";
		text_button.textContent = "ocultar senha";
	} else {
		isenha.type = "password";
		text_button.textContent = "mostrar senha";
	}
}
