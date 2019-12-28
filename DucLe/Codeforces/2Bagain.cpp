#include <iostream>

using namespace std;
const int N = 1010;
const int mod = 100000;
int n, a[N][N], f[N][N][2] = {0}, traceUp[N][N][2];

int get25(int x, int digit) {
    int res = 0;
    while (x % digit == 0) {
        res++;
        x /= digit;
    }
    return res;
}

int argmin2(int a, int b) {
    if (a > 1e9) return 1;
    if (b > 1e9) return 0;
    /* cout << a << ' ' << b << endl; */
    if (a % mod == b % mod) {
        return (a > b);
    }
    if (a % mod < b % mod) return 0;
    else return 1;
}

int argmin5(int a, int b) {
    if (a > 1e9) return 1;
    if (b > 1e9) return 0;
    if (a / mod == b / mod) {
        return (a > b);
    }
    if (a / mod < b / mod) return 0;
    else return 1;
}

void trace(int i, int j, int digit) {
    /* cout << i << ' '  << j << ' ' << endl; */
    if (i == 0 || j == 0) return;
    if (i == 1 && j == 1) return;
    if (traceUp[i][j][digit]) {
        trace(i-1, j, digit);
        cout << 'D';
    } else {
        trace(i, j-1, digit);
        cout << 'R';
    }
}

int main() {
    cin >> n;
    for (int i=1; i<=n; ++i)
        for (int j=1; j<=n; ++j)
            cin >> a[i][j];
    for (int i=1; i<=n; ++i)
        f[i][0][0] = f[0][i][0] = f[i][0][1] = f[0][i][1] = 1e9 + mod - 1;

    for (int i=1; i<=n; ++i)
    for (int j=1; j<=n; ++j) {
            if (a[i][j] == 0) {
                f[i][j][0] = f[i][j][1] = 0;
            } else if (i == 1 && j == 1) {
                f[i][j][0] = f[i][j][1] = get25(a[i][j], 2) + get25(a[i][j], 5) * mod;
            } else {
                traceUp[i][j][0] = argmin2(
                    (f[i][j-1][0] + get25(a[i][j], 2) + get25(a[i][j], 5) * mod),
                    (f[i-1][j][0] + get25(a[i][j], 2) + get25(a[i][j], 5) * mod)
                );
                /* if (i == 2 && j == 3) { */
                /*     cout << i << ' ' << j << ' '; */
                /*     cout << (f[i][j-1][0] + get25(a[i][j], 2) + get25(a[i][j], 5) * mod) << '-'; */
                /*     cout << (f[i-1][j][0] + get25(a[i][j], 2) + get25(a[i][j], 5) * mod) << '-'; */
                /*     cout << traceUp[i][j][0] << endl; */
                /* } */
                f[i][j][0] = traceUp[i][j][0] == 0 ? 
                    (f[i][j-1][0] + get25(a[i][j], 2) + get25(a[i][j], 5) * mod) : 
                    (f[i-1][j][0] + get25(a[i][j], 2) + get25(a[i][j], 5) * mod);

                traceUp[i][j][1] = argmin5(
                    (f[i][j-1][0] + get25(a[i][j], 2) + get25(a[i][j], 5) * mod),
                    (f[i-1][j][0] + get25(a[i][j], 2) + get25(a[i][j], 5) * mod)
                );
                f[i][j][1] = traceUp[i][j][1] == 0 ?
                    (f[i][j-1][0] + get25(a[i][j], 2) + get25(a[i][j], 5) * mod) :
                    (f[i-1][j][0] + get25(a[i][j], 2) + get25(a[i][j], 5) * mod);
                /* cout << traceUp[i][j][0] << ' ' << traceUp[i][j][1] << endl; */
            }
        }
    /* cout << f[2][2][0] << ' ' << f[2][2][1] << endl; */
    /* cout << f[1][3][0] << ' ' << f[1][3][1] << endl; */
    /* cout << traceUp[2][3][0] << ' ' << traceUp[2][3][1] << endl; */

    if (f[n][n][0] + f[n][n][1] == 0) {
        trace(n, n, 0);
    } else if (min(f[n][n][0] % mod, f[n][n][0] / mod) < min(f[n][n][1] % mod, f[n][n][1] / mod)) {
        cout << min(f[n][n][0] % mod, f[n][n][0] / mod) << endl;
        trace(n, n, 0);
    } else {
        cout << min(f[n][n][1] % mod, f[n][n][1] / mod) << endl;
        trace(n, n, 1);
    }
    return 0;
}
