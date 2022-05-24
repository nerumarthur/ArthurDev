import random

import pyautogui as pg
import time
words = ('xingamento1','xingamento2','xingamento3')
time.sleep(8)

for i in range(200):
    a=random.choice(words)
    pg.write('Vamo jogar '+a)
    pg.press('enter')
