def toCode(s):
    res = ''
    if len(s) % 2 == 1:
        raise 'Shell craft length must be even'
    for i in range(len(s)):
        if i % 2 == 0: res += '\\x'
        res += s[i]
    return res

bin = '3c190040273901100320f809000000000000000024020fa1000020250000000c27bdffe8afbf001424020fa4240400013c05004124a501503c06000024c6000c0000000c8fbf001427bd001803e0000800000000'
print toCode(bin)
