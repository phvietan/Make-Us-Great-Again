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

// #define debug 1

const int M = 1e9 + 7;
const int N = 1005;
ll f[N], h[N];

ll power(ll x, int n) {
    if (n == 0)
        return 1ll;
    ll t = power(x, n / 2);
    if (n % 2)
        return t * t % M * x % M;
    return t * t % M;
}

long long legoWall(int n, int m) {

    FOR(i, 1, n) f[0] = 1ll;
    FOR(j, 1, m) {
        f[j] = 0ll;
        FOR(k, 1, 4) {
            if (j >= k) {
                f[j] = (f[j] + f[j - k]) % M;
                h[j] = f[j];
            }
        }
    }

    FOR(j, 1, m) {
        h[j] = power(h[j], n) % M;
        f[j] = h[j];
        FOR(k, 1, j - 1) {
            f[j] = (f[j] - h[k] * f[j - k] % M + M) % M;
        }
    }

    return f[m];
}

#ifdef debug
int main() {

    cout << legoWall(3, 2) << endl;
    cout << legoWall(2, 3) << endl;

    EL;
    return 0;
}
#endif