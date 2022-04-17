import re

#Check if the string starts with "The" and ends with "Spain":

str = "O Rio de Janeiro continua lindooo"
x = re.split("\s", str)
print (str)
print(x)
print(x[1:4])
