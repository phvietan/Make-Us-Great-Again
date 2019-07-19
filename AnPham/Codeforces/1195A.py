# read
s = input().split(' ')
n, k = int(s[0]), int(s[1])
cnt = [0]*k
for i in range(n):
  x = int(input()) - 1
  cnt[x] += 1

# solve
num = (n+1)//2
res = 0

for i in range(len(cnt)):
  res += (cnt[i] // 2) * 2
  num -= cnt[i] // 2
  cnt[i] = cnt[i] % 2

for i in range(len(cnt)):
  if (cnt[i] == 0): continue
  if (num == 0): break
  num -= 1
  res += 1
  cnt[i] = 0

print(res)