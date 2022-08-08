notas = (6.5, 7.8, 10.0, 9.1)
# notas = (9, 9, 9, 9)
total = 0
for nota in notas:
    total += nota
media = total / len(notas)
if media >= 7.0:
    print("aprovado com média:", media)
else:
    print("reprovado com média:", media)