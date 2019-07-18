def hexToBase64(s):
  if s[-1] == 'L': s = s[0:-1]
  if s[0:2] == '0x': s = s[2:]
  return s.decode('hex').encode('base64')

s = '49276d206b696c6c696e6720796f757220627261696e206c696b65206120706f69736f6e6f7573206d757368726f6f6d'

print(hexToBase64(s))