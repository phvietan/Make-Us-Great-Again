from Crypto.Cipher import AES
import base64

file = open('../Resources/Set1_7.txt', 'r')
content = file.read().replace('\n', '')

def base64ToChar(s):
  return base64.b64decode(s)

obj = AES.new('YELLOW SUBMARINE', AES.MODE_ECB)
ciphertext = base64ToChar(content)

print(obj.decrypt(ciphertext))