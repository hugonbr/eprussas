//Conteúdo de Estudo:
//Funções em js para ações de botões

function pedra() {

    document.getElementById('input').innerHTML =
        "PEDRA";
    document.getElementById('papel').textContent =
        "❌";
    document.getElementById('tesoura').textContent =
        "❌";
    imprimir_pc()
}
function papel() {

    document.getElementById('input').innerHTML =
        "PAPEL";
    document.getElementById('pedra').textContent =
        "❌";
    document.getElementById('tesoura').textContent =
        "❌";
    imprimir_pc()
}
function tesoura() {

    document.getElementById('input').innerHTML =
        "TESOURA";
    document.getElementById('papel').textContent =
        "❌";
    document.getElementById('pedra').textContent =
        "❌";
    imprimir_pc()
}

function reset() {

    document.getElementById('pedra').textContent =
        "👊";
    document.getElementById('papel').textContent =
        "🖐️";
    document.getElementById('tesoura').textContent =
        "✌";
    document.getElementById('pc').textContent =
        "🖥️";

    document.getElementById('input').innerHTML =
        "<br><br>";
    document.getElementById('r-pc').innerHTML =
        "<br>";
}

function imprimir_pc() {

    // Returns a random integer from 1 to 3:
    r_pc = Math.floor(Math.random() * 3) + 1;

    if (r_pc == 1) {
        document.getElementById('pc').textContent =
            "👊";
        document.getElementById('r-pc').innerHTML =
            "VS<br><br>PEDRA";
    }
    else if (r_pc == 2) {
        document.getElementById('pc').textContent =
            "🖐️";
        document.getElementById('r-pc').innerHTML =
            "VS<br><br>PAPEL";
    }
    else {
        document.getElementById('pc').textContent =
            "✌";
        document.getElementById('r-pc').innerHTML =
            "VS<br><br>TESOURA";
    }
}