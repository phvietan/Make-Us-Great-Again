MOD = 998244353

n = int(input())
a = input().split(' ')
a = list(map(lambda x: int(x), a))

a.sort()
la = list(map(lambda x: len(str(x)), a))
cnt = [0]*11
for val in la:
  cnt[val] += 1

def demSau(val, l):
  val = str(val)[-l:]
  res = ''
  for v in val:
    res += v*2
  return int(res)

def demTrc(val, l):
  val = int(str(val)[:-l])
  return val * pow(10, 2*l)

res = 0
for i in range(n):
  val = a[i]
  m = la[i]
  for l in range(11):
    res = (res + demSau(val, l) * cnt[l]) % MOD
  for l in range(1, m):
    res = (res + demTrc(val, l) * cnt[l] * 2) % MOD

print(res)