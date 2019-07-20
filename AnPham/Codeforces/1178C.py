arr = input().split(' ')
w, h = int(arr[0]), int(arr[1])

MOD = 998244353

print(pow(2, w+h, MOD))
