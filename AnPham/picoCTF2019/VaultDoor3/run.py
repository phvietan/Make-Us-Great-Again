s = 'jU5t_a_sna_3lpm12gb44_u_4_m1r240'

res = s[:8]
for i in range(8, 16):
    res += s[23-i]
for i in range(16, 32):
    if i % 2 == 1:
        res += s[46-i]
    else:
        res += s[i]
print res

def tong(a, b):
    return a + b

def checkPassword(password):
    if len(password) != 32:
        return False
    s = ''
    for i in range(0, 8):
        s += password[i]
    for i in range(8, 16):
        s += password[23-i]
    for i in range(16, 32):
        if i % 2 == 1:
            s += password[46-i]
        else:
            s += password[i]

    print s

    return s == 'jU5t_a_sna_3lpm12gb44_u_4_m1r240'

print checkPassword('jU5t_a_s1mpl3_an22b14_u_4_m4rg41')
