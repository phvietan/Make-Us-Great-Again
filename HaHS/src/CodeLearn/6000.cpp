/**
 * https://codelearn.io/Training/Detail?Id=6000
 *
 * Difficulty   : hard
 * Problem tags : dp, math, combinatorics, fermat
 *
 * Tutorial:
 * Gọi f_ij là số cách cho i người và chỉ nhìn thấy j người khi xếp. Đương nhiên
 * có i >= j.
 * Kết quả cần tìm là f_nm
 *
 * Nhận xét với j = 1, tức chỉ nhìn thấy 1 người trong hàng, khi đó người cao
 * nhất đứng đầu dãy, các người phía sau xếp ngẫu nhiên, do đó dễ dàng có:
 *
 * f(i)(1) = (i-1)!
 *
 * Với j > 1, để đưa về bài toán nhỏ hơn, ta cần xếp người cao nhất trước, giả
 * sử đã chọn được vị trí cho người cao nhất là i, khi đó cần xếp i-1 người còn
 * lại vào trước và sau người này. Những người xếp vào sau thì sẽ bị che hết, do
 * đó f_ij lúc này phụ thuộc vào cách xếp f(k)(j-1) người đứng trước i (k ngươi
 * đứng trước cần nhìn thấy j-1 người vì những người xếp sau i bị che hết)
 *
 * Nhận thấy k thằng đứng trước i luôn lùn hơn i, và chiều cao của k thằng này
 * là phân biệt (do ban đầu n người là phân biệt chiều cao). Thứ 2 điều kiện của
 * k là:
 *  + k >= j-1 : cần tối thiểu j-1 thằng
 *  + k <= i-1 : tối đa được i-1 thằng
 * Do đó có C_k_(i-1) cách chọn k thằng này với C_k_n là tổ hợp chập k của n
 * Với mỗi cách chọn k, có f_k_(j-1) cách xếp, ngoài ra nhân thêm cách xếp i-k-1
 * thằng còn lại sau i là (i-k-1)! cách nữa
 *
 * Trước hết có công thức QHĐ để tính f_ij là:
 *
 * f(i)(j) = sum( C(k)(i-1) * f(k)(j-1) * (i-k-1)! )
 *
 * Tuy nhiên đến đây thì chưa để giải được trong O(N^2) vì để tính i,j phải tốn
 * thêm O(N) nữa để tính, do đó tốn O(N^3)
 *
 * Biến đổi thêm tí nữa:
 *
 * C(k)(i-1) * (i-k-1)! = (i-1)! / [k! * (i-1-k!)] * (i-k-1)! = (i-1)! / k!
 *
 * ==> f(i)(j) = sum ( f(k)(j-1) * (i-1)! / k! )
 *             = (i-1)! * sum ( f(k)(j-1) / k! )
 *
 * Tới đây có thể tính được f_ij trong O(1) vì đã rút được (i-1)! ra ngoài, và
 * sum( ... ) có thể tính được trong quá trình tính i
 *
 * Tuy nhiên có phép chia trong biểu thức, do đó mod sẽ bị sai, dùng định lý
 * Fermat cho bước này nữa là OK:
 *
 * Định lý Fermat: cho p là số nguyên tố thì a^(p-1) % p = 1
 *
 * Có số mod = 1e9+7 là số nguyên tố nên là:
 *
 * f(i)(j) = (i-1)! * sum ( f(k)(j-1) / k! ) % mod
 *         = (i-1)! * sum ( f(k)(j-1) * (k!)^-1 ) % mod
 *         = (i-1)! * sum ( f(k)(j-1) * (k!)^-1 * (k!)^(p-1) ) % mod
 *         = (i-1)! * sum ( f(k)(j-1) * (k!)^(p-2) ) % mod
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

const int mod = 1e9 + 7;
const int N = 1005;
ll gt[N], inv[N], f[N][2];
int n, m;

ll power(ll x, int n) {
    if (n == 0)
        return 1ll;
    ll t = power(x, n / 2);
    return (t * t % mod) * (n % 2 ? x : 1) % mod;
}

void init() {
    gt[0] = 1ll;
    FOR(i, 1, n) gt[i] = gt[i - 1] * i % mod;
    FOR(i, 0, n) inv[i] = power(gt[i], mod - 2);
}

int queueInPark(int n_, int m_) {
    n = n_;
    m = m_;
    init();

    FOR(i, 1, n) f[i][0] = gt[i - 1];
    FOR(j, 2, m) {
        ll tmp = f[j - 1][0] * inv[j - 1] % mod;
        FOR(i, j, n) {
            f[i][1] = gt[i - 1] * tmp % mod;
            tmp = (tmp + f[i][0] * inv[i] % mod) % mod;
        }
        FOR(i, j, n) f[i][0] = f[i][1];
    }

    return f[n][0];
}

int main() {

    cout << queueInPark(5, 3) << endl;

    return 0;
}