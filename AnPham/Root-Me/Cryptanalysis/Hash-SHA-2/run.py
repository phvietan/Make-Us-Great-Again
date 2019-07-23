from Crypto.Hash import SHA256, SHA
import string

s = []
target = '96719db60d8e3f498c98d94155e1296aac105c4923290c89eeeb3ba26d3eef92'
printable = string.printable

def getHash(s):
    return SHA256.new(s).hexdigest()

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
    print('Bruteforcing len =', length)
    recursive(0, length)

# for i in range(1, 10):
#     solve(i)

print(SHA.new('4dM1n').hexdigest())
