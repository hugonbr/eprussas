from datetime import date


class Gato:
    """Um bichano."""

    def __init__(self, nome, sexo, peso, nasc):
        """nome (str), sexo ('m' ou 'f'), peso (float),
        nasc (datetime.date)."""
        self.nome = nome
        self.sexo = sexo
        self.peso = peso
        self.nasc = nasc

    def __str__(self):
        return '{}, sexo {}, {}Kg, nasceu em {}'.format(
            self.nome, self.sexo, self.peso, self.nasc
        )

    def idade(self):
        """Idade do bichano, em anos (ponto-flutuante)."""
        return (date.today() - self.nasc).days / 365

    def repartir_por_idade(gatos, anos_de_idade):
        """Reparte uma lista de gatos em um par de listas: a dos gatos mais jovens que a idade informada e a dos mais velhos."""
        gatos_jovens = []
        gatos_velhos = []
        for g in gatos:
            if g.idade() < anos_de_idade:
                gatos_jovens.append(g)
            else:
                gatos_velhos.append(g)
        return gatos_jovens, gatos_velhos

