import json

# a Python object (dict):
hugo = {
  "nome": "Hugo Nathan",
  "idade": 30,
  "cidade": "Russas"
}

# convert into JSON:
hugoJSON = json.dumps(hugo)

# the result is a JSON string:
print(hugoJSON)

# use four indents to make it easier to read the result:
# Não está funcionando como no "w3schools"
print(json.dumps(hugoJSON, indent=2))

