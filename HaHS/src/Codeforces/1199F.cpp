/**
 * http://codeforces.com/contest/1199/problem/F
 *
 * Difficulty   : medium
 * Problem tags : dp, recursive
 *
 * Tutorial: Giới hạn kích thước nhỏ, gọi f[u][l][b][r] là chi phí min để clear
 * toàn bộ vùng từ góc trái trên (u,l) đến góc trai dưới (b,r), tức từ hàng u->,
 * từ cột l->r
 *
 * Kết quả là f[1][1][n][n]
 *
 * Thực hiện đệ quy kết hợp qhđ lưu bảng để tinh các giá trị này trong O(N^4)
 *
 */

#include <bits/stdc++.h>

using namespace std;

typedef long long ll;
typedef pair<int, int> ii;

#define EL printf("\n")
#define sz(A) (int)A.size()
#define FOR(i, l, r) for (int i = l; i <= r; i++)
#define FOD(i, r, l) for (int i = r; i >= l; i--)

const int N = 55;
int n, a[N][N], f[N][N][N][N];

void dp(int u, int l, int b, int r) {
    if (u > b || l > r)
        return;
    if (f[u][l][b][r] > -1)
        return;
    if (u == b && l == r) {
        f[u][l][b][r] = a[u][l];
        return;
    }
    f[u][l][b][r] = max(b - u + 1, r - l + 1);
    if (b - u > r - l) { // split u->i + i+1 -> b
        FOR(i, u, b - 1) {
            dp(u, l, i, r);
            dp(i + 1, l, b, r);
            f[u][l][b][r] =
                min(f[u][l][b][r], f[u][l][i][r] + f[i + 1][l][b][r]);
        }
    } else { // split l->i + i+1 -> r
        FOR(i, l, r - 1) {
            dp(u, l, b, i);
            dp(u, i + 1, b, r);
            f[u][l][b][r] =
                min(f[u][l][b][r], f[u][l][b][i] + f[u][i + 1][b][r]);
        }
    }
}

int main() {

    cin >> n;
    FOR(i, 1, n) {
        string s;
        cin >> s;
        FOR(j, 1, n) a[i][j] = s[j - 1] == '#';
    }

    FOR(u, 1, n) FOR(l, 1, n) FOR(b, 1, n) FOR(r, 1, n) f[u][l][b][r] = -1;

    dp(1, 1, n, n);
    cout << f[1][1][n][n];

    EL;
    return 0;
}
