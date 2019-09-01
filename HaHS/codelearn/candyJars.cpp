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

#define debug 1

const ll mod = 1e9 + 7;
const int N = 1e5 + 5;
int n, a[N];
ll L, R, s[N], f[N], q[N];

int divideCandyJars(int n, long long L, long long R, std::vector<int> _a) {
    FOR(i, 1, n) a[i] = _a[i - 1];
    FOR(i, 1, n) s[i] = s[i - 1] + (ll)a[i];
    f[0] = 1;
    q[0] = 1;
    FOR(j, 1, n) {
        int l = 1, r = j, i1 = -1, i2 = -1;
        while (l <= r) {
            int m = (l + r) >> 1;
            if (s[j] - s[m - 1] >= L) {
                l = m + 1;
                i2 = m;
            } else {
                r = m - 1;
            }
        }
        l = 1;
        r = j;
        while (l <= r) {
            int m = (l + r) >> 1;
            if (s[j] - s[m - 1] <= R) {
                r = m - 1;
                i1 = m;
            } else {
                l = m + 1;
            }
        }
        if (i1 != -1 && i2 != -1) {
            f[j] = (q[i2 - 1] - q[i1 - 2] + mod) % mod;
        } else
            f[j] = 0ll;
        q[j] = (q[j - 1] + f[j]) % mod;
    }
    return f[n];
}

#ifdef debug
int main() {

    cout << divideCandyJars(16, 500000000, 1000000000,
                            vi{8384512, 15465365, 12311231, 56654754, 12365454,
                               52434545, 13565735, 13543624, 54653546, 95462452,
                               34526544, 56353634});

    EL;
    return 0;
}
#endif
