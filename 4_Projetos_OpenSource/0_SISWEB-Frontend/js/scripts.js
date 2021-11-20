/*!
    * Start Bootstrap - SB Admin v7.0.4 (https://startbootstrap.com/template/sb-admin)
    * Copyright 2013-2021 Start Bootstrap
    * Licensed under MIT (https://github.com/StartBootstrap/startbootstrap-sb-admin/blob/master/LICENSE)
    */
// 
// Scripts
// 

let login, senha;

text_button = document.getElementById("show");

window.addEventListener('DOMContentLoaded', event => {

    // Toggle the side navigation
    const sidebarToggle = document.body.querySelector('#sidebarToggle');
    if (sidebarToggle) {
        // Uncomment Below to persist sidebar toggle between refreshes
        // if (localStorage.getItem('sb|sidebar-toggle') === 'true') {
        //     document.body.classList.toggle('sb-sidenav-toggled');
        // }
        sidebarToggle.addEventListener('click', event => {
            event.preventDefault();
            document.body.classList.toggle('sb-sidenav-toggled');
            localStorage.setItem('sb|sidebar-toggle', document.body.classList.contains('sb-sidenav-toggled'));
        });
    }

});

//mod Hugo

function entrar() {

    login = document.getElementById("login").value;
    senha = document.getElementById("senha").value;
    console.log(login);
    console.log(senha);

    if (login == "" || senha == "") {
        document.getElementById("aviso").innerHTML =
            '<span class="alert alert-warning text-center">Campo(s) Vazio(s).</span>';
        console.log("Campo(s) Vazio(s)");
    }

    // else if (login === "admin" && contTentativas == 4) {
    // 	document.getElementById("aviso").innerHTML =
    // 		'<span class="alert alert-danger text-center">Conta bloqueada!</span>';
    // }

    else if (login === "admin" && senha === "123") {
        //alert("Bem-vindo Admin");
        window.location.href = "../index.html";
        document.getElementById("aviso").innerHTML =
            '<span class="alert alert-success text-center">Bem-vindo!</span>';
    } else {
        //alert("login ou senha incorretos!!! Tente novamente.");
        document.getElementById("aviso").innerHTML =
            '<span class="alert alert-danger text-center">login ou senha incorretos!</span>';
        console.log("login ou senha incorretos!");
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

//FIM mod Hugo