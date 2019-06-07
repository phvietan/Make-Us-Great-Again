import math as Math

def factorize(val):
  num = 2
  result = {}
  while val > 1:
    count = 0
    while val % num == 0:
      count += 1
      val = val // num
    if (count > 0):
      result[num] = count
    num += 1
  return result

def is_prime(n):
  k = int(Math.sqrt(n)) + 1
  for val in range(2, k):
    if n % val == 0: return False
  return True

def next(c):
  return chr(ord(c) + 1)

def initialization():
  char = 'A'
  i = 2
  map = {}
  while True:
    if is_prime(i):
      map[i] = char
      char = next(char)
    i += 1
    if char == 'Z': break
  return map

def decrypt(encrypted):
  factorization = factorize(encrypted)
  prime_map = initialization()
  result_map = {}
  for key in factorization:
    num = factorization[key]
    char = prime_map[key]

    num_factorization = factorize(num)
    for i in num_factorization:
      place = ord(prime_map[i]) - ord('A')
      result_map[place] = char

  result = ''
  for key in sorted(result_map.keys()):
    result += result_map[key]
  return result

plaintext = decrypt(32535610350861218929402373343432584856134615644613646196)

print('Decryption of 32535610350861218929402373343432584856134615644613646196 is:')
print(plaintext)
