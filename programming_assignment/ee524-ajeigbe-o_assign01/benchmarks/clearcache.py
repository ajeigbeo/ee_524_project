from random import random
list_cache = []

#print('clearing cache...')
for i in range(20262144):
    list_cache.append(random())

temp = 0
for i in list_cache:
    if(temp < 1):
        temp = i
