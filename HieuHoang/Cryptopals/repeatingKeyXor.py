import codecs
import itertools

inp = "Burning 'em, if you ain't quick and nimble\nI go crazy when I hear a cymbal"
key = "ICE"

# pi = itertools.cycle(inp)
ki = itertools.cycle(key)

out = ''.join([codecs.encode(bytes([ord(p) ^ ord(next(ki))]), "hex").decode() for p in inp])

print (out)