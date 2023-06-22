const myArray = [2, 4, 6, 8];

function doubleItem(item) {
    return item * 2;
}

const doubleArray = myArray.map(doubleItem);

console.log(doubleArray);

