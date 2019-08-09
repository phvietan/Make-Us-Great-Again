import codecs

inp = "1c0111001f010100061a024b53535009181c"
xorstr = "686974207468652062756c6c277320657965"

inpBytes = codecs.decode(inp, "hex")
xorstrBytes = codecs.decode(xorstr, "hex")

def bytesxor(b1, b2): # use xor for bytes
    result = bytearray()
    for b1, b2 in zip(b1, b2):
        result.append(b1 ^ b2)
    return bytes(result)

out = bytesxor(inpBytes, xorstrBytes)
print(out)
print(codecs.encode(out, "hex").decode())