dicionario =	{
  "fabricante": "Ford",
  "modelo": "Mustang",
  "ano": 1964
}
print ("1º for")
for x in dicionario:
  print(x)
print ("2º for")
for x in dicionario:
  print(dicionario[x])
print ("3º for")
for x in dicionario.values():
  print(x)
print ("4º for")
for x, y in dicionario.items():
  print(x,":", y)
