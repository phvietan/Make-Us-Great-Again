import string
import base64

printable = string.printable

def getNumDiff(diff):
  result = 0
  for i in range(8):
    result += ((1 << i) & diff) != 0
  return result

def hammingDistance(a, b):
  result = 0
  for (vala, valb) in zip(a, b):
    diff = ord(vala) ^ ord(valb)
    numDiff = getNumDiff(diff)
    result += numDiff
  return result

def getValueHammingtonBlocks(s, blocksize, numBlock = 3):
    s0 = s[:blocksize]
    s1 = s[blocksize:blocksize*2]
    s2 = s[blocksize*2:blocksize*3]

    d0 = float(hammingDistance(s0, s1)) / blocksize
    d1 = float(hammingDistance(s0, s2)) / blocksize
    d2 = float(hammingDistance(s1, s2)) / blocksize

    return (d0+d1+d2) / 3

def load_english_words():
  with open('../Resources/words.txt') as word_file:
    valid_words = set(word_file.read().split())
  return valid_words

def decodeBase64(s):
  return base64.b64decode(s)

t = 1
key = []
cipher = ''
english_words = load_english_words()

def decryptRepeatedKey(key, cipher, english = False, threshold = 10):
    global printable, english_words, dem
    result = ''
    for i in range(len(cipher)):
        j = i % len(key)
        cur = chr(ord(cipher[i]) ^ ord(key[j]))
        if cur not in printable: return None
        result += cur

    if english:
        plains = result.split(' ')
        count = 0
        for val in plains:
            x = val.lower()
            if x in english_words: count += 1
        if count < (len(plains) // threshold): return None
        print key
        print result
        print '=================================='

    return result

G = []
res = []
expectedKey = 'Tbq?hi?rhq??9?Ag?i??????noise'
cnt = 3
dem = 0

def dequy(index):
    global t, key, cipher, printable, G, cnt, expectedKey, dem
    if cnt < 0: return
    if index == len(key):
        plain = decryptRepeatedKey(key, cipher, english = True)
        if plain != None:
            G.append(key)
            res.append(plain)
            cnt -= 1
            print('Found')
            print(key)
            print(plain)
        return

    for i in range(len(printable)-1, -1, -1):
        char = printable[i]
        l = list(key)
        l[index] = char
        key = ''.join(l)
        if decryptRepeatedKey(char, t[index]) == None: continue
        dequy(index+1)

    # if expectedKey[index] == '?':
    #     for i in range(256):
    #         char = chr(i)
    #         l = list(key)
    #         l[index] = char
    #         key = ''.join(l)
    #         if decryptRepeatedKey(char, t[index]) == None: continue
    #         dequy(index+1)
    # else:
    #     char = expectedKey[index]
    #     l = list(key)
    #     l[index] = char
    #     key = ''.join(l)
    #     if decryptRepeatedKey(char, t[index]) == None: return
    #     dequy(index+1)

def breakRepeatedKey(c, blocksize):
  global t, key
  t = ['']*blocksize
  for i in range(len(c)):
    j = i % blocksize
    t[j] += c[i]

  key = '.'*blocksize
  dequy(0)


def main():
  # file = open('encrypted.txt')
  file = open('../Resources/Set1_6.txt')
  global cipher
  cipher = base64.b64decode(file.read().replace('\n', '')).decode('utf-8')

  keyVal = []
  for i in range(1, 50):
    cur = {
      'index': i,
      'value': getValueHammingtonBlocks(cipher, i)
    }
    keyVal.append(cur)

  keyVal = sorted(keyVal, key=lambda x: x['value'])
  print(keyVal)

  breakRepeatedKey(cipher, 29)

  # for i in range(29):
  #   x = G[0][i]
  #   check = True
  #   for s in G:
  #     if s[i] != x:
  #       check = False
  #       break
  #   if check:
  #     print('Index:', i, 'Value:', x)

if __name__ == '__main__': main()
