function discount(p, q) {
    let lastDigit = p % 10;
    let minQ = (lastDigit + 1) % 10;
    if (q < minQ) return p;

    let l = p - q, r = p;
    let s = r + '';
    let t = s.length;

    if (s == '9'.repeat(t)) {
        return s;
    }

    for (let i = t - 1; i > 0; i--) {
        let suff = '9'.repeat(i);
        let remain = t - i;
        let pref = s.substr(0, remain - 1);
        let x = pref + (s.charAt(remain - 1) - 1) + suff;
        let w = parseInt(x);
        if (l <= w && w <= r) return w;
    }
    return r;
}
