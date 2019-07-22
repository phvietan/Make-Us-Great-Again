file = open('../Resources/Set1_8.txt', 'r')
ciphers = file.read().split('\n')[:-1]

for i in range(len(ciphers)):
  ciphers[i] = ciphers[i].decode('hex')

def countRepetitions(s, blocksize = 16):
  check = {}
  count = 0
  for i in range(0, len(s), blocksize):
    block = s[i:i+blocksize]
    try:
      if check[block]: count += 1
    except: count += 0
    check[block] = True
  return count

cnt = list(map(lambda x: countRepetitions(x), ciphers))
mx = max(cnt)

for i in range(len(cnt)):
  if mx == cnt[i]:
    print('Maybe this is ECB block:')
    print('Found at', i+1, 'th row')
    print('Repetitions =', mx)
    print('Hex =', ciphers[i])
