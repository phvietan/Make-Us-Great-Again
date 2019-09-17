val = 21380291284888
res = ''

def dec(num):
    if num <= 25: return chr(ord('A') + num)
    if num <= 51: return chr(ord('a') + num - 26)
    num -= 52
    return chr(ord('0') + num)

while val > 0:
    cur = val % 62
    res += dec(cur)
    val //= 62

res = res[::-1]
print 'nactf{' + res + '}'
