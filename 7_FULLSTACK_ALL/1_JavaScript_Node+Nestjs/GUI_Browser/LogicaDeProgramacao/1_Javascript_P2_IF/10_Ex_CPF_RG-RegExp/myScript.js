let icpf, irg, rcpf = "", rrg = "";

function myFunction() {
    icpf = document.getElementById("inputCPF").value;
    irg = document.getElementById("inputRG").value;

    if (icpf.length == 14 && irg.length == 13) {
        document.getElementById("r").innerHTML = "Dados Válidos:";
        rcpf = "CPF: " + icpf;
        rrg = "RG: " + irg;
    } else if (icpf.length == 14 || irg.length == 13) {
        if (icpf.length == 14) {
            document.getElementById("r").innerHTML = "Dados Válidos:";
            rcpf = "CPF: " + icpf;
            rrg = "";
        }
        if (irg.length == 13) {
            document.getElementById("r").innerHTML = "Dados Válidos:";
            rcpf = "";
            rrg = "RG: " + irg;
        }
    } else {
        document.getElementById("r").innerHTML = "Dados inválidos, tente novamente";
        rcpf = "";
        rrg = "";
    }

    document.getElementById("cpf").innerHTML = rcpf;
    document.getElementById("rg").innerHTML = rrg;
}

function mascara(o, f) {
    v_obj = o;
    v_fun = f;
    setTimeout("execmascara()", 1);
}

function execmascara() {
    v_obj.value = v_fun(v_obj.value);
}

//Ex: 123.456.789-10
function cpf(v) {
    v = v.replace(/\D/g, "");                    //Remove tudo o que não é dígito
    v = v.replace(/(\d{3})(\d)/, "$1.$2");       //Coloca um ponto entre o terceiro e o quarto dígitos
    v = v.replace(/(\d{3})(\d)/, "$1.$2");       //Coloca um ponto entre o terceiro e o quarto dígitos //de novo (para o segundo bloco de números)
    v = v.replace(/(\d{3})(\d{1,2})$/, "$1-$2"); //Coloca um hífen entre o terceiro e o quarto dígitos
    return v;
}

//Ex: 2001070043109
function rg(v) {
    v = v.replace(/\D/g, "");
    return v;
}
