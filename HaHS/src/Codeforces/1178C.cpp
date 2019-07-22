/**
 * http://codeforces.com/contest/1178/problem/C
 *
 * Difficulty   : medium
 * Problem tags : math
 *
 * Tutorial: lấy ý tưởng từ việc xây dựng công thức truy hồi, xét ô góc phải
 * dưới, có 4 cách chọn tương ứng 4 loại xoay, khi đó ô bên trái có 2 cách chọn
 * (do xác định được 1 cạnh bên phải của ô này), và ô ở trên có 2 cách chọn (do
 * xác định được 1 cạnh dưới của ô này). Khi đó ô còn khuyết góc chéo còn lại
 * chỉ có 1 cách chọn do đã xác định được 2 cạnh dưới và phải.
 * ==> với ô 2x2 có 4*2*2*1 = 16 cách
 * Mở rộng chiều rộng của ô này thành 3x2 thì tương tự ô cạnh dưới có 2 cách, và
 * ô khuyết còn 1 cách. Mở rộng lên trên cũng tương tự, do đó các ô khuyết sau
 * khi hình thành cạnh bên chỉ có 1 cách chọn.
 *
 * Vậy có 4 x 2^(w-1) x 2^(h-1) = 2^(w+h)
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

const int m = 998244353;

int powx(int x, int n) {
    if (n == 0)
        return 1;
    int t = powx(x, n / 2);
    if (n % 2)
        return (ll)t * t % m * x % m;
    return (ll)t * t % m;
}

int main() {

    int w, h;
    cin >> w >> h;

    cout << powx(2, w + h) << endl;

    return 0;
}
