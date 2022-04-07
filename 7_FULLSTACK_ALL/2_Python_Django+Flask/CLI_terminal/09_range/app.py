for x in range(1,4):
    print(f'{x}°')
print(10*'-')



for x in range(0,11,2):
    # if (x<10):
    #     print(f'|0{x} é par|')
    # else:
    #     print(f'|{x} é par|')
    if (x<10):
        x = str(x)
        x = '0'+x
    print(f'|{x} é par|')
print(10*'-')
