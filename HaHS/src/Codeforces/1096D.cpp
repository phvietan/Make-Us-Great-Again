/**
 * http://codeforces.com/contest/1096/problem/D
 *
 * Difficulty   : medium
 * Problem tags : dp
 *
 * Tutorial:
 * f[i][j] là độ mơ hồ tối thiểu cho đoạn từ 1->i, với j+1 kí tự đầu tiên trong
 * chuỗi "hard" Ví dụ j = 2, f[i][j] là độ mơ hồ tối thiểu cho đoạn từ 1->i sao
 * cho không tồn tại substring "har".
 * Tương tự khi j = 0 là substring "h"
 *
 * Kết quả là f[n][3]
 *
 * Dễ dàng tìm ra công thức QHĐ
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

const int N = 1e5 + 5;
int n, a[N];
string s, b = "hard";
ll f[N][4];

int main() {

    cin >> n >> s;
    FOR(i, 1, n) cin >> a[i];

    FOR(i, 1, n) f[i][0] = f[i - 1][0] + (s[i - 1] == b[0]) * a[i];
    FOR(j, 1, 3) {
        FOR(i, j + 1, n) {
            if (s[i - 1] == b[j]) {
                f[i][j] = min(f[i - 1][j] + a[i], f[i - 1][j - 1]);
            } else {
                f[i][j] = f[i - 1][j];
            }
        }
    }

    cout << f[n][3] << endl;

    return 0;
}