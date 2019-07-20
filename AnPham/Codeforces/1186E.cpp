#include <algorithm>
#include <cstring>
#include <iostream>
#include <cstdio>

using namespace std;

typedef long long ll;

const int N = 1005;

int n, m, q, F[N][N];
char a[N][N];

bool inside(int x, int y) {
    return x >= 1 && y >= 1;
}

void init() {
    for (int i = 1; i <= n; ++i)
    for (int j = 1; j <= m; ++j)
        F[i][j] = F[i-1][j] + F[i][j-1] - F[i-1][j-1] + a[i][j] - '0';
}

ll solveWholeLeft(int x, int y) {
    if (!inside(x, y)) return 0;
    int x2 = x % n, y2 = y % m;
    if (x2 == 0) x2 = n;
    if (y2 == 0) y2 = m;

    ll num1 = F[x2][y2];
    ll num0 = x2 * y2 - num1;

    int k = y / m;
    ll res =  num1 * ((k+1)/2) + num0 * (k/2);
    ll res2 = num0 * ((k+1)/2) + num1 * (k/2);

    k = (x-1) /n;
    if (k & 1) return res2;
    return res;
}

ll solveLeft(int x, int y) {
    if (!inside(x, y)) return 0;
    int x2 = x % n, y2 = y % m;
    if (x2 == 0) x2 = n;
    if (y2 == 0) y2 = m;

    int k = (x-1) / n + (y-1) / m;
    ll res = F[x2][y2];
    if (k & 1) res = x2*y2 - res;

    return res + solveWholeLeft(x, y - y2);
}

ll solveWholeUp(int x, int y) {
    if (!inside(x, y)) return 0;
    int x2 = x % n, y2 = y % m;
    if (x2 == 0) x2 = n;
    if (y2 == 0) y2 = m;

    ll num1 = F[x2][y2];
    ll num0 = x2 * y2 - num1;

    int k = x / n;
    ll res =  num1 * ((k+1)/2) + num0 * (k/2);
    ll res2 = num0 * ((k+1)/2) + num1 * (k/2);

    k = (y-1) / m;
    if (k & 1) return res2;
    return res;
}

ll solveUp(int x, int y) {
    if (!inside(x, y)) return 0;
    int x2 = x % n, y2 = y % m;
    if (x2 == 0) x2 = n;
    if (y2 == 0) y2 = m;

    int k = (x-1) / n + (y-1) / m;
    ll res = F[x2][y2];
    if (k & 1) res = x2*y2 - res;

    return res + solveWholeUp(x - x2, y);
}

ll solve(int x, int y) {
    if (!inside(x, y)) return 0;
    if (x % n == 0 && y % m == 0) {
        ll num1 = F[n][m], num0 = n*m - num1;
        int k = y / m;
        ll res = num1 * ((k+1)/2) + num0 * (k/2);
        num0 = (ll)n*m*k - res;

        k = x / n;
        res = res * ((k+1)/2) + num0 * (k/2);
        return res;
    }
    if (x % n != 0) {
        return solveLeft(x, y) + solve((x / n) * n, y);
    }
    if (y % m != 0) {
        return solveUp(x, y) + solve(x, (y/m)*m);
    }
}

int main() {
    freopen("input.txt", "r", stdin);
    scanf("%d%d%d\n",&n,&m,&q);
    for (int i = 1; i <= n; ++i)
        scanf("%s\n", a[i]+1);
    init();
    cout << solve(5, 3) << endl;
    while (q--) {
        int x1, y1, x2, y2;
        scanf("%d %d %d %d",&x1, &y1, &x2, &y2);
        cout << solve(x2, y2) - solve(x1-1, y2) - solve(x2, y1-1) + solve(x1-1, y1-1) << endl;
    }
    return 0;
}
