import os
import string

def getFilename(i):
    s = str(i)
    while len(s) < 3: s = '0' + s
    s = s + '.c.out'
    return s

def doi(c):
    if c <= 9: return str(c)
    if c == 10: return 'a'
    if c == 11: return 'b'
    if c == 12: return 'c'
    if c == 13: return 'd'
    if c == 14: return 'e'
    if c == 15: return 'f'

def getResult(filename):
    global pr
    for t1 in range(16):
        for t2 in range(16):
            v1 = doi(t1)
            v2 = doi(t2)
            cmd = 'python -c "print(\'\\x'+v1+v2+'\')" | ./' + filename
            so = os.popen(cmd, 'r').read()
            if 'OK' in so: return '\\x' + v1+v2
    return None

res = ''
for i in range(1, 1000):
    filename = getFilename(i)
    c = getResult(filename)
    if c == None:
        print(i)
        res += '?'
    else:
        res += c

    print(res)

print(res)
