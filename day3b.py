#!/usr/bin/env python3

data = []

with open('inputs/3', mode='r') as f:
    for line in f.readlines():
        data.append(line[:-1])

letters = 'abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ'
priority = {letters[x]: x+1 for x in range(52)}
groups = int(len(data) / 3)
total = 0
for i in range(groups):
    a = set(data[i * 3 + 0])
    b = set(data[i * 3 + 1])
    c = set(data[i * 3 + 2])

    d = a & b & c
    total += priority[list(d)[0]]

print(total)
