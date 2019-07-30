/**
 * Difficulty   : hard
 * Problem tags : segment tree
 *
 * Tutorial: mỗi node trên segment tree lưu lại top 50 phần tử min, mỗi truy vấn
 * get, tìm ra top K phần tử nhỏ nhất, dùng merge các array dài 50 phần tử lại,
 * do đó ĐPT cho truy vấn này là KlogN (logN cho độ cao của cây, K cho chiều
 * dài của mỗi array trong mỗi node)
 *
 * Với truy vấn update, cũng tương tự, chỉ update tối đa logN node, mỗi node cần
 * merge tốn K
 *
 * Lưu ý truy vấn 1 là tăng phần tử a[i] chứ ko phải là set lại a[i]
 */

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

typedef vector<ll> node;

const int N = 3e4 + 5;
const int maxK = 50;
int n, q;
ll a[N];
node t[N * 4], nil;

node combine(node u, node v, int lim) {
    node p;
    int i = 0, j = 0;
    while (sz(p) < lim && (i < sz(u) || j < sz(v))) {
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
    t[k] = combine(t[k * 2], t[k * 2 + 1], maxK);
}

void update(int k, int l, int r, int i) {
    if (i < l || r < i)
        return;
    if (l == r) {
        t[k].clear();
        t[k].push_back(a[i]);
        return;
    }
    int m = (l + r) >> 1;
    update(k * 2, l, m, i);
    update(k * 2 + 1, m + 1, r, i);
    t[k] = combine(t[k * 2], t[k * 2 + 1], maxK);
}

node get(int k, int l, int r, int L, int R, int K) {
    if (R < l || r < L)
        return nil;
    if (L <= l && r <= R) {
        // return top K minimum elements
        return combine(t[k], nil, K);
    }
    int m = (l + r) >> 1;
    node tl = get(k * 2, l, m, L, R, K);
    node tr = get(k * 2 + 1, m + 1, r, L, R, K);
    return combine(tl, tr, K);
}

int main() {

    faster;
    cin >> n >> q;
    FOR(i, 1, n) cin >> a[i];

    build(1, 1, n);

    while (q--) {
        int t;
        cin >> t;
        if (t == 1) {
            int i, v;
            cin >> i >> v;
            a[i] += (ll)v;
            update(1, 1, n, i);
        } else if (t == 2) {
            int l, r, k;
            cin >> l >> r >> k;
            node p = get(1, 1, n, l, r, k);
            ll res = 0ll;
            for (ll x : p)
                res += x;
            cout << res << endl;
        }
    }

    return 0;
}