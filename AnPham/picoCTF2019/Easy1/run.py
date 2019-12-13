ciphertext = 'UFJKXQZQUNB'
key = 'SOLVECRYPTO'

table = open('table.txt', 'r').read().split('\n')

def decode(c, k):
    global table

    col = -1
    row = -1
    for index in range(len(table[0])):
        if c == table[0][index]:
            col = index
            break

    for index in range(len(table)):
        if k == table[index][0]:
            row = index
            break

    return table[row][col]

res = ""
for index in range(len(ciphertext)):
    cur = ciphertext[index]
    for i in range(ord('A'), ord('Z')+1):
        ch = chr(i)
        if decode(ch, key[index]) == cur:
            res += ch
            break
    # res += decode(ciphertext[index], key[index])

print res
