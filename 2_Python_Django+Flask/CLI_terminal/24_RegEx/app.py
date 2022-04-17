import re

texto = "Moro em Russas"
#texto = "Não Moro em Russas"

#Checa se a string inicia com "Está" e encerra com "Russas":
busca = re.search("^Moro.*Russas$", texto)

print(busca)

vetor = re.split("\s", texto)
print(vetor)

if busca:
  print("SIM! está contido!")
else:
  print("Não, não está contido")

