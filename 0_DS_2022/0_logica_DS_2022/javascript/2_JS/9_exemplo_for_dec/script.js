let resposta = document.getElementById("resposta");

let r = '';

for (let i = 10; i > 0; i--) {
    console.log(`${i};`);
    r = r + `${i};`
}

resposta.innerHTML = r;

