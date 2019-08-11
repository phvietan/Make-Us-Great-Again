/**
 * https://codeforces.com/contest/1200/problem/B
 *
 * Difficulty   : easy
 * Problem tags : greedy
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
#define faster ios_base::sync_with_stdio(false) && cin.tie(NULL)

const int N = 1e5 + 5;
int n, m, k, a[105];

void solve() {
    cin >> n >> m >> k;
    FOR(i, 1, n) cin >> a[i];
    FOR(i, 1, n - 1) {
        if (a[i] >= a[i + 1]) {
            int h = max(0, a[i + 1] - k);
            m += max(0, a[i] - h);
        } else if (a[i + 1] - a[i] <= k) {
            int h = max(0, a[i + 1] - k);
            m += max(0, a[i] - h);
        } else {
            if (a[i + 1] - (a[i] + m) > k) {
                cout << "NO\n";
                return;
            }
            int h = max(0, a[i + 1] - k);
            m -= h - a[i];
        }
    }
    cout << "YES\n";
}

int main() {
    faster;
    int t;
    cin >> t;
    while (t--) solve();
    return 0;
}