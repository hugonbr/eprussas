import re

#Check if the string starts with "The" and ends with "Spain":

str = "O Rio de Janeiro continua lindooo"
x = re.findall("o", str)
print(x)
