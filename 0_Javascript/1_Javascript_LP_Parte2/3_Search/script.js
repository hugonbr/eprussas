let pesquisa, pesquisa_format;

function search() {

    pesquisa = document.getElementById("isearch").value;
    pesquisa_format = pesquisa.replaceAll(' ', '+');

    if (pesquisa.length > 20) {

        pesquisa = pesquisa.substring(0, 20);
        pesquisa = pesquisa + "...";
    }

    document.getElementById("google").innerHTML =
        `<a href="https://www.google.com/search?q=${pesquisa_format}" target="_blank">Google: ${pesquisa}</a>`;

    document.getElementById("bing").innerHTML =
        `<a href="https://www.bing.com/search?q=${pesquisa_format}" target="_blank">Bing: ${pesquisa}</a>`;

    document.getElementById("duckduckgo").innerHTML =
        `<a href="https://duckduckgo.com/?q=${pesquisa_format}" target="_blank">Duckgo: ${pesquisa}</a>`;

    // kkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkk
}

function limpar() {

    document.getElementById("isearch").value = "";
    document.getElementById("google").innerHTML = "<br>";
    document.getElementById("bing").innerHTML = "<br>";
    document.getElementById("duckduckgo").innerHTML = "<br>";
}
