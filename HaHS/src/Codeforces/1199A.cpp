/**
 * http://codeforces.com/contest/1199/problem/A
 *
 * Difficulty   : easy
 * Problem tags : implementation
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
int n, x, y, a[N];

int main() {

    cin >> n >> x >> y;
    FOR(i, 1, n) cin >> a[i];

    FOR(i, 1, n) {
        int l = max(1, i - x);
        int r = min(n, i + y);
        bool ok = true;
        FOR(j, l, r) {
            if (a[i] >= a[j] && i != j)
                ok = false;
        }
        if (ok) {
            cout << i << endl;
            return 0;
        }
    }

    return 0;
}