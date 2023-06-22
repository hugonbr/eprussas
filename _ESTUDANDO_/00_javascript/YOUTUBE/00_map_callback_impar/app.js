const nArray = [0,1,2,3,4,5,6,7,8,9];

// Exemplo de callback no método map do array
console.log(nArray.map(item => item*2));
//console.table(nArray.map(item => item*2));

console.log(nArray.map(
    (item) => {if(item%2==1){return item}}
));