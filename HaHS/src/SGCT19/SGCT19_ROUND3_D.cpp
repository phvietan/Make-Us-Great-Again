/**
 * Difficulty   : medium
 * Problem tags : greedy, sortings, dp
 *
 * Tutorial: phân thành 2 tập có độ dị 1 và 2. Nhận xét ở mỗi tập cần chọn ra
 * các giá trị lớn nhất (tham lam), brute force số phần tử chọn ở tập dị 1, tính
 * số dị tối đa chọn được ở tập dị 2, ở mỗi tập dị, chọn ra các dị có gtrị lớn
 * nhất, quy hoạch động để tính sẵn sum này.
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

const int N = 1e5 + 5;
int n, c, f[3];
ll s[3][N];

int main() {

    faster;
    cin >> n >> c;

    FOR(i, 1, n) {
        int d, v;
        cin >> d >> v;
        s[d][++f[d]] = v;
    }

    FOR(g, 1, 2) {
        sort(s[g] + 1, s[g] + f[g] + 1, greater<>());
        FOR(i, 2, f[g]) { s[g][i] += (ll)s[g][i - 1]; }
    }

    ll res = 0ll;
    int p = min(c, f[1]);
    FOR(i, 0, p) {
        int o = min(f[2], (c - i) / 2);
        ll tmp = s[1][i] + s[2][o];
        res = max(res, tmp);
    }

    cout << res << endl;

    return 0;
}