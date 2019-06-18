import queue
import hashlib

hash = '67ae1a64661ac8b4494666f58c4822408dd0a3e4'
chars = 'qQwWnNiI5%8(0=+*'

def getHash(string):
  return hashlib.sha1(string).hexdigest()

length = 1
count = 0
while True:
  s = ''
  def search(s, n):
    if (len(s) == n):
      hashed = getHash(s)
      if hashed == hash:
        print(s)
        quit()

      global count
      count += 1
      if (count % 1000000 == 0):
        print(s, hashed, hash)

      return

    for c in chars:
      search(s + c, n)

  print('Searching length:', length)
  search(s, length)

  length += 1

# After running about 1 - 2 hours I got the result.
# Hint: the result contains distinc characters so you can modify my code in order to get the result faster.
