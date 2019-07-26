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

typedef vector<int> data;

const int N = 3e4 + 5;
int n, q, a[N];
data t[N << 2], nil;

data combine(data u, data v, int lim) {
    data p;
    int i = 0, j = 0;
    while (p.size() < lim && (i < sz(u) || j < sz(v))) {
        if (i == sz(u))
            p.push_back(v[j++]);
        else if (j == sz(v))
            p.push_back(u[i++]);
        else if (u[i] < v[j])
            p.push_back(u[i++]);
        else
            p.push_back(v[j++]);
    }
    return p;
}

void build(int k, int l, int r) {
    if (l == r) {
        t[k].push_back(a[l]);
        return;
    }
    int m = (l + r) >> 1;
    build(k * 2, l, m);
    build(k * 2 + 1, m + 1, r);
    t[k] = combine(t[k * 2], t[k * 2 + 1], 1e5);
}

void update(int k, int l, int r, int i, int v) {
    if (i < l || r < i)
        return;
    if (l == r) {
        t[k].pop_back();
        t[k].push_back(v);
        return;
    }
    int m = (l + r) >> 1;
    update(k * 2, l, m, i, v);
    update(k * 2 + 1, m + 1, r, i, v);
    t[k] = combine(t[k * 2], t[k * 2 + 1], 1e5);
}

data get(int k, int l, int r, int L, int R, int K) {
    if (R < l || r < L)
        return nil;
    if (L <= l && r <= R) {
        return combine(t[k], nil, K);
    }
    int m = (l + r) >> 1;
    data tl = get(k * 2, l, m, L, R, K);
    data tr = get(k * 2 + 1, m + 1, r, L, R, K);
    return combine(tl, tr, K);
}

int main() {

    cin >> n >> q;
    FOR(i, 1, n) cin >> a[i];

    build(1, 1, n);

    while (q--) {
        int t;
        cin >> t;
        if (t == 1) {
            int i, v;
            cin >> i >> v;
            update(1, 1, n, i, v);
        } else {
            int l, r, k;
            cin >> l >> r >> k;
            data a = get(1, 1, n, l, r, k);
            ll res = 0ll;
            for (int x : a)
                res += x;
            cout << res << endl;
        }
    }

    return 0;
}