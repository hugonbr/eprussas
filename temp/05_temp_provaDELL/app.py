notas = (4.5, 7.8, 10.0, 1.1)
i = 0
while i < len(notas):
    if notas[i] >= 6.0:
      print(notas[i], "é maior ou igual que a média")
    else:
      print(notas[i], "é menor que a média")
    i += 1
print()
notas = (4.5, 7.8, 10.0, 1.1)
for nota in notas:
    if nota >= 6.0:
      print(nota, "é maior ou igual que a média")
    else:
      print(nota, "é menor que a média")
