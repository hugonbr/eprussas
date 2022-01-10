import re

#Check if the string starts with "The" and ends with "Spain":

str = "O Rio de Janeiro continua lindooo"
x = re.search("in", str)
print(x) #this will print an object
