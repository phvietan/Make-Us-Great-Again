/**
 * http://codeforces.com/contest/1110/problem/B
 *
 * Difficulty   : dễ
 * Problem tags : greedy, sort
 *
 * Tutorial: dùng hết tất cả các lần sử dụng có thể, nếu thiếu thì chọn ra 2
 * thằng gần nhau nhất để nối lại, sort tăng dần theo khoảng cách các phần
 * break, tham lam trên các cặp điểm gần nhau trước
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

const int N = 1e5 + 5;
int n, m, k, a[N];

int main() {

    cin >> n >> m >> k;
    FOR(i, 1, n) cin >> a[i], a[i - 1] = a[i] - a[i - 1] + 1;

    sort(a + 1, a + n);

    int res = n, j = 0;
    FOR(i, 1, n - k) { res += a[++j] - 2; }

    cout << res << endl;

    return 0;
}