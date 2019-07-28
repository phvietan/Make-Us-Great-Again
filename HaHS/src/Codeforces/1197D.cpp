/**
 * http://codeforces.com/contest/1197/problem/D
 *
 * Difficulty   : medium
 * Problem tags : math, greedy, dp
 *
 * Tutorial: xét mỗi vị trí j, cần tìm ra vị trí i để giá trị max. Nhận xét từ
 * công thức, tính theo từng phần dư khi chia m, tại vị trí j, tìm ra vị trí i
 * gần nhất theo từng giá trị mod, khi đó đoạn i->j là tối thiểu cần phải có cho
 * cặp (j,q) với q là giá trị mod cho m. Dùng QHĐ tại đây, gọi f[j][q] là giá
 * trị tối ưu tại vị trí j có chiều dài đoạn mod m = q, với 1 <= q <= m (xem 0
 * thành m). Như trên thì f[j][q] = giá trị đoạn i..j (có thể tính trong O(1)).
 * Đoạn này có thể ghép thêm đoạn độ dài dạng m*P trước i, tức f[i-1][m]. Nếu
 * giá trị này > 0 thì ghép vào.
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

const int N = 3e5 + 5;
int n, m, k, a[N];
ll f[N][12], s[N];

ll calc(int l) { return (ll)k * int(ceil(l * 1.0 / m)); }

int main() {

    cin >> n >> m >> k;
    FOR(i, 1, n) cin >> a[i];

    FOR(i, 1, n) s[i] = s[i - 1] + (ll)a[i];

    FOR(j, 1, m) {
        FOR(q, 1, j) {
            f[j][q] = s[j] - s[j - q] - calc(q);
            // printf("%d %d %d %d\n", j, q, calc(q), f[j][q]);
        }
    }
    FOR(j, m + 1, n) {
        FOR(q, 1, m) {
            int i = j - q + 1;
            f[j][q] = s[j] - s[i - 1] - calc(j - i + 1);
            if (f[i - 1][m] > 0) {
                f[j][q] += f[i - 1][m];
            }
        }
    }

    ll res = 0ll;
    FOR(i, 1, n) FOR(j, 1, m) {
        // cout << i << " " << j << " = " << f[i][j] << endl;
        res = max(res, f[i][j]);
    }

    cout << res << endl;

    return 0;
}