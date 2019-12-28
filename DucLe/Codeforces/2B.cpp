#include <iostream>

using namespace std;
const int N = 1010;
const int mod = 100000;
int n, a[N][N], f[N][N] = {0}, traceUp[N][N];

int get2(int x) {
    int res = 0;
    while (x % 2 == 0) {
        res++;
        x /= 2;
    }
    return res;
}

int get5(int x) {
    int res = 0;
    while (x % 5 == 0) {
        res++;
        x /= 5;
    }
    return res;
}

void trace(int i, int j) {
    if (i == 1 && j == 1) return;
    if (traceUp[i][j]) {
        trace(i-1, j);
        cout << 'D';
    } else {
        trace(i, j-1);
        cout << 'R';
    }
}

int main() {
    cin >> n;
    for (int i=1; i<=n; ++i)
        for (int j=1; j<=n; ++j)
            cin >> a[i][j];
    for (int i=1; i<=n; ++i)
        f[i][0] = f[0][i] = 1e9 + mod - 1;
    f[0][1] = f[1][0] = 0;
    for (int i=1; i<=n; ++i)
        for (int j=1; j<=n; ++j) {
            if (a[i][j] == 0) {
                f[i][j] = 0;
            } else {
                int up2 = f[i-1][j] % mod + get2(a[i][j]);
                int up5 = f[i-1][j] / mod + get5(a[i][j]);
                int left2 = f[i][j-1] % mod + get2(a[i][j]);
                int left5 = f[i][j-1] / mod + get5(a[i][j]);
                if (min(left2, left5) == min(up2, up5)) {
                    if (max(left2, left5) < max(up2, up5)) {
                        f[i][j] = f[i][j-1] + get2(a[i][j]) + get5(a[i][j]) * mod;
                        traceUp[i][j] = 0;
                    } else {
                        f[i][j] = f[i-1][j] + get2(a[i][j]) + get5(a[i][j]) * mod;
                        traceUp[i][j] = 1;
                    }
                } else {
                    if (min(left2, left5) < min(up2, up5)) {
                        f[i][j] = f[i][j-1] + get2(a[i][j]) + get5(a[i][j]) * mod;
                        traceUp[i][j] = 0;
                    } else {
                        f[i][j] = f[i-1][j] + get2(a[i][j]) + get5(a[i][j]) * mod;
                        traceUp[i][j] = 1;
                    }
                }
                /* cout << i << ' ' << j << ' ' << f[i][j] << ' ' << traceUp[i][j] << endl; */
            }
        }
    if (f[n][n]) {
        cout << min(f[n][n] % mod, f[n][n] / mod) << endl;
    } else {
        cout << 1 << endl;
    }
    trace(n, n);
    return 0;
}
