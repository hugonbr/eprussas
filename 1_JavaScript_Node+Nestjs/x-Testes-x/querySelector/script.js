document.querySelector("p").style.backgroundColor = "red";

const nodeList= document.querySelectorAll("p");
nodeList[1].style.backgroundColor = "blue"; 

/*
let nodeList = document.querySelectorAll("p");
for (let i = 0; i < nodeList.length; i++) {
  nodeList[i].style.backgroundColor = "red";
}
*/

let testeInput = document.querySelector("#entrada");

// console.log(testeInput);
console.log(testeInput.type="password");
//console.log(testeInput.type="text");

let testeButton = document.querySelector("#botao");

// testeButton.onclick = () => console.log("teste");

testeButton.onclick = () => console.log(testeInput.value);