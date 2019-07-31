/**
 * http://codeforces.com/contest/1199/problem/B
 *
 * Difficulty   : easy
 * Problem tags : geometry, math
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
int n;

int main() {

    double l, h;
    cin >> h >> l;

    double res = (1.0 * l * l - 1.0 * h * h) / (2.0 * h);

    printf("%.12f\n", res);

    return 0;
}