from itertools import permutations

cipher_file = open('input.txt', 'r')
output_file = open('output.txt', 'w+')
cipher = cipher_file.read()[:-1]

for perm in permutations(range(7)):
  result = ''
  for i in range(0, len(cipher), 7):
    cur = cipher[i:i+7]
    if (i+6 >= len(cipher)): result += cur
    else:
      for i in range(7):
        result += cur[perm[i]]

  print(perm)
  output_file.write(result + '\n')
  output_file.write('---------\n')

output_file.close()
