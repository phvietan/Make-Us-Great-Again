import math
from Crypto.PublicKey import RSA
from Crypto.Cipher import PKCS1_OAEP

key = RSA.importKey(open("oligarchy.pem", "rb"))

n = key.n
e = key.e
a = 84733215803103612460901465701232424798609470209825913961212238457798293111098195061837071495218083197429913141798442522950831495758395873695688189182925448736211066067276791533151828542439575601763801135131479532656528730453020404557236783254278625529895480234633323403399468237577058553920576024305830379725
r = 21700996784810065805847020455080940987640304282783092123992896363328128691169420271855815648912121417792054646557156071514079520782530801688062034321252682229729442734741486715339008457753023855600772948737800521010217600436912058582658334252483984244806083617513596479033871117464319239681526924092910597300
ciphertext = 85407181759755287105309527383534372436668736072315927293076398182206068631971587183149437554341349819060482477969350837066653250734556920049021810122548703168301872412719117857995283679569989680329696657609285728934732302846152702363240223251805773071022405764521081142920227557091217872210813095318042763847

def getkrootn(k, n):
    if k < 1 or n < 0: return None
    if k == 1: return n
    L = 1
    R = n
    res = None
    while L <= R:
        M = (L+R) // 2
        temp = 1
        for i in range(k):
            temp *= M
        if temp <= n:
            res = M
            L = M+1
        else:
            R = M-1
    return res

def xgcd(a, b):
    a2, a1 = 1, 0
    b2, b1 = 0, 1
    while b:
        q, r = divmod(a, b)
        a1, a2 = a2 - q * a1, a1
        b1, b2 = b2 - q * b1, b1
        a, b = b, r
    return a, a2, b2

def solve(a, b, c):
    delta = b*b - 4*a*c
    if delta < 0: return []

    delta = getkrootn(2, delta)
    if delta == 0: return -b // (2*a)
    return [(-b - delta) // (2*a), (-b + delta) // (2*a)]

k = 1
p, q = None, None
while k*r <= n:
    m = n - k*r + 1
    a = -1
    b = m
    c = -n
    arr = solve(a, b, c)
    if arr[0] * arr[1] == n:
        p = arr[0]
        q = arr[1]
        break
    k += 1

phi = (p-1)*(q-1)
_, d, __ = xgcd(e, phi)

key = RSA.construct((n, e, d, p, q))
cipher = PKCS1_OAEP.new(key)

ciphertext = hex(ciphertext)[2:-1].decode('hex')

message = cipher.decrypt(ciphertext)
print message
