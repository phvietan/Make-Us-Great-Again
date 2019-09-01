// let rand = (b) => Math.ceil(Math.random() * b);
let rand = (b) => Math.ceil(Math.random() * b) - 1000;
let b = 2000;
let n = 100;
let s = '';
// for (let i = 1; i <= 4; i++) s += rand(b) + ' ' + 1 + '\n';
// for (let i = 1; i <= 8; i++) s += rand(b) + ' ' + 2 + '\n';
// for (let i = 1; i <= 2; i++) s += rand(b) + ' ' + 3 + '\n';
// for (let i = 1; i <= 6; i++) s += rand(b) + ' ' + 4 + '\n';
// for (let i = 1; i <= 3; i++) s += rand(b) + ' ' + 5 + '\n';
// for (let i = 1; i <= 9; i++) s += rand(b) + ' ' + 6 + '\n';
// for (let i = 1; i <= 3; i++) s += rand(b) + ' ' + 7 + '\n';
// for (let i = 1; i <= n - 4 - 8 - 2 - 6 - 3 - 9 - 3; i++) s += rand(b) + ' ' + 8 + '\n';
for (let i = 1; i <= n; i++) s += rand(b) + ' ' + rand(b) + '\n';
// for (let i = 1; i <= n; i++) s += 198 + ' ';

console.log(n);
console.log(s);