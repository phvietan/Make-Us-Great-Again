cipher_file = open('input.txt', 'r')
cipher = cipher_file.read()[:-1]

result = ''
for i in range(0, len(cipher), 4):
  cur = cipher[i:i+4]
  if (i+3 >= len(cipher)): result += cur
  else:
    result += cur[1]
    result += cur[2]
    result += cur[3]
    result += cur[0]

print(result)
