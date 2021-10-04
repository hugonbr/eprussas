let hora, resultado, resultado2;

function comparar() {
    ihora = document.getElementById("i_hora");
    hora = Number(ihora.value);
    hora = hora.toFixed();

    console.log(ihora.value.length);
    if (ihora.value.length == 0 || hora < 0 || hora > 23) {
        console.log("Hora inválida, tente novamente");
        document.getElementById("i_hora").value = "";
        document.getElementById("r").innerHTML = "Hora inválida, tente novamente";
    } else {
        document.getElementById("i_hora").value = hora;
        if (hora < 12) {
            resultado = "Bom dia";
            resultado2 = "manhã"
        }
        else if (hora < 18) {
            resultado = "Boa tarde";
            resultado2 = "tarde"
        }
        else {
            resultado = "Boa noite";
            resultado2 = "noite"
        }
        //console.log(resultado);
        document.getElementById("r").innerHTML = resultado;
        document.getElementById("r").innerHTML = `${resultado}, são ${hora} hora(s) da ${resultado2}`;
    }
}
