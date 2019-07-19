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

    // int q;
    // cin >> q;
    // while (q--) {
    //     ll n;
    //     cin >> n;
    //     FOR(i, 0, 26) {
    //         if ((1ll << i) - 1 > n) {
    //             cout << ((1ll << i) - 1) << endl;
    //             break;
    //         } else if ((1ll << i) - 1 == n) {
    //             break;
    //         }
    //     }
    // }

    FOR(k, 1, 20) {
        int t = (1 << k) - 1;
        int x = -1, g = -1;
        FOR(i, 1, t - 1) {
            if (__gcd(t & i, t | i) >= x) {
                x = __gcd(t & i, t | i);
                g = i;
            }
        }
        cout << bitset<16>(t) << " - " << bitset<16>(x) << endl;
        // cout << k << " - " << t << ": " << x << " ---  " << g << endl;
    }

    return 0;
}
