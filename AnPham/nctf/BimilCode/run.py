from pwn import *

def parse(s):
    return int(s, 16)

def solve(a, val, s):
    arr = s.split(' ')
    val = parse(val)
    offset = val - ord(a)

    res = ''
    for val in arr:
        cur = parse(val)
        print val, cur, cur - offset, cur + offset
        res += chr(cur - offset)
    return res

r = remote('prob.vulnerable.kr', 20034)
char = 'a'
r.recv(1024, timeout=2)
r.sendline(char)
c = r.recv(1024, timeout=2)
print c

# solve('a', '84', '7f 62 91 7a a1 67 a6 4e')

r.close()
