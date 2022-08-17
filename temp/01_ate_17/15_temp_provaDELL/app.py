def formatar_data(ano, mes, dia, mes_extenso=False, seculo=True):
    meses = [
        'jan', 'fev', 'mar', 'abr', 'mai', 'jun',
        'jul', 'ago', 'set', 'out', 'nov', 'dez'
    ]
    
    if seculo:
        ano_str = str(ano)
    else:
        ano_str = str(ano % 100)
    
    if mes_extenso:
        mes_str = meses[mes-1]
    else:
        mes_str = str(mes)

    dia_str = str(dia)
    
    return dia_str + '/' + mes_str + '/' + ano_str

print(formatar_data(2022, 8, 15))