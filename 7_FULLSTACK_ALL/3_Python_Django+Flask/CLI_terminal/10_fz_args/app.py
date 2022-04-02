def f_strings(*args):
    n_args = len(args)
    print(f'Foram passados {n_args} argumentos')
    for n in args:
        print(f'|{n}|')
        print(10*'-')

f_strings("Hugo", "Nathan", "Barbosa", "Régis")
f_strings("Hugo", "Nathan")
f_strings("Hugo", "Régis")

