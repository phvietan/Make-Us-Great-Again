val = '00000020.0804b160.0804853d.00000009.bffffc71.b7e1c4a9.bffffb44.b7fc4000.b7fc4000.0804b160.39617044.28293664.6d617045.bf000a64.0804861b.00000002.bffffb44.bffffb50.7a1f9d00.bffffab0.00000000.00000000.b7e04e81.b7fc4000.b7fc4000.00000000.b7e04e81.00000002.bffffb44.bffffb50.bffffad4.00000001.00000000.b7fc4000.b7fe775a.b7fff000.00000000.b7fc4000.00000000.00000000.af452638.902cc028.00000000.00000000.00000000.00000002.08048410.00000000.b7fece20.b7fe79b0'
arr = val.split('.')

res = ''
for val in arr:
    cur = ''
    cur += val[-2:]
    cur += val[-4:-2]
    cur += val[-6:-4]
    cur += val[:2]
    res += cur.decode('hex')

print res