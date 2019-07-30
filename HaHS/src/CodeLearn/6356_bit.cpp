/**
 * https://codelearn.io/Training/Detail?Id=6356
 *
 * Difficulty   : medium
 * Problem tags : sorting, bit, greedy
 *
 * Tutorial: Tại mỗi vị trí j, cần tìm bên trái nhất vị trí i mà a[i] >= a[j],
 * khi đó cập nhật được khung i..j với height là a[j]. Dễ dàng tìm bằng BIT
 *
 * Tương tự cho chiều ngược lại từ phải sang trái.
 *
 * Cách này sẽ bị TLE do time hơi chặt
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
int tmin[N], tmax[N];

void updateMin(int x, int v) {
    for (; x > 0; x -= x & -x)
        tmin[x] = min(tmin[x], v);
}

int getMin(int x) {
    int res = N;
    for (; x < N; x += x & -x)
        res = min(res, tmin[x]);
    return res;
}

void updateMax(int x, int v) {
    for (; x > 0; x -= x & -x)
        tmax[x] = max(tmax[x], v);
}

int getMax(int x) {
    int res = -1;
    for (; x < N; x += x & -x)
        res = max(res, tmax[x]);
    return res;
}

int maxArea(std::vector<int> a) {
    int n = a.size();

    for (int i = 1; i < N; i++)
        tmin[i] = N, tmax[i] = -1;

    int res = 0;
    FOR(j, 0, n - 1) {
        int i = getMin(a[j]);
        if (i < j) {
            res = max(res, (j - i) * a[j]);
        }
        updateMin(a[j], j);
    }

    FOD(i, n - 1, 0) {
        int j = getMax(a[i]);
        if (i < j) {
            res = max(res, (j - i) * a[i]);
        }
        updateMax(a[i], i);
    }

    return res;
}

int main() {

    cout << maxArea(vector<int>({4, 8, 5, 7, 5, 19, 1, 16, 19, 6})) << endl;

    return 0;
}