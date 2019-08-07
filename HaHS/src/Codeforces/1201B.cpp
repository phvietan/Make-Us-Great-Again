/**
 * http://codeforces.com/contest/1201/problem/B
 *
 * Difficulty   : easy
 * Problem tags : implementation
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

const int N = 1e5 + 5;
int n, a[N];
ll s;

int main() {

    cin >> n;
    FOR(i, 1, n) {
        cin >> a[i];
        s += (ll)a[i];
    }

    if (s % 2) {
        return puts("NO");
    }

    s /= 2;
    FOR(i, 1, n) if (a[i] > s) return puts("NO");

    puts("YES");

    return 0;
}
