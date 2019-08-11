/**
 * https://codeforces.com/contest/1200/problem/C
 *
 * Difficulty   : medium
 * Problem tags : math, number theory
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
#define faster ios_base::sync_with_stdio(false) && cin.tie(NULL)

const int N = 1e5 + 5;
ll n, m, q, a, b, c, d;

ll gcd(ll a, ll b) {
    if (b == 0)
        return a;
    return gcd(b, a % b);
}

int main() {
    cin >> n >> m >> q;

    ll g = gcd(n, m);
    ll u = n / g;
    ll v = m / g;
    // cout << u << " " << v << endl;

    while (q--) {
        cin >> a >> b >> c >> d;
        ll x, y;
        if (a == 1)
            x = (b + u - 1) / u;
        else
            x = (b + v - 1) / v;

        if (c == 1)
            y = (d + u - 1) / u;
        else
            y = (d + v - 1) / v;
        // cout << x << " " << y << endl;

        if (x == y)
            cout << "YES\n";
        else
            cout << "NO\n";
    }

    return 0;
}