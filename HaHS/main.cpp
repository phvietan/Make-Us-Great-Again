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

#ifdef debug
int main() {

    int n;
    cin >> n;
    int a[n + 1];
    FOR(i, 1, n) cin >> a[i];
    FOR(i, 1, n) cout << a[i] << ",";
    sort(a + 1, a + n + 1);
    int res = 0;
    for (int i = n; i > 1; i -= 2) {
        res += a[i] - a[i - 1];
    }
    EL;
    cout << res << endl;

    EL;
    return 0;
}
#endif
