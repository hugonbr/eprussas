mCarros = ["Chevrolet", "Ford", "Volkswagen"]

print(mCarros)

mCarros[0] = "Toyota"; mCarros[2] = "Fiat"

print(mCarros)

print(f'Tamanho do Array: {len(mCarros)}')

c = 0
for m in mCarros:
    #c+=1
    print(f'{c}-{m};')
    c+=1

mCarros.append("Honda")

print(mCarros)

print(f'Tamanho do Array: {len(mCarros)}')

mCarros.pop(1)

print(mCarros)

mCarros.remove("Fiat")

print(mCarros)

