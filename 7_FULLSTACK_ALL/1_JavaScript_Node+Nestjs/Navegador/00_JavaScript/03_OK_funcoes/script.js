// comentários
/*
funções
*/

let x, y, r;

function getvaluesById() {
    x = Number(document.getElementById('x').value);
    y = Number(document.getElementById('y').value);
}

function soma () {
    getvaluesById();
    r = x+y;
    document.getElementById('r').value=r;
    document.getElementById('op').innerHTML="+";
}
function sub () {
    getvaluesById();
    r = x-y;
    document.getElementById('r').value=r;
    document.getElementById('op').innerHTML="-";

}
function mult () {
    getvaluesById();
    r = x*y;
    document.getElementById('r').value=r;
    document.getElementById('op').innerHTML="*";

}
function div () {
    getvaluesById();
    r = x/y;
    document.getElementById('r').value=r;
    document.getElementById('op').innerHTML="/";

}