import base64

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
    result += chr(ord(s[i]) ^ ord(k[j]))
  return base64.b64encode(result.encode('ascii'))

if __name__ == '__main__':
  plaintext = open('message.txt').read()
  key = 'ICE'
  ciphertext = encrypt(plaintext, key)
  fw = open('encrypted.txt', 'wb')
  fw.write(ciphertext)
  fw.close()
