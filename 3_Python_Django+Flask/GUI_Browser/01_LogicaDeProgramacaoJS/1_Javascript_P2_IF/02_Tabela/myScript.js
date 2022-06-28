function myFunction() {

    document.getElementById("r_E").innerHTML =
        (1 && 1) + "<br>" +     //V 1
        (1 && 0) + "<br>" +     //F 0
        (0 && 1) + "<br>" +     //F 0
        (0 && 0) + "<br>"       //F 0
        ;

    document.getElementById("r_Ou").innerHTML =
        (1 || 1) + "<br>" +     //V 1
        (1 || 0) + "<br>" +     //V 1
        (0 || 1) + "<br>" +     //V 1
        (0 || 0) + "<br>"       //F 0
        ;

    document.getElementById("r_Negativa").innerHTML =
        Number(!1) + "<br>" +     //F 0
        Number(!0) + "<br>"       //V 1
}

myFunction();

