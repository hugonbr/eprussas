import json

# x recebe um JSON:
hugoJSON =  '{ "nome":"Hugo Nathan", "idade":30, "cidade":"Russas"}'

# atribui o JSON de x em y:
hugo = json.loads(hugoJSON)

# O resultado é um dicionário em Python:
print(f'hugo[idade]: {hugo["idade"]}')

print(f'A variável hugo é um: {type(hugo)}')

