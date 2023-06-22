function mainFunction(randomNumber, shouldCall, callback) {
    let result = randomNumber;

    if (shouldCall) {
        result = callback(randomNumber);
    }

    return result;
}

console.log(mainFunction(20, true, (num) => num * 2));

