let icpf, irg, rcpf = "", rrg = "";

function myFunction() {
    icpf = document.getElementById("CPF").value;
    irg = document.getElementById("RG").value;

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

$(document).ready(function () {
    var $seuCampoCpf = $("#CPF");
    $seuCampoCpf.mask('000.000.000-00', { reverse: true });
    var $seuCampoRG = $("#RG");
    $seuCampoRG.mask('0000000000-000', { reverse: true });
    var $seuCampoCelular = $("#Celular");
    $seuCampoCelular.mask('(00)00000-0000', { reverse: false });
});