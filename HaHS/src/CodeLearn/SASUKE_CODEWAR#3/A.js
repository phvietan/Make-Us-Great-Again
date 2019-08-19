function superLuckyNumber2(_n) {
    let s = String(_n);
    let n = s.length;

    if (n == 1) {
        return 47;
    }
    if (n == 2) {
        let t = parseInt(s);
        if (t <= 47) return 47;
        if (t <= 74) return 74;
        return 4477;
    }

    // odd length
    let t = Math.floor(n / 2);
    if (n % 2 == 1) {
        return '4'.repeat(t + 1) + '7'.repeat(t + 1);
    }

    // even length
    let i = 0;
    while (i < n && s[i] == '7') i++;
    if (s[i] > 7 || i > t) { // 77777.. || 778...
        // ==> 44447777
        return '4'.repeat(t + 1) + '7'.repeat(t + 1);
    }
    if (i == t) { // 7777....
        while (i < n && s[i] == '4') i++;
        if (i == n || s[i] < '4') { // 77774444 || 7777443.
            return '7'.repeat(t) + '4'.repeat(t);
        }
        // 7777448.
        return '4'.repeat(t + 1) + '7'.repeat(t + 1);
    }
    // 77......
    let u7 = t, u4 = t;
    let res = '7'.repeat(i);
    u7 -= i;
    while (i < n) {
        // console.log(i, s[i], res, u4, u7);
        if (s[i] < '4') {
            return res + '4'.repeat(u4) + '7'.repeat(u7);
        }
        if (s[i] == '4') {
            if (u4 > 0) {
                res += '4';
                u4--;
            } else {
                return res + '7'.repeat(u7);
            }
        } else if (s[i] < '7') {
            return res + '7' + '4'.repeat(u4) + '7'.repeat(u7 - 1);
        } else if (s[i] == '7') {
            res += '7';
            u7--;
        } else {
            let j = res.length - 1;
            while (j >= 0 && res[j] == '7') {
                j--;
                u7++;
            }
            if (j == -1) {
                res = ''; u4 = t; u7 = t;
            } else {
                u4++;
                res = res.substring(0, j);
            }
            return res + '7' + '4'.repeat(u4) + '7'.repeat(u7 - 1);
        }
        i++;
    }
    return res;
}