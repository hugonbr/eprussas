dicionario =	{
  "fabricante": "Ford",
  "modelo": "Mustang",
  "ano": 1964
}
if "modelo" in dicionario:
  print("Sim, 'modelo' é uma chave neste dicionario", dicionario)
print("Tamanho do dicionário:", len(dicionario))
dicionario["cor"] = "vermelho"
print (dicionario)
print("Tamanho do dicionário:", len(dicionario))
dicionario.pop("modelo")
print (dicionario)
print("Tamanho do dicionário:", len(dicionario))
dicionario.clear()
print(dicionario)
print("Tamanho do dicionário:", len(dicionario))
