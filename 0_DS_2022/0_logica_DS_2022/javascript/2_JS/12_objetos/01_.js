const pessoa = {
    primeiroNome: "Hugo",
    sobreNome: "Régis",
    age: 29,
    corDosOlhos: "castanho",
    dormir() {
        return '...zzz...';
    },
    apresentar() {
        return `${this.primeiroNome} ${this.sobreNome}`;
    }
};

console.log(pessoa.apresentar());
console.log(pessoa.dormir());