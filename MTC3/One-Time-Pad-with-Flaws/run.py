input_file = open('input.txt', 'r')
ciphertext = input_file.read()[:-1].replace(' ', '')
pi_file = open('pi.txt', 'r')
pi = pi_file.read()[:-1]

output_file = open('output.txt', 'w+')

def decrypt_char(char, key):
  tmp = char
  char = ord(char) - ord('A')
  char = (char - int(key)) % 26
  char = (char + 26) % 26
  return chr(char + ord('A'))

def decrypt(ciphertext, offset):
  if offset < 1: return
  global pi
  result = ''
  for i in range(len(ciphertext)):
    key = pi[i*2 + offset : (i+1)*2 + offset]
    result += decrypt_char(ciphertext[i], key)
  return result

for i in range(1, 111):
  plaintext = decrypt(ciphertext, i)
  output_file.write(str(i-1) + '\n' + plaintext + '\n' + '-----------------------\n')

output_file.close()
