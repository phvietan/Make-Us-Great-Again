function primeXor(a, b) {
    let isPrime = {}
    const n = Math.max(a, b);
    for (let i = 1; i <= n; i++) isPrime[i] = 1;
    let res = 1;
    for (let i = 2; i <= n; i++) {
        if (isPrime[i] == 0) continue;
        for (let j = i * i; j <= n; j += i) isPrime[j] = 0;
        let u = a % i;
        let v = b % i;
        if (u * v == 0 && u + v > 0) res *= i;
    }
    return res;
}
