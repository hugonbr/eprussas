let login, senha, contTentativas = 0;

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
	} else if (login === "admin" && contTentativas == 3) {
		document.getElementById("aviso").innerHTML =
			'<span class="alert alert-danger text-center">Conta bloqueada!</span>';
	} else if (login === "admin" && senha === "123") {
		//alert("Bem-vindo Admin");
		contTentativas = 0;
		document.getElementById("aviso").innerHTML =
			'<span class="alert alert-success text-center">Bem-vindo!</span>';
	} else {
		//alert("login ou senha incorretos!!! Tente novamente.");
		contTentativas++;
		document.getElementById("aviso").innerHTML =
			'<span class="alert alert-danger text-center">login ou senha incorretos!</span>' +
			'<br><br>' +
			'<span class="alert alert-danger text-center">restam ' + (4 - contTentativas) + 'tentativa(s)</span>';
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