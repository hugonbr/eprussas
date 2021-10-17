let pesquisa, pesquisa_format;

function search() {

    pesquisa = document.getElementById("isearch").value;
    pesquisa_format = pesquisa.replaceAll(' ', '+');

    document.getElementById("google").innerHTML =
        `<a href="https://www.google.com/search?q=${pesquisa_format}" target="_blank">Google: ${pesquisa}</a>`;

    document.getElementById("bing").innerHTML =
        `<a href="https://www.bing.com/search?q=${pesquisa_format}" target="_blank">Bing: ${pesquisa}</a>`;

}

function limpar() {

    document.getElementById("isearch").value = "";
    document.getElementById("google").innerHTML = "<br>";
    document.getElementById("bing").innerHTML = "<br>";
}
