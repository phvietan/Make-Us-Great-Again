def isqrt(n):
  x = n
  y = (x + n // x) // 2
  while y < x:
    x = y
    y = (x + n // x) // 2
  return x

n = 11127212863544389237262565582342312793444654886136310133705565382574067475157051952050355000097126157942244686899397157941082263117851
k = isqrt(n)
count = 0
while True:
    if n % k == 0:
        print k, n // k
        exit(0)
    count += 1
    k -= 1
    if count % 500000 == 0:
        print 'Count = ' + str(count) + ' ' + str(k)
