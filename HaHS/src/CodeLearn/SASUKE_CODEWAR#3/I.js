function maxXOR(l, r) {
    let res = l ^ r;
    for (let a = l; a <= r; a++) {
        for (let b = a; b <= r; b++) {
            res = Math.max(res, a ^ b);
        }
    }
    return res;
}
