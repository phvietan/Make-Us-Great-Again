/**
 * http://codeforces.com/contest/1110/problem/A
 *
 * Difficulty   : dễ
 * Problem tags : math
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

int main() {

    int b, k, a, e = 0;
    cin >> b >> k;
    FOR(i, 1, k) {
        cin >> a;
        if (a % 2 && (i == k || (i < k && b % 2))) {
            e = 1 - e;
        }
    }

    cout << (e ? "odd" : "even") << endl;

    return 0;
}