from pwn import *

context.clear(arch = 'i386')

s = pwnlib.shellcraft.i386.linux.sh().rstrip()

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

# print toCode(s)

# run_assembly(shellcraft.echo('hello\n', 1)).recvline()

#
# s = shellcraft.echo('hello\n', 1).rstrip()
# s += shellcraft.syscall('SYS_exit', 0).rstrip()
#
# a = asm(s)
#
# print toCode
# run_assembly(s).recvline()
