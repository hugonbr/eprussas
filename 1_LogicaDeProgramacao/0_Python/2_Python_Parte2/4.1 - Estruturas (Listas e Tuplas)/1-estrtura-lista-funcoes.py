lista = ["pera", "banana", "uva"]
print ("Tamanho: "+str(len(lista)))
lista.append("laranja")
print (lista)
lista.insert(1,"ovo")
print (lista)
lista.remove("banana")
print (lista)
"""
The pop() method removes the specified
index, (or the last item if index is
not specified):
"""
lista.pop()
print (lista)
lista.pop(1)
print (lista)
lista.clear()
# del (lista) # A lista deixa de existir
print (lista)
