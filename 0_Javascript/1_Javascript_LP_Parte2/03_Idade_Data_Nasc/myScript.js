let data_nasc, data_atual, idade;
let r;

input1.max = new Date().toISOString().split("T")[0];

function myFunction() {
    data_nasc = document.getElementById("input1").value;

    //idade = Math.floor((new Date() - new Date(data_nasc).getTime()) / 3.15576e+10);
    //teste nodejs
    //x=Math.floor(Math.ceil(Math.abs(new Date("1990-01-01") - new Date()) / (1000 * 3600 * 24)) / 365.25)
    //Math.floor() arredonda por baixo. Ex: 21.8 => 21
    //toFixed() arredondamento completo. Ex: 21.8 => 22
    idade = Math.floor((new Date() - new Date(data_nasc)) / 3.15576e+10);

    if (idade < 0 || idade > 150) {
        r = " Data inválida, tente novamente.";
    } else if (idade >= 18) {
        r = "R: " + idade + " ano(s). " + " O usuário é maior de idade!";
    } else {
        r = "R: " + idade + " ano(s). " + " O usuário é menor de idade!";
    }

    document.getElementById("r").innerHTML = r;
    //document.getElementById("r").innerHTML = `R: ${idade}. ${r}`;
}
