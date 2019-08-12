/**
 * https://codelearn.io/FightsTask/Index?Id=120342&TaskId=118962
 *
 * Difficulty   : easy
 * Problem tags : implementation, string
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

int modifyString(std::string s) {
    int res = 0, l = 0;
    FOR(i, 2, sz(s) - 1) {
        if (s[i] == s[i - 1] && s[i - 1] == s[i - 2]) {
            if (i - 2 >= l) {
                res++;
                l = i;
            }
        }
    }
    return res;
}