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

long long minSelection2Set(vector<int> a, vector<int> b) {
    int n = a.size();
    int cntMinA = 0;
    ll sum = 0ll;
    for (int i = 0; i < n; i++) {
        if (a[i] <= b[i]) {
            sum += a[i];
            cntMinA++;
        } else {
            sum += b[i];
        }
    }
    if (n == 1) return sum;
    if (cntMinA > 0 && cntMinA < n)
        return sum;
    ll res = (ll)1e9 * n;
    for (int i = 0; i < n; i++) {
        if (a[i] <= b[i]) {
            res = min(res, sum - a[i] + b[i]);
        }
    }
    return res;
}

#ifdef debug
int main() {

    int n;
    vi a, b;
    cin >> n;
    for (int i = 1; i <= n; i++) {
        int x, y;
        cin >> x >> y;
        a.push_back(x);
        b.push_back(y);
    }
    for (int x : a) cout << x << ",";
    cout << endl;
    for (int y : b) cout << y << ",";
    cout << endl;
    cout << minSelection2Set(a, b);

    EL;
    return 0;
}
#endif
