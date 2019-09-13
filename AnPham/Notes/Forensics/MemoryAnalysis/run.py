s = raw_input().split('-')

print s

res = ''
for val in s:
    res = res + val.decode('hex')
print res
