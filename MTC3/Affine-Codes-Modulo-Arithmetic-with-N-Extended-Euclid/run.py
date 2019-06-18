input_file = open('input.txt', 'r')
ciphertext = input_file.read()[:-1]

def normalize(val):
  val %= 26
  val += 26
  val %= 26
  return chr(val + ord('A'))

# y = 17x + 7 (mod 26)
# y - 7 = 17x (mod 26)
# (y - 7)*17^-1 = x (mod 26)
# x = (y-7)*17^11 (mod 26)
# Because 17^(phi(26) - 1) = 17^11 = 17^-1 (mod 26) (Euler phi function)
def decrypt(char):
  val = ord(char) - ord('A')
  return normalize((val - 7) * pow(17, 11, 26))

plaintext = ''
for val in ciphertext:
  if val == ' ': plaintext += ' '
  else:
    plaintext += decrypt(val)

print(plaintext)
