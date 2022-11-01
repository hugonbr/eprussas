// let vs var

let teste = 'teste0'

function f_teste() {
    teste = 'teste1';
}

function f_teste2() {
    teste = 'teste2';
}

f_teste();
f_teste2();

console.log(teste);
