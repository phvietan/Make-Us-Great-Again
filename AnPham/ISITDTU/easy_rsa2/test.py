
from Crypto.Util.number import *
import gmpy2

flag = 'ISITDTU{lollololololo############}'
p1 = getPrime(512)
p2 = gmpy2.next_prime(p1)
q1 = getPrime(512)
q2 = gmpy2.next_prime(q1)
n = p1*p2*q1*q2
e = 65537
phi = (p1-1)*(p2-1)*(q1-1)*(q2-1)
d = gmpy2.invert(e,phi)
c = pow(bytes_to_long(flag),e,n)

a = pow(p1+q2,65537,n)
b = pow(p2+q1,65537,n)

tempA = a*b % (q2*q1)
tempB = a % q2 * (b % q1)
x = pow(p1, 65537, q2) * pow(p2, 65537, q1) % (q1*q2)

print(tempA)
print(tempB)
print(x)
