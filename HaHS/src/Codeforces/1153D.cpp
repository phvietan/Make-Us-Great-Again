/**
 * http://codeforces.com/contest/1153/problem/D
 *
 * Difficulty   : medium
 * Problem tags : tree, dp, binary search, greedy
 *
 * Tutorial:
 * gọi g(u) là số lá trong cây con gốc u, có thể tính bằng QHĐ.
 * gọi f(u) là số tối đa đạt được trên cây con gốc u.
 * + Nếu u là lá thì f(u) = 1
 * + Nếu u là node max, thì chọn từ các cây con gốc v của u để f(u) max, chỉ cần
 * một cây con max, các cây còn lại có thể đặt số ngẫu nhiên trong tập số còn
 * lại. Để tối ưu một cây con v của u, dịch các giá trị từ 1->g(v) của cây con v
 * để đạt f(v) lên g(u)-g(v) các số còn lại, tức chọn ra g(v) số lớn nhất trong
 * các số từ 1->g(u) để đặt vào cây con v như thứ tự cũ. Khi đó:
 *      f(u) = max(f(v) + g(u)-g(v)) với v là cây con của u
 * + Nếu u là node min, lúc này ta có các cây con v của u, các giá trị f(v),
 * g(v), cần tìm giá trị X (tức f(u)) tối đa sao cho các min trong các f(v) max.
 * Lấy ý tưởng từ việc tìm X tối đa, và nhận xét nếu X thỏa thì X-1 cũng thỏa,
 * chặt nhị phân giá trị X, kiểm tra X có thỏa đk ko
 *
 * Giả sử cây u có 4 node con có các giá trị lần lượt:
 * (f,g) = (2,1), (3,2), (3,3), (4,2), lưu ý f <= g
 *
 * Khi đó các giá trị lần lượt ở các node là
 * 0: [1]  2
 * 1:  1  [2]  3
 * 2:  1   2  [3]
 * 3:  1  [2]  3   4
 *
 * Nhận xét nếu các dãy trên duy trì thứ tự tăng dần thì vị trí ban đầu không
 * đổi.
 * Để kiểm tra X có thỏa ko, điền các giá trị >= X vào các vị trí [] và bên phải
 * chúng, các giá trị < X còn lại điền vào bên trái, nếu điền được thì X thỏa.
 *
 * Tuy nhiên nhận xét rằng ta có thể tính trực tiếp giá trị X mà không cần chặt
 * nhị phân, dễ dàng thấy X = g(u) - sum(g(v)-f(v)+1) + 1
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
int n, pa[N], isMax[N], f[N], g[N];
vector<int> a[N], p[N];

void build(int u) {
    if (sz(a[u]) == 0) {
        g[u] = 1;
        return;
    }
    for (int v : a[u]) {
        build(v);
        g[u] += g[v];
    }
}

void calc(int u) {
    if (sz(a[u]) == 0) {
        f[u] = 1;
        return;
    }
    if (isMax[u]) {
        for (int v : a[u]) {
            calc(v);
            f[u] = max(f[u], f[v] - g[v] + g[u]);
        }
        return;
    }
    int t = 0;
    for (int v : a[u]) {
        calc(v);
        t += g[v] - f[v] + 1;
    }
    f[u] = g[u] - t + 1;
}

int main() {

    cin >> n;
    FOR(i, 1, n) cin >> isMax[i];

    FOR(i, 2, n) {
        cin >> pa[i];
        a[pa[i]].push_back(i);
    }

    build(1);
    calc(1);

    cout << f[1] << endl;

    return 0;
}