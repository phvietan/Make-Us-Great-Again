n = int(input())
a = input().split(' ')
b = input().split(' ')
for i in range(n):
  a[i] = int(a[i])
  b[i] = int(b[i])
  
F = [[0, 0]] * n
G = [[0, 0]] * n
F[0][0], F[0][1] = G[0][0], G[0][1] = a[0], b[0]

for i in range(1, n):
  F[i][0] = G[i-1][1] + a[i]
  F[i][1] = G[i-1][0] + b[i]
  G[i][0] = max(G[i-1][0], F[i][0])
  G[i][1] = max(G[i-1][1], F[i][1])

print(max(G[n-1][0], G[n-1][1]))