/**
 * http://codeforces.com/contest/1197/problem/A
 *
 * Difficulty   : easy
 * Problem tags : math, greedy
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

const int N = 1e5 + 5;
int n, a[N];

void solve() {
    cin >> n;
    FOR(i, 1, n) cin >> a[i];

    sort(a + 1, a + n + 1);
    int h = a[n - 1];
    int k = min(n - 2, h - 1);

    cout << k << endl;
}

int main() {

    int T;
    cin >> T;
    while (T--) {
        solve();
    }

    return 0;
}