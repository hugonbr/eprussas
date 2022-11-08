let r_pc;

function ale(){
    r_pc = Math.floor(Math.random() * 3) + 1;
    console.log(r_pc);
    if (r_pc === 1) {
        console.log('pedra')
    }
    if (r_pc === 2) {
        console.log('papel')
    }
    if (r_pc === 3) {
        console.log('tesoura')
    }
}

ale() //pedra
ale() //tesoura
ale() //papel
ale() //papel