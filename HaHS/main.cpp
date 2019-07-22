#include <bits/stdc++.h>

using namespace std;

typedef long long ll;
typedef pair<int, int> ii;
typedef unsigned long long ull;

#define X first
#define Y second
#define pb push_back
#define EL printf("\n")
#define sz(A) (int)A.size()
#define FOR(i, l, r) for (int i = l; i <= r; i++)
#define FOD(i, r, l) for (int i = r; i >= l; i--)
#define faster                                                                 \
    ios_base::sync_with_stdio(false);                                          \
    cin.tie(NULL);                                                             \
    cout.tie(NULL);

const int N = 3e5 + 5;
int n, m, k, a[N], g[N];
ll f[N], s[N];

ll calc(int l, int m, int r, int k) {
    int i = m, j = m;
    ll res = (ll)a[m];
    while (j - i + 1 < k) {
        if (i == l)
            res += a[++j];
        else if (j == r)
            res += a[--i];
        else if (a[i - 1] > a[j + 1]) {
            res += a[--i];
        } else {
            res += a[++j];
        }
    }
    return res;
}

ll sum(int l, int r, int k) {
    if (r - l + 1 < k)
        return 0ll;
    if (r - l + 1 == k)
        return f[r] - f[l - 1];
    int m = (l + r) >> 1;
    return max(max(sum(l, m - 1, k), sum(m + 1, r, k)), calc(l, m, r, k));
}

int main() {

    int t;
    cin >> t;
    while (t--) {
        cin >> n >> m >> k;
        FOR(i, 1, n) cin >> a[i];

        f[0] = 0ll;
        FOR(i, 1, n) f[i] = f[i - 1] + a[i];

        ll res = 0ll;

        FOR(l, 1, n) {
            ll t = sum(1, n, l);
            res = max(res, t - k * (int)ceil(l * 1.0 / m));
        }

        cout << res << endl;
        // cout << endl;
    }

    return 0;
}