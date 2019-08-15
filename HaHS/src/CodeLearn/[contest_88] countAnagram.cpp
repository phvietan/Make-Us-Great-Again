/**
 * https://codelearn.io/FightsTask/Index?Id=126094&TaskId=126100
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

int countAnagram(std::string s, std::string p) {
    int n = sz(s), m = sz(p);
    if (m > n)
        return 0;
    unordered_map<char, int> st, pt;
    FOR(i, 0, m - 2) {
        st[s[i]]++;
        pt[p[i]]++;
    }
    pt[p[m - 1]]++;
    int res = 0;
    FOR(i, m - 1, n - 1) {
        st[s[i]]++;
        int ok = true;
        for (char c = 'a'; c <= 'z'; c++) {
            if (st[c] > pt[c]) {
                ok = false;
                break;
            }
        }
        if (ok)
            res++;
        st[s[i - m + 1]]--;
    }
    return res;
}

#ifdef debug
int main() {

    cout << countAnagram("????", "abc");

    EL;
    return 0;
}
#endif