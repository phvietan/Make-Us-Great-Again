const rand = (b) => {
    return Math.ceil(Math.random() * b);
}

let n = 10000;
let mp = {};
let s = "";
for (let i = 1; i <= n; i++) {
    while (true) {
        u = rand(100000);
        if (!mp[u]) {
            s += u + ' ';
            mp[u] = 1;
            break;
        }
    }
}

console.log(n, rand(10000));
console.log(s);