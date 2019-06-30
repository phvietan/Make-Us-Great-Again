cipher_file = open('input.txt')
cipher = cipher_file.read()[:-1]

def get_even(cipher):
  result = ''
  for i in range(len(cipher)):
    if (i % 2 == 0):
      result += cipher[i]
  return result

def get_odd(cipher):
  result = ''
  for i in range(len(cipher)):
    if (i % 2 == 1):
      result += cipher[i]
  return result

def merge(cp1, cp2):
  result = ''
  i = 0
  j = 0
  for index in range(len(cp1) + len(cp2)):
    if ((i+j) % 2) == 0:
      result += cp1[i]
      i += 1
    else:
      result += cp2[j]
      j += 1
  return result

def recover_tree_from_leaf(tree):
  def dfs_recover(cur):
    if (cur * 2 in tree) and (cur * 2 + 1 in tree): # not leaf
      dfs_recover(cur*2)
      dfs_recover(cur*2+1)
      tree[cur] = merge(tree[cur*2], tree[cur*2+1])
  dfs_recover(1)
  return tree[1]

def decrypt(cipher):
  tree = {}
  tree[1] = cipher # Temporary
  tree['size'] = 0

  def dfs_assign(cur):
    if len(tree[cur]) == 1:
      tree[cur] = cipher[tree['size']]
      tree['size'] += 1
    else:
      tree[cur * 2] = get_even(tree[cur])
      tree[cur * 2 + 1] = get_odd(tree[cur])

      dfs_assign(cur*2)
      dfs_assign(cur*2+1)

  dfs_assign(1)
  return recover_tree_from_leaf(tree)

plaintext = decrypt(cipher)

print(plaintext)
