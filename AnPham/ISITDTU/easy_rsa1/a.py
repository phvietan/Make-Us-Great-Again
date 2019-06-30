
#!/usr/bin/env python
import gmpy2

N = 137709853388874260067664060306224801065880567280896538344708662296491187670268243771581008615887329285442080267493172576517227603581814922784005894668293664250883858847270414696279127204843462302026428548409668060539273696154323753582118715764251826181439387752900169898505518594134423187783089073450520527969

def fermat_factor(n):
    assert n % 2 != 0

    a = gmpy2.isqrt(n)
    b2 = gmpy2.square(a) - n

    while not gmpy2.is_square(b2):
        a += 1
        b2 = gmpy2.square(a) - n

    p = a + gmpy2.isqrt(b2)
    q = a - gmpy2.isqrt(b2)

    return int(p), int(q)

if __name__ == "__main__":
    (p, q) = fermat_factor(N)

    print("p = {}".format(p))
    print("q = {}".format(q))
