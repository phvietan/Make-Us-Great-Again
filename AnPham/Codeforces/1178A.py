n = int(input())
a = input().split(' ')

for i in range(n):
  a[i] = int(a[i])

sum = a[0]
res = [0]

for i in range(1, n):
  if a[0] >= a[i]*2:
    res.append(i)
    sum += a[i]

sumall = 0
for val in a:
  sumall += val

if sumall / 2 < sum:
  print(len(res))
  for i in range(len(res)):
    print(res[i]+1, end=' ')
else:
  print(0)
