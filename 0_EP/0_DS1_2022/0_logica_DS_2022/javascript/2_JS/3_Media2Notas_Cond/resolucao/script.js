// console.log('teste');

function calcular() {
    let n1, n2, media, status;

    n1 = Number(document.getElementById("n1").value);
    n2 = Number(document.getElementById("n2").value);

    media = (n1 + n2) / 2;
    // 6 | 4.2 | 9.5 ...

    // if | else

    if (media >= 5.5 && media <6) {
        media = 6;
    }

    if (media >= 6) {
        status = `Sua média foi ${media} e você está aprovado`;
    } else {
        status = `Sua média foi ${media} e você está reprovado`;
    }
    document.getElementById("resposta").innerHTML = status;
}