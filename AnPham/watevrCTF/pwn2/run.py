from pwn import *

# p = process('./Club_Mate')
#
# for i in range(0, 13):
#     p.sendline(str(i))
#     p.sendline('$4')
#
# p.interactive()
#
# p.close()

for i in range(196):
    print(0)
    print('$4')
    print(0)
    print('yes')

for i in range(0, 15):
    print(i)
    print('$4')
