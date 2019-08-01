/**
 * http://codeforces.com/contest/1199/problem/E
 *
 * Difficulty   : medium
 * Problem tags : graph, greedy
 *
 * Tutorial: lần lượt ghép từng cạnh của đồ thị để tạo được một matching, nếu
 * matching này có số cạnh < n thì số đỉnh trong matching <= 2*n
 *
 * ==> số đỉnh còn lại >= n, và các đỉnh còn lại không có cạnh nối chung, vì nếu
 * có 2 đỉnh bất kì có cạnh nối chung thì khi đó có thể đưa 2 đỉnh này vào danh
 * sách matching ở trên
 *
 * Do đó có thể sử dụng giải thuật tham lam này
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

const int N = 5e5 + 5;
int n, m, dd[N];

void solve() {
    cin >> n >> m;
    FOR(i, 1, 3 * n) dd[i] = false;

    vector<int> res;
    FOR(i, 1, m) {
        int u, v;
        cin >> u >> v;
        if (!dd[u] && !dd[v]) {
            dd[u] = dd[v] = 1;
            res.push_back(i);
        }
    }

    if (res.size() >= n) {
        cout << "Matching\n";
        FOR(i, 0, n - 1) cout << res[i] << " ";
    } else {
        cout << "IndSet\n";
        int cnt = 0;
        for (int cnt = 0, i = 1; i <= 3 * n && cnt < n; i++) {
            if (!dd[i]) {
                cout << i << " ";
                cnt++;
            }
        }
    }

    cout << endl;
}

int main() {

    ios::sync_with_stdio(0);
    cin.tie(0);
    cout.tie(0);

    int T;
    cin >> T;
    while (T--)
        solve();

    return 0;
}
