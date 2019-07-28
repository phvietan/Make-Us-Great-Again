/**
 * https://codelearn.io/Training/Detail?Id=8821
 *
 * Difficulty   : easy
 * Problem tags : dp
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

int pickCandies(std::vector<int> a) {
    int n = a.size();
    if (n == 0)
        return 0;
    int f[n];
    f[0] = a[0];
    f[1] = max(a[0], a[1]);
    FOR(i, 2, n - 1) { f[i] = max(f[i - 1], a[i] + f[i - 2]); }
    return f[n - 1];
}

int main() {

    vector<int> a({1, 1, 1});
    cout << pickCandies(a) << endl;

    return 0;
}