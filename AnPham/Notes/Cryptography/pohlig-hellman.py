from math import sqrt, ceil
import sys

def PrimeFactorization(p):
    """Find all prime factors of the number p"""
    d, primeFactors = 2, []
    while d*d <= p:
        while (p % d) == 0:
            primeFactors.append(d)
            p //= d
        d += 1
    if p > 1:
       primeFactors.append(p)
    return primeFactors

def CountOccurences(primeFactors):
    """Count occurances of each prime factor"""
    return [[x, primeFactors.count(x)] for x in set(primeFactors)]

def ExtendedGCD(a, b):
    """Extended Euclidian algorithm for finding GCD"""
    a2, a1 = 1, 0
    b2, b1 = 0, 1
    while b:
        q, r = divmod(a, b)
        a1, a2 = a2 - q * a1, a1
        b1, b2 = b2 - q * b1, b1
        a, b = b, r
    return a, a2, b2

def ModularInverse(b, n):
    """Return x s.t. x = a^(-1) (mod n)"""
    g, x, _ = ExtendedGCD(b, n)
    if g == 1:
        return x % n

def ChineseRemainder(pairs):
    """Chinese remainder theorem for solving a system of congruences"""
    N, X = pairs[0][1], 0
    for ni in pairs[1:]:
        N *= ni[1]
    for (ai, ni) in pairs:
        mi = (N / ni)
        X += mi * ai * ExtendedGCD(mi, ni)[1]
    return X % N

def ShanksAlgorithm(alpha, beta, n):
    """Return x s.t. beta = alpha^(x) (mod n)"""
    m = int(ceil(sqrt(n - 1)))
    a = pow(alpha, m, n)
    b = ExtendedGCD(alpha, n)[1]
    L1 = [(j, pow(a, j, n)) for j in xrange(0, m)]
    L2 = [(i, beta * (b ** i) % n) for i in xrange(0, m)]
    L1.sort(key = lambda tup: tup[1])
    L2.sort(key = lambda tup: tup[1])
    i, j, Found = 0, 0, False
    while (not Found) and (i < m) and (j < m):
        if L1[j][1] == L2[i][1]:
            return m * L1[j][0] + L2[i][0] % n
        elif abs(L1[j][1]) > abs(L2[i][1]):
            i = i + 1
        else:
            j = j + 1

def CongruencePair(g, h, p, q, e, e1, e2):
    """Return pair (x, q ** e) which represents one congruence"""
    alphaInverse = ModularInverse(e1, p)
    x = 0 # x = x_{0} + x_{1} * q + x_{2} * q^{2} + ... + x_{e - 1} * q^{e - 1}
    for i in xrange(1, e + 1):
        a = pow(e1, q ** (e - 1), p)
        b = pow(e2 * (alphaInverse ** x), q ** (e - i), p)
        x += ShanksAlgorithm(a, b, p) * (q ** (i - 1))
    return (x, q ** e)

def PrintFormated(arg1, arg2, arg3, arg4, arg5):
    print " {:2s} | {:2s} | {:13s} | {:13s} | {:45s}".format(str(arg1), str(arg2), str(arg3), str(arg4), str(arg5))
    print("-"*50)

def PohlingHellman(g, h, p):
    """Main function of Pohling-Hellman's algorithm"""

    CountOccurencesList = CountOccurences(PrimeFactorization(p - 1))
    print "\nFor q, the factors of (p-1) are:",PrimeFactorization(p - 1)
    print "For factors, [q,e] prime, counts:",CountOccurencesList
    CongruenceList = []

    print("\n")

    PrintFormated("q", "e", "g^((p-1)/q^e)", "h^((p-1)/q^e)", "(g^((p-1)/q^e))^x = h^((p-1)/q^e)")

    for i in xrange(len(CountOccurencesList)):
        e1 = (g ** ((p - 1) / (CountOccurencesList[i][0] ** CountOccurencesList[i][1]))) % p # e1 = g^((p-1)/q^e)
        e2 = (h ** ((p - 1) / (CountOccurencesList[i][0] ** CountOccurencesList[i][1]))) % p # e2 = h^((p-1)/q^e)
        # Add new congruence
        CongruenceList.append(CongruencePair(g, h, p, CountOccurencesList[i][0], CountOccurencesList[i][1], e1, e2))
        e3 = CongruenceList[len(CongruenceList) - 1][0] % CongruenceList[len(CongruenceList) - 1][1] # e3 = (g^((p-1)/q^e))^x
        e4 = CongruenceList[len(CongruenceList) - 1][1] # e4 = h^((p-1)/q^e)
        PrintFormated(CountOccurencesList[i][0], CountOccurencesList[i][1], e1, e2, "x = %2d (mod %2d)" % (e3, e4))

    # Solve the system of congruences
    x = ChineseRemainder(CongruenceList)
    return x


g=5
h=22
p=43

print "h=",h
print "g=",g
print "p=",p
print("Solving %d = %d^x (mod %d)" % (h, g, p))

x = PohlingHellman(g, h, p)
print "Solution x =", x

print "Checking h =", pow(g, x, p)
