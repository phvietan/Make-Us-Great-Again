#include <algorithm>
#include <cstdio>
#include <iostream>

using namespace std;

typedef long long ll;

ll n, m;

ll solveLe(ll n, ll m) {
    ll res = ((n+1)/2) * ((m+1)/3);
    if (m % 3 == 1) {
        res += (n+1)/3;
    }
    return res;
}

ll sc(ll n, ll m) {
    ll res = n / 2;
    if (m <= 3) return res;
    return res + solveLe(m-3, n);
}

ll solveChan(ll n, ll m) {
    return max(sc(n, m), sc(m, n));
}

int main() {
    freopen("input.txt", "r", stdin);
    freopen("output.txt", "w", stdout);
    cin >> n >> m;
    if ((n & 1) && (m & 1)) {
        cout << max(solveLe(n, m), solveLe(m, n)) << endl;
    }
    else if ((n & 1) || (m & 1)) {
        if (n & 1) cout << solveLe(n, m) << endl;
        else cout << solveLe(m, n) << endl;
    }
    else {
        cout << max(solveChan(n, m), solveChan(m, n)) << endl;
    }
    return 0;
}
