let data_nasc, data_atual, idade;
let r;
//
function myFunction() {
    data_nasc = document.getElementById("input1").value;

    //idade = Math.floor((new Date() - new Date(data_nasc).getTime()) / 3.15576e+10);
    idade = Math.floor((new Date() - new Date(data_nasc)) / 3.15576e+10);

    if (idade >= 18) {
        r = " O usuário é maior de idade!";
    } else {
        r = " O usuário é menor de idade!";
    }

    document.getElementById("r").innerHTML = "R: " + idade + ". " + r;
}

