/**
 * Difficulty   : khó
 * Problem tags : math
 *
 * Tóm gọn bài toán: xét từng số từ 1-->2^n, mỗi số cần chia hết các
 * ước số 2 để được số không còn ước 2, hỏi tổng của các số sau bước lược giản
 * là bao nhiêu, ví dụ:
 * 1 --> 1
 * 2 --> 2/2 = 1
 * 3 --> 3
 * 4 --> 4/2/2 = 1
 * 5 --> 5
 * 6 --> 6/2 = 3
 * Hỏi sum các số sau lược giản?
 *
 * Tutorial:
 * Các số lẻ không thể lược giản được, do đó tách tập này thành 2 tập chẵn lẻ,
 * gọi f(n) là kq cần tìm, khi đó
 * + tập lẻ là Sl = 1+3+5+...+(2^n-1) = 4^(n-1) (1)
 * + tập chẵn 2+4+6+...+2^n = 2(1+2+3+...+2^(n-1)) = 2*f(n-1), do đó tập chẵn có
 * thể chia ước 2 đưa về f(n-1)
 *
 * Từ đó có thể biểu diễn đệ quy:
 * f(n) = f(n-1) + 4^(n-1) (2)
 * với f(0) = 1 (1->2^0=1 là 1)
 *
 * Chứng minh (1):
 * Sl có 2^n / 2 = 2^(n-1) số hạng
 * Công thức lớp 5: (số cuối + số đầu) * số số hạng / 2
 * Sl = 1+3+5+...+(2^n-1) = (1 + 2^n-1) * 2^(n-1) / 2 = 4^(n-1)
 *
 * Thu gọn (2):
 * f(n) = f(n-1) + 4^(n-1)
 *      = f(n-2) + 4^(n-2) + 4^(n-1)
 *      = f(n-n) + 4^0 + ... + 4^(n-1)
 *      = f(0) + (4^n - 1) / (4-1)
 *      = 1 + (4^n-1)/3
 *      = (4^n+2) / 3
 *
 * giới hạn n là 0 <= n <= 1e9
 *
 * Kết quả f(n) mod cho p = 1e9+7 là số nguyên tố
 *
 * Định lý Fermat cho a^(p-1) % p = 1 với p là số nguyên tố
 * Biến đổi
 * f(n) = (4^n+2) * 3^-1 % p
 *      = (4^n+2) * 3^-1 * 3^(p-1) % p
 *      = (4^n+2) * 3^(p-2) % p
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

ll powx(ll x, int n) {
    if (n == 0)
        return 1ll;
    ll t = powx(x, n / 2);
    if (n % 2 == 0)
        return (t * t) % mod;
    return ((t * t) % mod * x) % mod;
}

int main() {

    ll n;
    cin >> n;

    ll res = (powx(4, n) + 2) * powx(3, mod - 2) % mod;
    cout << res << endl;

    return 0;
}