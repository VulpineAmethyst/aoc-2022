#!/usr/bin/env python3

data = []
with open('inputs/4', mode='r') as f:
    for line in f.readlines():
        data.append(line[:-1])

supersets = 0
for group in data:
    a, b = group.split(',', maxsplit=2)
    
    x1, y1 = a.split('-', maxsplit=2)
    x2, y2 = b.split('-', maxsplit=2)

    ar = set(range(int(x1), int(y1) + 1))
    br = set(range(int(x2), int(y2) + 1))

    if ar <= br or br <= ar:
        supersets += 1

print(supersets, 'supersets')
