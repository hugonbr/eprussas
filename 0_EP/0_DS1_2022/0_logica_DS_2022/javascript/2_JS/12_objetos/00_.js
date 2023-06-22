const carro = {
    marca: "Fiat",
    modelo: "Uno",
    placa: "HTG-8923",
    cor: "Vermelho",
    motor: 1.0,
    ligado: true,
    ligarMotor() {
        return 'vrum vrum ...';
    }
};

console.log(carro);
console.log(carro.placa);
console.log(carro.ligarMotor());

