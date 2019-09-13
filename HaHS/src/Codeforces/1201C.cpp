/**
 * http://codeforces.com/contest/1201/problem/C
 *
 * Difficulty   : easy
 * Problem tags : sorting, greedy, binary search
 */

#include <bits/stdc++.h>

using namespace std;

typedef long long ll;
typedef vector<int> vi;
typedef pair<int, int> ii;

#define EL printf("\n")
#define sz(A) (int)A.size()
#define FOR(i, l, r) for (int i = l; i <= r; i++)
#define FOD(i, r, l) for (int i = r; i >= l; i--)

const int N = 2e5 + 10;
int n, k;
ll a[N];

int main() {

    cin >> n >> k;
    FOR(i, 1, n) { cin >> a[i]; }

    sort(a + 1, a + n + 1);

    int m = n / 2 + 1;
    int l = m;
    ll res = a[l];
    a[n + 1] = 1e12;
    while (k >= l - m + 1 && l <= n) {
        while (l <= n && a[l + 1] == a[l])
            l++;
        int t = l - m + 1;
        ll m = a[l + 1] - a[l];
        ll q = min(m, (ll)k / t);
        k -= t * q;
        res = a[l] + q;
        l++;
    }

    cout << res << endl;

    return 0;
}
