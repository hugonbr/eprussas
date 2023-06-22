import time
from plyer import notification

print('teste')

#if __name__ == 'main':
while True:
    notification.notify(
        title = 'Alert!!!',
        message = 'Funfou',
        timeout = 10
    )
time.sleep(3600)

