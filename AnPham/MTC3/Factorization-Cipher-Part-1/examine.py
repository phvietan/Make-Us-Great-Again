arr = [168919260200, 402271083010688000, 48600, 1638103129277324, 490303442632, 235092492288, 2359045149946171711556103]
plain = ['CAR', 'A CAR', 'CAB', 'ART', ' I AM', 'ABBA', 'BEEF']

def factorize(val):
  num = 2
  result = {}
  while val > 1:
    count = 0
    while val % num == 0:
      count += 1
      val = val // num
    if (count > 0):
      result[num] = count
    num += 1
  return result

for i in range(len(arr)):
  print((plain[i], arr[i]))
  print(factorize(arr[i]))
  print('---------------')
