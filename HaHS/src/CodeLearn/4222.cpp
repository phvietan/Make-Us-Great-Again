/**
 * https://codelearn.io/Training/Detail?Id=4222
 *
 * Difficulty   : easy
 * Problem tags : dp, greedy
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

int maximalSquare(std::vector<std::vector<int>> a) {
    if (a.size() == 0)
        return 0;

    int n = a.size();
    int m = a[0].size();

    int f[n][m];
    f[0][0] = a[0][0];
    FOR(i, 1, n - 1) f[i][0] = f[i - 1][0] + a[i][0];
    FOR(j, 1, m - 1) f[0][j] = f[0][j - 1] + a[0][j];
    FOR(i, 1, n - 1) {
        FOR(j, 1, m - 1) {
            f[i][j] = f[i - 1][j] + f[i][j - 1] - f[i - 1][j - 1] + a[i][j];
        }
    }

    FOD(l, min(n, m), 1) {
        FOR(i, 0, n - l) FOR(j, 0, m - l) {
            int x = i + l - 1, y = j + l - 1;
            int t = f[x][y];
            if (i > 0)
                t -= f[i - 1][y];
            if (j > 0)
                t -= f[x][j - 1];
            if (i > 0 && j > 0)
                t += f[i - 1][j - 1];
            if (t == l * l)
                return t;
        }
    }
    return 0;
}

int main() {

    std::vector<std::vector<int>> a(
        {{1, 0, 1, 0, 0}, {1, 0, 1, 1, 1}, {1, 1, 1, 1, 1}, {1, 0, 0, 1, 0}});

    cout << maximalSquare(a) << endl;

    return 0;
}