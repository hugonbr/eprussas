let contas = {
    propriedade: "é assim que se atribui",
    receitas: [1000, 2000],
    despesas: [25.99, 500, 300, 10],
}

function soma(vetor) {
    let total = 0;

    for (let valor of vetor) {
        total += valor;
    }
    return total;
}

function calcular() {
    let totalReceitas = soma(contas.receitas);
    let totalDespesas = soma(contas.despesas);
    let status = totalReceitas - totalDespesas;
    let resultado;

    if (status >= 0) {
        resultado = "positivo";
    } else {
        resultado = "negativo";
    }
    console.log(status);
    return resultado;
}

// console.log(typeof contas);
// console.log(contas);

// console.log(`receitas: ${contas.receitas}`);
console.log(`Total receitas: ${soma(contas.receitas)}`);
// console.log(`despesas: ${contas.despesas}`);
console.log(`Total despesas: ${soma(contas.despesas)}`);

console.log(`status: ${calcular()}`);

// console.log(contas.propriedade);

