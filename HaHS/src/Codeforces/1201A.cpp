/**
 * http://codeforces.com/contest/1201/problem/A
 *
 * Difficulty   : easy
 * Problem tags : implementation, counting
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

int main() {

    ios::sync_with_stdio(0);
    cin.tie(0);
    cout.tie(0);

    int n, m;
    cin >> n >> m;
    int cnt[m + 1][5];
    FOR(j, 1, m) FOR(k, 0, 4) cnt[j][k] = 0;
    FOR(i, 1, n) {
        string s;
        cin >> s;
        FOR(j, 1, m) cnt[j][s[j - 1] - 'A']++;
    }

    int res = 0;
    FOR(j, 1, m) {
        int x;
        cin >> x;
        int t = cnt[j][0];
        FOR(k, 0, 4) t = max(t, cnt[j][k]);
        res += x * t;
    }

    cout << res << endl;

    return 0;
}
