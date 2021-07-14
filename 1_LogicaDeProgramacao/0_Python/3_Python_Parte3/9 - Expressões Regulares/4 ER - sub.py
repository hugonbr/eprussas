import re

#Check if the string starts with "The" and ends with "Spain":

str = "O Rio de Janeiro continua lindooo"
x = re.sub("\s", "_", str)
print(x)
