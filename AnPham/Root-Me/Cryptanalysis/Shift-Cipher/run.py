from string import printable

f = open('ch7.bin')
cipher = f.read().replace('\n', '')

def rotate(cipher, k):
    result = ''
    for val in cipher:
        val = ((ord(val) + k) % 128 + 128) % 128
        val = chr(val)
        if val not in printable: return None
        result += val
    return result

for k in range(-128, 128):
    cur = rotate(cipher, k)
    if cur != None:
        print(len(cur))
        print(cur)
        print('---')
