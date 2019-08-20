function countNumber(x) {
    const parse = (x) => {
        let res = {};
        while (x > 0) {
            res[x % 10] = 1
            x = Math.floor(x / 10);
        }
        return res;
    }

    let s = parse(x);

    const check = (x) => {
        while (x > 0) {
            if (s[x % 10] == 1) return true;
            x = Math.floor(x / 10);
        }
        return false;
    }

    let res = 0;
    for (let i = 1; i * i <= x; i++) {
        if (x % i != 0) continue;
        if (check(i)) res++;
        let j = Math.round(x / i);
        if (j != i && check(j)) res++;
    }
    return res;
}