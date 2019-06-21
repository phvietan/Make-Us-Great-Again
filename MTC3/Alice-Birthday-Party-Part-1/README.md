# [Problem](https://www.mysterytwisterc3.org/en/challenges/level-2/alices-birthday-party-part-1)

We have:

c1 = m^e1

c2 = m^e2

What if we power c1 and c2 up by a and b:

c1^a = (m^e1)^a = m^(e1*a)

c2^b = (m^e2)^b = m^(e2*b)

<=> c1^a * c2^b = m^(e1 * a) * m^(e2 * b) = m^(e1 * a + e2 * b)

We see that gcd(e1, e2) = 1 so there exist a, b so that e1 * a + e2 * b = 1. => We can find m^1.
