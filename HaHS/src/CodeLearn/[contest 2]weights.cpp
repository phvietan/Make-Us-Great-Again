/**
 * https://codelearn.io/FightsTask/Index?Id=120342&TaskId=118922
 *
 * Difficulty   : medium
 * Problem tags : dp
 *
 * Tutorial: Tổng trọng lượng n cái cân là s = n*(n+1)/2 < 500.
 *
 * Gọi số cân có thể thêm bên phía m là a, bên còn lại là b:
 * m+a = b
 * a+b <= s
 * a <= (s-m)/2
 *
 * Với mỗi giá trị a, 0 <= a <= (s-m)/2, bên còn lại sẽ là b = m+a
 * Cần tìm số cách chia n cái cân từ 1->n để được 1 tập a, 1 tập b
 *
 * Tư tưởng giống bài toán cái túi, tuy nhiên ở đây là 2 cái túi.
 * Gọi f[i][a][b] là số cách chia từ 1->i để được trọng lượng túi 1 là a, túi 2
 * là b
 *
 * Dễ dàng qhđ để tìm f[n][a][b].
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

const int mod = 1e9 + 9;
ll f[50][500][500];

long long weights(int n, int m) {
    int s = n * (n + 1) / 2;
    int w = (s - m) / 2 + m;

    f[0][0][0] = 1ll;
    FOR(i, 1, n) {
        FOR(j, 0, w) {
            FOR(k, 0, w) {
                f[i][j][k] = f[i - 1][j][k];
                if (j >= i)
                    f[i][j][k] = (f[i][j][k] + f[i - 1][j - i][k]) % mod;
                if (k >= i)
                    f[i][j][k] = (f[i][j][k] + f[i - 1][j][k - i]) % mod;
                // printf("%d %d %d = %d\n", i, j, k, f[i][j][k]);
            }
        }
    }

    ll res = 0ll;
    FOR(a, 0, (s - m) / 2) {
        int b = m + a;
        res = (res + f[n][a][b]) % mod;
    }
    return res;
}

int main() {

    vector<ii> tests({{4, 2}, {6, 11}, {25, 66}});
    for (ii t : tests) {
        cout << weights(t.first, t.second) << endl;
    }

    EL;
    return 0;
}