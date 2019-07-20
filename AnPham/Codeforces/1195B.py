from math import sqrt

# read
s = input().split(' ')
n, k = int(s[0]), int(s[1])

C = n*n + n - 2*k

def solve(a, b, c):
  delta = b*b - 4*a*c
  delta = int(sqrt(delta))
  return (-b - delta) // (2*a)

print(solve(1, - (2*n + 3), C))