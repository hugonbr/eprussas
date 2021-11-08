let data_nasc, data_atual, idade;
let r;

input1.max = new Date().toISOString().split("T")[0];

//
function myFunction() {
    data_nasc = document.getElementById("input1").value;

    //idade = Math.floor((new Date() - new Date(data_nasc).getTime()) / 3.15576e+10);
    idade = Math.floor((new Date() - new Date(data_nasc)) / 3.15576e+10);

    //criança 0 a 12
    //jovem 13 a 21
    //qualquer outra idade else

    if (idade >= 0 && idade < 13 /*<= 12*/) {
        r = "É criança.";
    } else if (idade > 12 && idade < 22 /*<= 21*/) {
        r = "É jovem.";
    } else if (idade >= 22) {
        r = "A sua idade está fora da faixa etária estipulada.";
        console.log("Você tá véio rs");
    } else {
        r = "Idade inválida."
        idade = "";
        console.log("Idade inválida.");
    }

    document.getElementById("r").innerHTML = "R: " + idade + ". " + r;
}

