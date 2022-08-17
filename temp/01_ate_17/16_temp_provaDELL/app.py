compras = [
    {"nome": "aveia", "quant": 6, "preço": 2.5},
    {"nome": "manteiga", "quant": 2, "preço": 15.0},
    {"nome": "detergente", "quant": 3, "preço": 1.5},
    {"nome": "café", "quant": 5, "preço": 8.0},
]

def filtrar_compras(compras, valorMax, quantMax):
    # valorMax=25, quantMax=4
    lista = []
    for prod in compras:
        # quant*preco <=25 E quant <=4
        # detergente 
        # não: café, aveia, manteiga
        if valor_ok(prod, valorMax) and quant_ok(prod, quantMax):
            lista.append(prod)
    return lista

def quant_ok(prod, quantMax):
    return (prod["quant"] <= quantMax)

def valor_ok(prod, valorMax):
    return (prod["quant"] * prod["preço"] <= valorMax)

print(filtrar_compras(compras, valorMax=25, quantMax=4))

