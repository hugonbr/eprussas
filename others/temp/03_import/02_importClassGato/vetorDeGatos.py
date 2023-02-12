import datetime
from datetime import date
from Gato import Gato, repartir_por_idade

gatos = [
    Gato('pipoca', 'f', 4.99, date(2006, 11, 26)),
    Gato('zezinho', 'm', 5.12, date(2011, 11, 7)),
    Gato('pantro', 'm', 6.88, date(2007, 5, 14)),
    Gato('zefa', 'f', 7.05, date(2017, 2, 20)),
    Gato('noz moscada', 'f', 6.27, date(2020, 2, 5)),
    Gato('zig', 'm', 6.34, date(2010, 6, 18)),
]

# bilu = Gato('Bilu', 'm', 5.2, datetime.date(2015, 5, 31))
um_gato = Gato('Zarabi', 'f', 4.5, date(2010, 9, 4))

# gatos_repar = repartir_por_idade(gatos, um_gato.idade())
gatos_repartidos = Gato.repartir_por_idade(gatos, um_gato.idade())
gatos_velhos = gatos_repartidos[1]

for g in gatos_velhos:
    print(g.nome)

