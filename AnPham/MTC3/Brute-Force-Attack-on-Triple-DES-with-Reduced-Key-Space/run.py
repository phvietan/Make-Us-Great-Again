from Crypto.Cipher import DES3

input_file = open('input.txt', 'r')
input = input_file.read()[:-1]
input = input.split('\n')

for i in range(len(input)):
  input[i] = input[i].split(' ')

ciphertext = b''

for i in range(len(input)):
  for j in range(len(input[i])):
    ciphertext += input[i][j].decode('hex')

ciphertext = ciphertext[:8*25]

machine = 'COPACOBANA'
digits = ['0', '0', '0', '0', '0', '0']
count = 0

def number_bit_1(val):
  result = 0
  for i in range(8):
    result += ((1<<i) & val) > 0
  return result

def adjust_parity_bits(key):
  result = ''
  for i in range(0, len(key), 2):
    val = int(key[i:i+2], 16)
    if (number_bit_1(val) % 2 == 0): val ^= 1
    result += hex(val)[2:]
  return result.decode('hex')

def decrypt(key):
  global ciphertext

  key = adjust_parity_bits(key.encode('hex'))
  cipher = DES3.new(key, DES3.MODE_CBC, '\x00'*8)

  return cipher.decrypt(ciphertext)

def dfs(index):
  if index == 6:
    string = machine + digits[0] + digits[1] + digits[2] + digits[3] + digits[4] + digits[5]
    global count
    if (count % 10000 == 0): print('Decrypting with key:', string)
    count += 1
    decrypted = decrypt(string)

    try:
      print(decrypted.decode('utf8'))
      print(string)
      print('----------------------------------------')
    except:
      x = 1 # something...

    return

  for i in range(ord('0'), ord('9') + 1):
    char = chr(i)
    digits[index] = char
    dfs(index+1)

dfs(0)
