/**
 * https://codelearn.io/FightsTask/Index?Id=120342&TaskId=119644
 *
 * Difficulty   : easy
 * Problem tags : implementation, back tracking
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
#define faster ios_base::sync_with_stdio(false) && cin.tie(NULL)

ii parse(int x) {
    int n = 0, s = 0;
    while (x) {
        n++;
        s += x % 10;
        x /= 10;
    }
    return {n, s};
}

vector<int> res;

void dfs(int len, int x) {
    ii c = parse(x);
    int n = c.first, s = c.second;
    if (s > 10 || n > len)
        return;
    if (n == len && s == 10) {
        res.push_back(x);
        return;
    }
    FOR(i, 0, 10 - s) {
        dfs(len, x * 10 + i);
    }
}

int perfectNumber(int k) {
    int len = 0;
    while (true) {
        len++;
        FOR(i, 1, 9) dfs(len, i);
        if (sz(res) >= k) {
            return res[k - 1];
        }
        k -= sz(res);
        res.clear();
    }
}

int main() {

    dfs(3, 1);
    for (int x : res) cout << x << " ";
    cout << perfectNumber(3);
    EL;

    return 0;
}