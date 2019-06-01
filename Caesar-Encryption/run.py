# Link: https://www.mysterytwisterc3.org/en/challenges/level-i/caesar-encryption

cipher_file = open('input.txt')
cipher = cipher_file.read()[:-1]

chars = "0123456789abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ"

def next(char, num):
  index = chars.find(char)
  index = (index + num) % len(chars)
  return chars[index]

def rotate(s, num):
  result = ''
  for val in s:
    if val in chars:
      result += next(val, num)
    else:
      result += val

  return result

for i in range(len(chars)):
  new_cipher = rotate(cipher, i)
  print(new_cipher)
  print('-----')
