/**
 * https://codelearn.io/FightsTask/Index?Id=126094&TaskId=117987
 *
 * Difficulty   : easy
 * Problem tags : dp
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

// #define debug 1

#define t(i) (s[i] - '0')

int decodeWays(std::string s) {
    int n = sz(s);
    int f[n + 1];
    int m = 1e9 + 7;
    f[0] = 1;
    FOR(i, 1, n) {
        f[i] = 0;
        if (s[i - 1] > '0') {
            f[i] = f[i - 1];
        }
        if (i - 2 >= 0) {
            int c = t(i - 2) * 10 + t(i - 1);
            if (10 <= c && c <= 26)
                f[i] = (f[i] + f[i - 2]) % m;
        }
        if (f[i] == 0)
            return 0;
    }
    return f[n];
}

#ifdef debug
int main() {

    EL;
    return 0;
}
#endif