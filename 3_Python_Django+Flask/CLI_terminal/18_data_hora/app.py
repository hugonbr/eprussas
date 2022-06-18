import datetime

l = 46

d1 = datetime.datetime.now()
print(l*'-')
print(f'data de hoje:\n{d1}')
print(l*'-')

print(l*'-')
d2 = datetime.datetime.now()
print(f'ano atual:\n{d2.year}')
print(l*'-')

print(l*'-')
d3 = datetime.datetime(2020, 3, 20)
print(f'Data início da pandemia de covid-19 no Brasil:\n{d3}')
print(d3)
print(l*'-')
