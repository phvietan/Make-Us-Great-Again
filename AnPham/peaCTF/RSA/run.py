# Python 2.7
def chinese_remainder(n, a):
    sum = 0
    prod = reduce(lambda a, b: a*b, n)

    for n_i, a_i in zip(n, a):
        p = prod / n_i
        sum += a_i * mul_inv(p, n_i) * p
    return sum % prod


def mul_inv(a, b):
    b0 = b
    x0, x1 = 0, 1
    if b == 1: return 1
    while a > 1:
        q = a / b
        a, b = b, a%b
        x0, x1 = x1 - q * x0, x0
    if x1 < 0: x1 += b0
    return x1

if __name__ == '__main__':
    n = [59883006898206291499785811163190956754007806709157091648869, 165481207658568424313022356820498512502867488746572300093793]
    a = [23731413167627600089782741107678182917228038671345300608183, 150635433712900935381157860417761227624682377134647578768653]
    m = chinese_remainder(n, a)
    print(m % n[0])
    print(a[0])
    print('---')
    print(m % n[1])
    print(a[1])
