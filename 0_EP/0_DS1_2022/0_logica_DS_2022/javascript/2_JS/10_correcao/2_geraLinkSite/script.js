let nomelink;

function gerar() {
    nomelink = document.getElementById("nomelink").value;

    document.getElementById("link").innerHTML = `<a href="https://www.${nomelink}.com">${nomelink}</a>`;
}