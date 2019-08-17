# import base64
#
# f = open('password.txt')
#
# def decodebase64(s):
#     return base64.b64decode(s)
#
# password = f.read().replace('\n', '')
#
# n = 13
# for i in range(n):
#     password = decodebase64(password)
#     password = password.replace('\n', '')
#
# print password

from string import printable

f = open('secret')

s = f.read().replace('\n', '')

print s
print s.encode('hex')
print len(s.encode('hex'))    
