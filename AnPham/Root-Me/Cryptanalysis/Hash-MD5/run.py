from Crypto.Hash import MD5
import string

s = []
target = '7ecc19e1a0be36ba2c6f05d06b5d3058'
printable = string.printable

def getHash(s):
    return MD5.new(s).hexdigest()

def recursive(index, length):
    global s, printable
    if (index == length):
        cur = ''.join(s)
        if getHash(cur) == target:
            print(cur)
            exit()
        return

    for val in printable:
        s[index] = val
        recursive(index+1, length)

def solve(length):
    global s
    s = ['']*length
    print('Bruteforcing len=', length)
    recursive(0, length)

for i in range(1, 10):
    solve(i)
