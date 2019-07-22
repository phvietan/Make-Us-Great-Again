/**
 * Difficulty   : dễ
 * Problem tags : none
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
int n, a[N], b[N];

int main() {

    faster;

    cin >> n;
    FOR(i, 1, n) cin >> a[i];
    FOR(i, 1, n) cin >> b[i];

    ll sum = 0ll;
    FOR(i, 1, n) sum += b[i];

    ll res = sum - b[1] + a[1];
    FOR(i, 2, n) res = max(res, sum - b[i] + a[i]);

    cout << res << endl;

    return 0;
}
