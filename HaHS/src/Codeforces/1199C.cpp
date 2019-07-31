/**
 * http://codeforces.com/contest/1199/problem/C
 *
 * Difficulty   : medium
 * Problem tags : sortings, two pointers, greedy
 *
 * Tutorial: tìm số phần tử phân biệt tối đa của mảng cho phép với kích thước
 * của disk. Nhận xét thứ tự các file không quan trọng, sort file này lại, duyệt
 * two pointers và tham lam trên array đã sort để update lại min
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

const int N = 4e5 + 5;
int n, m, a[N];

int main() {

    cin >> n >> m;
    FOR(i, 1, n) cin >> a[i];

    sort(a + 1, a + n + 1);

    int l = 1, r = n, x = -1;
    while (l <= r) {
        int p = (l + r) >> 1;
        ll y = n * int(ceil(log2(p)));
        if (y <= m * 8) {
            x = p;
            l = p + 1;
        } else {
            r = p - 1;
        }
    }

    m = x;

    int res = n;
    int i = 1, j = 1, cnt = 1;
    while (cnt < m) {
        while (j < n && a[j + 1] == a[j])
            j++;
        if (j == n)
            break;
        j++;
        cnt++;
        while (j < n && a[j + 1] == a[j])
            j++;
        if (j == n)
            break;
    }

    if (j == n) {
        cout << 0 << endl;
        return 0;
    }

    res = min(res, n - (j - i + 1));

    while (j < n) {
        while (i < j && a[i + 1] == a[i])
            i++;
        i++;
        j++;
        while (j < n && a[j + 1] == a[j])
            j++;
        res = min(res, n - (j - i + 1));
    }

    cout << res << endl;

    return 0;
}