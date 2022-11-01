let playWin = 0, compWin = 0, r_play, r_pc;

function pedra() {

    document.getElementById('input').innerHTML =
        "PEDRA";
    // document.getElementById('papel').textContent =
    //     "❌";
    // document.getElementById('tesoura').textContent =
    //     "❌";

    r_play = 1;
    imprimir_pc()
}
function papel() {

    document.getElementById('input').innerHTML =
        "PAPEL";
    // document.getElementById('pedra').textContent =
    //     "❌";
    // document.getElementById('tesoura').textContent =
    //     "❌";

    r_play = 2;
    imprimir_pc()
}
function tesoura() {

    document.getElementById('input').innerHTML =
        "TESOURA";
    // document.getElementById('papel').textContent =
    //     "❌";
    // document.getElementById('pedra').textContent =
    //     "❌";

    r_play = 3;
    imprimir_pc()
}

function jogar() {

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
    // 1 pedra
    // 2 papel
    // 3 tesoura

    /*
    if
    p v c
    3 > 2
    2 > 1
    1 > 3
    c v p
    3 > 2
    2 > 1
    1 > 3
    else
    empate
    */

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

    comferedados();
}

function comferedados() {
    /*
    if
    p v c
    3 > 2
    2 > 1
    1 > 3
    -----
    c v p
    3 > 2
    2 > 1
    1 > 3
    -----
    ==
    empate
    */

    //r_play, r_pc
    // playWin = 0, compWin = 0

    if (r_play == 3 && r_pc == 2) {
        playWin++;
        document.getElementById("placar").innerHTML = `Placar: <span style="color: rgb(0, 255, 0);">Player</span> ${playWin} vs ${compWin} <span style="color: rgb(255, 0, 0);">Computer</span>`;

    }
    if (r_play == 2 && r_pc == 1) {
        playWin++;
        document.getElementById("placar").innerHTML = `Placar: <span style="color: rgb(0, 255, 0);">Player</span> ${playWin} vs ${compWin} <span style="color: rgb(255, 0, 0);">Computer</span>`;

    }
    if (r_play == 1 && r_pc == 3) {
        playWin++;
        document.getElementById("placar").innerHTML = `Placar: <span style="color: rgb(0, 255, 0);">Player</span> ${playWin} vs ${compWin} <span style="color: rgb(255, 0, 0);">Computer</span>`;

    }
    //-----------------------------
    if (r_pc == 3 && r_play == 2) {
        compWin++;
        document.getElementById("placar").innerHTML = `Placar: <span style="color: rgb(255, 0, 0);">Player</span> ${playWin} vs ${compWin} <span style="color: rgb(0, 255, 0);">Computer</span>`;

    }
    if (r_pc == 2 && r_play == 1) {
        compWin++;
        document.getElementById("placar").innerHTML = `Placar: <span style="color: rgb(255, 0, 0);">Player</span> ${playWin} vs ${compWin} <span style="color: rgb(0, 255, 0);">Computer</span>`;

    }
    if (r_pc == 1 && r_play == 3) {
        compWin++;
        document.getElementById("placar").innerHTML = `Placar: <span style="color: rgb(255, 0, 0);">Player</span> ${playWin} vs ${compWin} <span style="color: rgb(0, 255, 0);">Computer</span>`;

    }

    if (r_pc == r_play){
        document.getElementById("placar").innerHTML = `Placar: <span style="color: rgb(255, 255, 0);">Player</span> ${playWin} vs ${compWin} <span style="color: rgb(255, 255, 0);">Computer</span>`;
    }
    //-----------------------------

    // Placar: Player 0 vs 0 Computer
}

function reset() {
    playWin = 0;
    compWin = 0;
    jogar();
    document.getElementById("placar").innerHTML = `Placar: Player ${playWin} vs ${compWin} Computer`;
}