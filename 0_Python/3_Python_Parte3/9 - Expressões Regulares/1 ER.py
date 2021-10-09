import re

#Check if the string starts with "The" and ends with "Spain":

str = "O Rio de Janeiro continua lindo"
x = re.search("^O.*lindo$", str)

if (x):
  print("A expressão foi encontrada")
else:
  print("A expressão NÂO foi encontrada")
