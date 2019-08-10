f = open('hype_key.txt')

cipher = f.read().replace('\n', '').split(' ')

res = ''
for val in cipher:
    val = int(val, 16)
    res += chr(val)

print(res)
