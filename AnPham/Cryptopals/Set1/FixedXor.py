def normalizeHex(s):
  if s[-1] == 'L': s = s[0:-1]
  if s[0:2] == '0x': s = s[2:]
  return s

def hexToInt(s):
  return int(normalizeHex(s), 16)

a = '1c0111001f010100061a024b53535009181c'
b = '686974207468652062756c6c277320657965'

ha = hexToInt(a)
hb = hexToInt(b)

hc = normalizeHex(hex(ha ^ hb))

print(hc)
