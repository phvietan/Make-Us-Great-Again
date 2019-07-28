/**
 * Difficulty   : medium
 * Problem tags : dp, binary search, two points
 *
 * Tutorial: tính sẵn s(i) là sum từ 1->i, khi đó dãy s tăng dần
 * Tại mỗi vị trí j, gọi f(j) là số cách chia kết thúc tại j, khi đó j nằm trong
 * sub-array cuối cùng có sum từ L -> R. Vậy cần tìm các vị trí i <= j sao cho
 * sum(i,j) thuộc L,R Nhận thấy s tăng dần nên có thể chặt nhị phân để tìm 2 vị
 * trí biên này. Khi đó giả sử 2 vị trí biên là i1, i2 với i1 <= i2 <= j.
 *
 * Khi đó f(j) = sum ( f[i1-1]. ... f[i2-1] )
 * Lưu lại các giá trị sum này bằng prefix sum như s(). Gọi q(i) là sum của
 * f(1..i), khi đó có thể tính f(j) bằng q(i2-1)-q(i1-2)
 *
 * Có thể sử dụng two points để giảm độ phức tạp xuống O(n) và giảm space
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

const ll mod = 1000000007;
const int N = 1e5 + 5;
int n, a[N];
ll L, R, s[N], f[N], q[N];

int main() {

    faster;
    cin >> n >> L >> R;
    FOR(i, 1, n) {
        cin >> a[i];
        s[i] = s[i - 1] + (ll)a[i];
    }

    f[0] = 1;
    q[0] = 1;
    FOR(j, 1, n) {
        int l = 1, r = j, i1 = -1, i2 = -1;
        while (l <= r) {
            int m = (l + r) >> 1;
            if (s[j] - s[m - 1] >= L) {
                l = m + 1;
                i2 = m;
            } else {
                r = m - 1;
            }
        }
        l = 1;
        r = j;
        while (l <= r) {
            int m = (l + r) >> 1;
            if (s[j] - s[m - 1] <= R) {
                r = m - 1;
                i1 = m;
            } else {
                l = m + 1;
            }
        }
        if (i1 != -1 && i2 != -1) {
            f[j] = (q[i2 - 1] - q[i1 - 2] + mod) % mod;
        } else
            f[j] = 0ll;
        q[j] = (q[j - 1] + f[j]) % mod;
    }

    cout << f[n] << endl;

    return 0;
}