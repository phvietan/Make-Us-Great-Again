/**
 * https://codelearn.io/FightsTask/Index?Id=126094&TaskId=118933
 *
 * Difficulty   : easy
 * Problem tags :
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

int countEven(std::string s) {
    int n = sz(s), res = 0;
    FOR(i, 0, n - 1) {
        if ((s[i] - '0') % 2 == 0)
            res += i + 1;
    }
    return res;
}

#ifdef debug
int main() {

    EL;
    return 0;
}
#endif