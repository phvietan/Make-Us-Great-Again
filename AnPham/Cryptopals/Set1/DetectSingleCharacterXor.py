def load_english_words():
  with open('../Resources/words.txt') as word_file:
    valid_words = set(word_file.read().split())
  return valid_words

def normalizeHex(s):
  if s[-1] == 'L': s = s[0:-1]
  if s[0:2] == '0x': s = s[2:]
  return s

def isSingleXorEncrypted(s, dict, threshold = 2):
  arr = s.split(' ')
  count = 0
  for word in arr:
    count += (word in dict) == True
  return count >= threshold

def decrypt(s, k):
  res = ''
  for i in range(0, len(s), 2):
    cur = int(s[i:i+2], 16)
    cur ^= k
    cur = normalizeHex(hex(cur))
    while (len(cur) < 2): cur = '0' + cur
    res += cur
  return res.decode('hex')

def decryptWithCheck(c, dict):
  for k in range(256):
    p = decrypt(c, k)
    if isSingleXorEncrypted(p, dict): return p
  return None

if __name__ == '__main__':
  dict = load_english_words()
  ciphers = open('../Resources/Set1_4.txt').read().split()
  for c in ciphers:
    p = decryptWithCheck(c, dict)
    if (p != None):
      print('Found cipher:', c)
      print('Decrypted cipher:', p)