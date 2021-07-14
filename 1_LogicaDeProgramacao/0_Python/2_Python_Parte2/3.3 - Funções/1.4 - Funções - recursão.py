def fun_recursiva(k):
    if(k > 0):
        result = k+fun_recursiva(k-1)
        print(result)
    else:
        result = 0
    return result


print("Resultado de um Ex. de Recursão")
fun_recursiva(7)
