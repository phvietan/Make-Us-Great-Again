from itertools import permutations

input_file = open('input.txt', 'r')
input = input_file.read()

KEY_SIZE = 5

def getCiphertext(input):
  c = input.replace('\n', '')
  c = c.replace(' ', '')
  return c

ciphertext = getCiphertext(input)

print(ciphertext)


# Get all permutations of [1, 2, 3]
perm = permutations([1, 2, 3])

# Print the obtained permutations
for i in list(perm):
    print i
