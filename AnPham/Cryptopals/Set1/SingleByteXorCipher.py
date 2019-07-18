def normalizeHex(s):
  if s[-1] == 'L': s = s[0:-1]
  if s[0:2] == '0x': s = s[2:]
  return s

s = '1b37373331363f78151b7f2b783431333d78397828372d363c78373e783a393b3736'

def decrypt(s, k):
  res = ''
  for i in range(0, len(s), 2):
    cur = int(s[i:i+2], 16)
    cur ^= k
    cur = normalizeHex(hex(cur))
    while (len(cur) < 2): cur = '0' + cur
    res += cur
  return res.decode('hex')

for k in range(256):
  print(decrypt(s, k))