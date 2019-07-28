/**
 * http://codeforces.com/contest/1197/problem/C
 *
 * Difficulty   : medium
 * Problem tags : math, greedy, sortings
 *
 * Tutorial: Nếu k == n thì cách tối ưu và duy nhất là chọn mỗi đoạn 1 phần tử
 * và cost là 0. Nếu k < n, giả sử là k = n-1, khi đó chọn ra 1 cặp i,i+1 có
 * diff min. Tương tự mở rộng khi k giảm dần, ta chọn các cặp i,i+1 có diff càng
 * nhỏ càng tốt để đảm bảo sum min.
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

const int N = 3e5 + 5;
int n, k, a[N], b[N];

int main() {

    cin >> n >> k;
    FOR(i, 1, n) cin >> a[i];

    FOR(i, 1, n - 1) b[i] = a[i + 1] - a[i];

    sort(b + 1, b + n);

    ll res = 0ll;
    FOR(i, 1, n - k) res += b[i];

    cout << res << endl;

    return 0;
}