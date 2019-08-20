#include <bits/stdc++.h>

using namespace std;

typedef long long ll;
typedef vector<int> vi;
typedef pair<int, int> ii;

#define EL printf("\n")
#define sz(A) (int)A.size()
#define FOR(i, l, r) for (int i = l; i <= r; i++)
#define FOD(i, r, l) for (int i = r; i >= l; i--)
#define faster ios_base::sync_with_stdio(false) && cin.tie(NULL)

// #define debug 1

int n, a[10], x[10], y[10], z[10], T;

void handle(int &t, int &x, int &y, int &z) {
    if (x >= y + z) {
        t += x;
        x = y = z = 0;
    }
}

bool check_n_eq_2() {
    int t = 0;
    int u1 = x[1], u2 = y[1], u3 = z[1];
    int v1 = x[2], v2 = y[2], v3 = z[2];
    handle(t, u1, v2, v3);
    handle(t, u2, v1, v3);
    handle(t, u3, v2, v1);
    handle(t, v1, u2, u3);
    handle(t, v2, u2, u3);
    handle(t, v3, u2, u1);
    t += max(u1 + u2 + u3, v1 + v2 + v3);
    return t <= T;
}

bool dfs(int i) {
    if (x[0] < 0 || y[0] < 0 || z[0] < 0) {
        return false;
    }
    if (i == n + 1) {
#ifdef debug
        FOR(j, 1, n) printf("%d: %d_9 %d_3 %d_1\n", j, x[j], y[j], z[j]);
#endif
        if (n == 1) {
            return x[1] + y[1] + z[1] <= T;
        }
        if (n == 2) {
            return check_n_eq_2();
        }
        return true;
    }
    if (x[0] * 9 + y[0] * 3 + z[0] < a[0]) {
        return false;
    }
    int sum = a[i];
    int nx = (sum + 8) / 9;
    nx = min(nx, x[0]);
    for (; nx >= 0; nx--) {
        x[i] = nx;
        x[0] -= x[i];
        sum -= x[i] * 9;
        int ny = (sum + 2) / 3;
        if (sum <= 0)
            ny = 0;
        ny = min(ny, y[0]);
        for (; ny >= 0; ny--) {
            y[i] = ny;
            y[0] -= y[i];
            sum -= y[i] * 3;
            z[i] = max(0, sum);
            z[0] -= z[i];
            a[0] -= a[i];
            int ok = dfs(i + 1);
            if (ok)
                return true;
            a[0] += a[i];
            z[0] += z[i];
            y[0] += y[i];
            sum += y[i] * 3;
        }
        sum += x[i] * 9;
        x[0] += x[i];
    }
    return false;
}

bool ok(int t) {
#ifdef debug
    cout << t << endl;
#endif
    T = x[0] = y[0] = z[0] = t;
    return dfs(1);
}

int solve() {
    a[0] = 0;
    FOR(i, 1, n) a[0] += a[i];
    int minS = a[0] / 13;
    int l = minS, r = 41, x = 42;
    while (l <= r) {
        int m = (l + r) >> 1;
        if (ok(m)) {
            x = m;
            r = m - 1;
        } else {
            l = m + 1;
        }
    }
    // cout << x << endl;
    return x;
}

int mutaliskAttack(std::vector<int> scvs) {
    n = sz(scvs);
    sort(scvs.begin(), scvs.end(), greater<int>());
    FOR(i, 0, n - 1) a[i + 1] = scvs[i];

    return solve();
}

#ifdef debug
int main() {

    // mutaliskAttack(vi({54}));
    // mutaliskAttack(vi({60, 60}));
    // mutaliskAttack(vi({60, 60, 20}));
    // mutaliskAttack(vi({44, 35, 12, 59, 47, 14, 31, 6, 22}));
    mutaliskAttack(vi({60, 60, 60, 60, 60, 60, 60, 60, 60}));

    EL;
    return 0;
}
#endif