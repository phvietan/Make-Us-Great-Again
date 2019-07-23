f = open('enc.txt')
cipher = f.read().replace('\n', '')
f.close()

f = open('decrypt-map.txt')
content = f.read()[0:-1].split('\n')
f.close()

map = {}
for row in content:
    cur = row.split(' ')
    map[cur[1]] = cur[0]

i = 0
res = ''
while i < len(cipher):
    if cipher[i] != '0' and cipher[i] != '1':
        res += cipher[i]
        i += 1
        continue
    cur = cipher[i:i+5]
    res += map[cur]
    i += 5

print(res)
