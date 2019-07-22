def normalizeHex(s):
  if (s[0:2] == '0x'): s = s[2:]
  if (s[-1] == 'L'): s = s[0:-1]
  return s

def xor(a, b):
  a = ord(a)
  b = ord(b)
  c = normalizeHex(hex(a ^ b))
  while (len(c) < 2): c = '0' + c
  return c

def encrypt(s, k):
  result = ''
  for i in range(len(s)):
    j = i % len(k)
    result += xor(s[i], k[j])
  while result[0] == '0': result = result[1:]
  return result

if __name__ == '__main__':
  plaintext = open('../Resources/Set1_5.txt').read()
  key = 'ICE'
  print(encrypt(plaintext, key))
