let nome;

function site() {
    nome = document.getElementById("input1").value;

    document.getElementById("p1").innerHTML = `<a href="https://www.${nome}.com">${nome}</a>`;
}
