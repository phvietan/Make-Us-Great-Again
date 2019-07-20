/**
 * http://codeforces.com/contest/1110/problem/E
 *
 * Difficulty   : medium
 * Problem tags : math
 *
 * Tutorial: Nhận xét khi thực hiện đổi c[i], hiệu (c[i+1]-c[i]) với
 * (c[i]-c[i-1]) swap cho nhau. Nên sau các phép biến đổi, tập hiệu các phần tử
 * kề nhau là không đổi
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

    if (a[1] != b[1] || a[n] != b[n]) {
        cout << "No\n";
        return 0;
    }

    multiset<int> diffA, diffB;
    FOR(i, 1, n - 1) {
        diffA.insert(a[i + 1] - a[i]);
        diffB.insert(b[i + 1] - b[i]);
    }

    if (diffA == diffB) {
        cout << "Yes\n";
    } else {
        cout << "No\n";
    }

    return 0;
}
