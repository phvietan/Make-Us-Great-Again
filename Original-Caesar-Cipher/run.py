# Link: https://www.mysterytwisterc3.org/en/challenges/level-i/original-caesar-cipher

def shift(i):
  val = ord(i)
  A = ord('A')
  Z = ord('Z')
  if (val >= A and val <= Z):
    val = val + 1
    if (val > Z): val = A
    return chr(val)

  a = ord('a')
  z = ord('z')
  if (val >= a and val <= z):
    val = val + 1
    if (val > z): val = a
    return chr(val)

  return i

def shiftString(s):
  result = ''
  for i in range(len(s)):
    result += shift(s[i])
  return result

f = open('input.txt', 'r')

content = f.read()

for i in range(26):
  print(content)
  content = shiftString(content)
