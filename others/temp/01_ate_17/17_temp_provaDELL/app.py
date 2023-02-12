odometro_km = [0, 15, 65, 165]
relogio_min = [0, 15, 45, 125]

def calcular_velocidades_medias():
    velocidades = []
    for i in range(1, len(odometro_km)):
        distancia_km = odometro_km[i] - odometro_km[i-1]
        tempo_min = relogio_min[i] - relogio_min[i-1]
        vel_kmh = velocidade_media_km_h(distancia_km, horas(tempo_min))
        velocidades.append(vel_kmh)
    return velocidades

def horas(minutos):
    return minutos/60

def velocidade_media_km_h(x, t):
    return x / t

