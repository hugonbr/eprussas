function transformDegree(degree) {
    const celsiusExists = degree.toUpperCase().includes('C')
    const fahrenheitExists = degree.toUpperCase().includes('F')

    if (!celsiusExists && !fahrenheitExists) {
        throw new Error('Grau não identificado')
    }

    let updatedDegree = Number(degree.toUpperCase().replace("F", ""))
    let formula = (fahrenheit) => (fahrenheit - 32) * 5 / 9
    let degreesign = 'C'

    if (celsiusExists) {
        updatedDegree = Number(degree.toUpperCase().replace("C", ""));
        formula = celsius => celsius * 9 / 5 + 32
        degreesign = 'F'
    }

    return formula(updatedDegree) + degreesign
}

try {
    console.log(transformDegree('10C'))
    console.log(transformDegree('50F'))
    console.log(transformDegree('50K'))
} catch (error) {
    console.log(error)
}

