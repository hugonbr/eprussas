// comentários
/*
funções
*/

const elemento = document.querySelector('#numero');
let valor;

elemento.addEventListener('change', (event) => {
    const resultado = document.querySelector('#r');
    valor = elemento.value;

    if (valor>0) {
        resultado.textContent = `positivo`;
    } else if (valor<0) {
        resultado.textContent = `negativo`;
    } else {
        resultado.textContent = ``;
    }
});
