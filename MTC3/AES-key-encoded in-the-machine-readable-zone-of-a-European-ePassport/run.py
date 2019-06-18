import hashlib
from Crypto.Cipher import AES

input_file = open('input.txt', 'r')
input = input_file.read().split('\n')

code = input[0]

def examine(code):
  print('Examining code:', code)
  if (len(code) != 44):
    print('Code length must be 44 but found', len(code))
    return
  print('------------')

  print('Document number:', code[:9])
  print('Check digit:', code[9])
  print('Nationality:', code[10:13])
  print('Date of birth:', code[13:19])
  print('Check digit of birth:', code[19])
  print('Sex:', code[20])
  print('Date of expiry:', code[21:27])
  print('Check digit of expiry:', code[27])
  print('Optional data of issuing State:', code[28:42])
  print('Check digit of optional data:', code[42])
  print('Overall check:', code[43])
  print('------------')

def get_value(c):
  if (c == '<'): return 0
  if (c >= 'A' and c <= 'Z'):
    return ord(c) - ord('A') + 10
  return ord(c) - ord('0')

def get_weight(index):
  if (index % 3 == 0): return 7
  if (index % 3 == 1): return 3
  return 1

def get_check_digit(s):
  if (s[0] == '<'): return '<'
  sum = 0
  for i in range(len(s)):
    sum += get_weight(i) * get_value(s[i])
  return str(sum % 10)

def recover_check_digit(code):
  result = code[:9]
  result += get_check_digit(code[:9])
  result += code[10:19]
  result += get_check_digit(code[13:19])
  result += code[20:27]
  result += get_check_digit(code[21:27])
  result += code[28:42]
  result += get_check_digit(code[28:42])
  result += get_check_digit(result)
  return result

examine(code)
print('Recovering MRZ:', code)
recovered = recover_check_digit(code)
print('Recovered MRZ :', recovered)

ciphertext = input[1]
ciphertext = ciphertext.decode('base64')

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
  return result

def get_K_enc_des(MRZ):
  MRZ_information = MRZ[:10] + MRZ[13:20] + MRZ[21:28]
  K_seed = hashlib.sha1(MRZ_information).hexdigest()[:32]
  D = K_seed + '00000001'
  K_enc = hashlib.sha1(D.decode('hex')).hexdigest()[:32]
  return adjust_parity_bits(K_enc)

K_enc = get_K_enc_des(recovered)
print('K_enc from MRZ:', K_enc)
aes = AES.new(K_enc.decode('hex'), AES.MODE_CBC, '\x00'*16)

plaintext = aes.decrypt(ciphertext)

print('Decrypting message:')
print(plaintext)
