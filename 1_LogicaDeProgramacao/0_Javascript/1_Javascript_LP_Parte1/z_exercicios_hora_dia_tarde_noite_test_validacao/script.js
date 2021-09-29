let hora, resultado, resultado2;

function comparar() {
    hora = Number(document.getElementById("i_hora").value);
    hora = hora.toFixed();
    document.getElementById("i_hora").value = hora;

    if (hora >= 0 && hora < 24) {
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

    } else {
        console.log("Hora inválida, tente novamente");
        document.getElementById("i_hora").value = 0;
        document.getElementById("r").innerHTML = "Hora inválida, tente novamente";
    }
}
