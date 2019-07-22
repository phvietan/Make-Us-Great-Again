/**
 * http://codeforces.com/contest/1178/problem/B
 *
 * Difficulty   : dễ
 * Problem tags : dp
 *
 * Tutorial: tại mỗi vị trí 'o', đếm số vv bên trái và bên phải để tính số cặp
 * ghép được, tính sẵn giá trị này bằng QHĐ
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

    string s;
    getline(cin, s);

    int n = sz(s);

    vector<int> l(n + 1, 0), r(n + 1, 0);

    FOR(i, 1, n - 1) {
        if (s[i] == 'o')
            l[i] = l[i - 1];
        else { // v
            if (s[i - 1] == 'o')
                l[i] = l[i - 1]; // ov
            else {               // vv
                l[i] = l[i - 1] + 1;
            }
        }
    }

    FOD(i, n - 2, 0) {
        if (s[i] == 'o')
            r[i] = r[i + 1];
        else { // v
            if (s[i + 1] == 'o')
                r[i] = r[i + 1]; // vo
            else {               // vv
                r[i] = r[i + 1] + 1;
            }
        }
    }

    ll res = 0ll;
    FOR(i, 0, n - 1) {
        if (s[i] == 'o') {
            // count vv on left and right
            res += (ll)l[i] * r[i];
        }
    }

    cout << res << endl;

    return 0;
}