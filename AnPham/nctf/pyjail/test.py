# def main():
#     t = raw_input()
#     s = t
#     print t
#     # print '7072696e74286f70656e2827666c61672e74787427292e72656164282929'.decode('hex')
#     exec(t)
#
# if __name__ == "__main__":
#     main()

def encodeToHex(s):
    res = ''
    for val in s:
        res += '\\x' + val.encode('hex')
    return res

# print encodeToHex('open(\'flag.txt\').read()')

s = """
def lol():
    t = input()
    print(t)
"""

t = encodeToHex(s)
print t
