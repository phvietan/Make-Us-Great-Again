/**
 * http://codeforces.com/contest/1119/problem/B
 *
 * Difficulty   : easy
 * Problem tags : binary search, greedy, sortings
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

const int N = 1e3 + 5;
int n, h, a[N];

ll minHeight(int k) {
    vector<int> p;
    FOR(i, 1, k) p.push_back(a[i]);
    sort(p.begin(), p.end(), greater<>());
    ll res = 0ll;
    FOR(i, 0, sz(p) - 1) {
        if (i % 2 == 0)
            res += p[i];
    }
    return res;
}

int main() {

    cin >> n >> h;
    FOR(i, 1, n) cin >> a[i];

    int l = 1, r = n, x = -1;
    while (l <= r) {
        int m = (l + r) >> 1;
        ll p = minHeight(m);
        if (p > h) {
            r = m - 1;
        } else {
            l = m + 1;
            x = m;
        }
    }

    cout << x << endl;

    return 0;
}
