/**
 * http://codeforces.com/contest/1091/problem/D
 *
 * Difficulty   : medium
 * Problem tags : combinatoric, dp, math
 *
 * Tutorial:
 * n = 2: 1,2|2,1 có 2 cặp
 * n = 3: 1,2,3,1,3,2 | 2,1,3,2,3,1 | 3,1,2,3,2,1
 * n = 3 có dạng 3 lần n = 2, xét mỗi đoạn, ví dụ 2,1,3,2,3,1, xem như chèn thêm
 * 2 vào đâu của 1,3|3,1 để được 2,1,3|2,3,1 Khi đó n = 2 cho 2 cặp, vì chèn
 * thêm 2 vào đầu nên 2 cặp đó tạo được 2 cặp khi n = 3.
 * Khi chèn 2 vào đầu mỗi đoạn, đoạn nối 2 đầu mới nối được đoạn cũ trước đó, do
 * đó có thêm (n-1)!-1 đoạn
 * Quay trở về đoạn lớn, khi nối n = 3 đoạn (đoạn con có dạng n = 2) không thể
 * tạo ra đoạn nào khác, do đó nếu gọi fn là kết quả cần tìm thì;
 *
 * fn = n*(f(n-1) + (n-1)! - 1)
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

const int mod = 998244353;
int n;

int main() {
    cin >> n;

    ll res = 1ll;
    ll tmp = 1ll;
    FOR(i, 2, n) {
        res = ((res + tmp - 1) % mod) * i % mod;
        tmp = tmp * i % mod;
    }

    cout << res << endl;

    return 0;
}