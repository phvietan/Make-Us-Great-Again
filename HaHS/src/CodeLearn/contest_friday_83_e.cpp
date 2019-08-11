/**
 * https://codelearn.io/FightsTask/Index?Id=114431&TaskId=112832
 *
 * Difficulty   : easy
 * Problem tags : implementation, brute force
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

bool ok1(ii x, ii m) {
    return m != x && m.first != x.first && m.second != x.second;
}

int dx[] = {2, 2, -2, -2, 1, -1, 1, -1};
int dy[] = {1, -1, 1, -1, 2, 2, -2, -2};
bool ok2(ii m, ii x) {
    if (m == x)
        return false;
    FOR(i, 0, 7) {
        if (m.first + dx[i] == x.first && m.second + dy[i] == x.second)
            return false;
    }
    return true;
}

ii parse(string t) { return {t[0] - 'a', t[1] - '1'}; }

int putKnight(std::string a, std::string b) {
    ii x = parse(a);
    ii m = parse(b);
    int res = 0;
    FOR(i, 0, 7) FOR(j, 0, 7) {
        ii m2 = {i, j};
        if (ok1(x, m) && ok1(x, m2) && ok2(m2, x) && ok2(m2, m))
            res++;
    }
    return res;
}
