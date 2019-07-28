f = open('enc.txt')
cipher = f.read().replace('\n', '').split(' ')
f.close()

res = ''
for val in cipher:
    res += chr(int(val))

print(res)
