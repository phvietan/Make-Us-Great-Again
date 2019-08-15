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

#define debug 1

int sumSquares(long long k) {
    int res = 0;
    ll p = sqrt(k);
    if (p * p == k)
        res++;
    // cout << p << endl;
    ll l = max(1ll, (ll)floor(sqrt(k * 1.0 / 2)));
    ll r = (ll)ceil(sqrt(k));
    // cout << l << " " << r << endl;
    for (ll i = l; i <= r; i++) {
        ll x = i * i;
        ll y = k - x;
        if (y <= 0 || y > x)
            continue;
        ll g = sqrt(y);
        if (g * g == y)
            res += 2;
        // cout << x << " " << y << " " << g << " " << (g * g == y) << endl;
    }
    return res;
}

#ifdef debug
int main() {

    // cout << sumSquares(65);

    // EL;
    // FOR(i, 1, 100000) {
    //     int res = sumSquares(i);
    //     if (res == 0) {
    //         printf("%4d = %15d\n", i, res);
    //     } else if (res % 2) {
    //         printf("%4d = %10d\n", i, res);
    //     } else {
    //         printf("%4d = %5d\n", i, res);
    //     }
    // }
    // EL;

    // FOR(i, 1, 50) cout << i << " " << i * i << endl;

    // ll k = 1ll << 50;
    // cout << sqrt(k) << " " << sqrt(k / 2) << endl;
    // cout << sqrt(k) - sqrt(k / 2);

    // EL;
    // FOR(i, 1, 80) printf("%3d ^ 2 = %7d\n", i, i * i);
    // EL;
    // FOR(i, 1, 20) FOR(j, i, 20) {
    //     printf("%3d^2 + %3d^2 = %3d + %3d = %7d\n", i, j, i * i, j * j,
    //            i * i + j * j);
    // }

    EL;
    return 0;
}
#endif