/**
 * http://codeforces.com/contest/1178/problem/A
 *
 * Difficulty   : dễ
 * Problem tags : greedy
 *
 * Tutorial: chọn tất cả các thằng liên minh được với Alice, kiểm tra lại liên
 * minh đó có chiếm hơn nửa số ghế không
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

    int n;
    int a[105];
    cin >> n;
    FOR(i, 1, n) cin >> a[i];

    int t = a[1], g = a[1];
    vector<int> rs;
    rs.push_back(1);

    FOR(i, 2, n) {
        g += a[i];
        if (a[1] >= a[i] * 2) {
            rs.push_back(i);
            t += a[i];
        }
    }

    if (t * 2 <= g) {
        cout << "0\n";
    } else {
        cout << sz(rs) << endl;
        for (int x : rs)
            cout << x << " ";
        EL;
    }

    return 0;
}