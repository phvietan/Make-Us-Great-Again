function primeLength(n) {
    let res = 0;
    let isPrime = {}
    for (let i = 1; i < n; i++) isPrime[i] = 1;
    isPrime[1] = 0;
    for (let i = 2; i < n; i++) {
        if (isPrime[i] == 0) continue;
        res += String(i).length;
        for (let j = i * i; j < n; j += i) isPrime[j] = 0;
    }
    return res;
}
