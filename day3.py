#!/usr/bin/env python3

data = []

with open('inputs/3', mode='r') as f:
    data = f.readlines()

letters = 'abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ'
priority = {letters[x]: x+1 for x in range(52)}
total = 0
for sack in data:
    sack = sack[:-1]
    length = int(len(sack) / 2)
    a = set(sack[:length])
    b = set(sack[length:])

    c = a & b

    d = sum([priority[x] for x in c])
    print(d)
    total += d

print(total)
