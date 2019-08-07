/**
 * http://codeforces.com/contest/1199/problem/D
 *
 * Difficulty   : medium
 * Problem tags : data structure
 *
 * Tutorial: Nhận xét sau q truy vấn, phần tử thứ i chỉ bị ảnh hưởng bới thao
 * tác set cuối cùng, sau đó là increase lên số lớn nhất sau thao tác set đó, do
 * đó có thể tham lam duyệt từ cuối query lên đầu, nếu gặp increase thì cập nhật
 * lại giá trị lớn nhất được increase, còn nếu gặp set cuối cùng thì phần tử đó
 * sẽ được set giá trị đó hoặc giá trị lớn nhất của increase
 *
 * Nhận xét có thể xem ban đầu có thể để các phần tử là 0 và thực hiện n thao
 * tác set a[i] cho n phần tử này
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

struct tp {
    int i, v, t, idx;
};

bool cmp(tp u, tp v) { return (u.i > v.i); }

const int N = 4e5 + 5;
int n, q, res[N];
vector<tp> up;
tp st[N];

int main() {

    cin >> n;
    FOR(i, 1, n) {
        int x;
        cin >> x;
        st[i] = {i, x, 0, i};
    }

    cin >> q;
    FOR(i, 1, q) {
        int t;
        cin >> t;
        if (t == 1) {
            int x, v;
            cin >> x >> v;
            st[x] = {i + n, v, 0, x};
        } else {
            int x;
            cin >> x;
            up.push_back({i + n, x, -1});
        }
    }

    FOR(i, 1, n) { up.push_back(st[i]); };
    sort(up.begin(), up.end(), cmp);

    int mx = 0;
    for (tp u : up) {
        if (u.t == -1) {
            mx = max(mx, u.v);
        } else {
            int i = u.idx;
            res[i] = max(u.v, mx);
        }
    }

    FOR(i, 1, n) { cout << res[i] << " "; }
    EL;

    return 0;
}