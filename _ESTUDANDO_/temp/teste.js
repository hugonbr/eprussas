function myCallback(someNumber) {
    return someNumber * 2;
}

function mainFunction(randomNumber, shouldCall, callback) {
    let result = randomNumber;

    if (shouldCall) {
        result = callback(randomNumber);
    }

    return result;
}

console.log(mainFunction(20, true, myCallback));

