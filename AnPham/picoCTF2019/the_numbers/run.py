arr = [16, 9, 3,15, 3, 20, 6, -10, 20, 8, 5, 14, 21, 13, 2, 5, 18, 19, 13, 1, 19, 15, 14, -10]

res = ''
for val in arr:
    if val == -10:
        if len(res) < 10: res = res + '{'
        else: res = res + '}'
    else:
        cur = ord('A') + val - 1
        res = res + chr(cur)

print res
