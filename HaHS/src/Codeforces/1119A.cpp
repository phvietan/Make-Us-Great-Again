/**
 * http://codeforces.com/contest/1119/problem/A
 *
 * Difficulty   : easy
 * Problem tags : greedy
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

const int N = 3e5 + 5;
int n;
vector<int> a[N];

int main() {

    cin >> n;
    FOR(i, 1, n) {
        int j;
        cin >> j;
        a[j].push_back(i);
    }

    int res = 0;
    FOR(i, 1, n) {
        int l = sz(a[i]);
        if (l == 0)
            continue;
        if (l == 1) {
            res = max(res, max(n - a[i][0], a[i][0] - 1));
            continue;
        }
        int j = l - 1;
        int k = n;
        while (j > 0 && a[i][j] == k) {
            j--;
            k--;
        }
        if (j > 0) {
            res = max(res, k - a[i][0]);
        }
    }

    cout << res << endl;

    return 0;
}
