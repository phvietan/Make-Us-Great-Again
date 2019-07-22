let test = 10;
let s = test + '\n';
for (let i = 0; i < test; i++) {
    let n = 10000;
    let m = Math.floor(Math.random() * 9) + 1;
    let k = Math.floor(Math.random() * 999999999) + 1;
    s += n + ' ' + m + ' ' + k + '\n';
    for (let i = 0; i < n; i++) {
        s += Math.floor(Math.random() * 999999999 * 2) - 999999999 + ' ';
    }
    s += '\n';
}

require('fs').writeFileSync(require('path').join(__dirname, 'test.txt'), s);