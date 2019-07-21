/**
 * http://codeforces.com/contest/1119/problem/C
 *
 * Difficulty   : medium
 * Problem tags : math, tính bất biến
 *
 * Tutorial: cần tìm tính bất biến cho bài toán, nhận xét mỗi bước, số hàng, số
 * cột được chọn trên mỗi hàng, mỗi cột là 2, do đó quan tâm đến tính chẵn lẻ
 * trên các hàng các cột, nếu 2 số được chọn:
 * + giống nhau (ví dụ 0,0 thì thành 1,1) do đó tăng giảm 2 số
 * + khác nhau, 0 và 1, thì số 0, 1 không đổi trên hàng cột đó
 *
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

const int N = 505;
int n, m, a[N][N], b[N][N];

void out() {
    cout << "No\n";
    exit(0);
}

int main() {

    cin >> n >> m;
    FOR(i, 1, n) FOR(j, 1, m) cin >> a[i][j];
    FOR(i, 1, n) FOR(j, 1, m) cin >> b[i][j];

    FOR(j, 1, m) {
        int u = 0, v = 0;
        FOR(i, 1, n) {
            u += a[i][j] == 0;
            v += b[i][j] == 0;
        }
        if (abs(v - u) % 2 == 1)
            out();
    }

    FOR(i, 1, n) {
        int u = 0, v = 0;
        FOR(j, 1, m) {
            u += a[i][j] == 0;
            v += b[i][j] == 0;
        }
        if (abs(v - u) % 2 == 1)
            out();
    }

    cout << "Yes\n";

    return 0;
}
