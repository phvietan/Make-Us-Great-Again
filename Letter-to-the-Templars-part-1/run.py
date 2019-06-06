cipher_file = open('input.txt', 'r')
cipher = cipher_file.read()[:-1]

result = ''
for i in range(len(cipher) // 2):
  place = i * 2
  if (place+1 < len(cipher)): result += cipher[place+1]
  result += cipher[place]

print(result)
