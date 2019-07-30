/**
 * https://codelearn.io/Training/Detail?Id=6356
 *
 * Difficulty   : medium
 * Problem tags : sorting, bit, greedy
 *
 * Tutorial: Một cách khác tham lam thay vì BIT là sort lại mảng này tăng dần,
 * tại mỗi vị trí cần tìm i, cần tìm bên phải vị trí lớn nhất hoặc nhỏ nhất có
 * giá trị lớn hơn a[i], vì đã sort lại rồi, do đó chỉ cần tìm 2 vị trí có index
 * lớn nhất hoặc nhỏ nhất. Do đó duyệt từ phải sang trái, tại mỗi vị trí i,
 * update lại index lớn nhất và nhỏ nhất
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

bool cmp(ii a, ii b) { return a.Y < b.Y; }

int maxArea(std::vector<int> a) {
    int n = a.size();

    vector<ii> b;
    for (int i = 0; i < n; i++)
        b.push_back({i, a[i]});

    sort(b.begin(), b.end(), cmp);

    int imax = b[n - 1].X, imin = b[n - 1].X;
    int res = 0;
    FOD(i, n - 2, 0) {
        res = max(res, b[i].Y * abs(imax - b[i].X));
        res = max(res, b[i].Y * abs(imin - b[i].X));
        imax = max(b[i].X, imax);
        imin = min(b[i].X, imin);
    }
    return res;
}

int main() {

    cout << maxArea(vector<int>({4, 8, 5, 7, 5, 19, 1, 16, 19, 6})) << endl;

    return 0;
}